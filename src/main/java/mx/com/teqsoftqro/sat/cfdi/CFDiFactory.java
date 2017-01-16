package mx.com.teqsoftqro.sat.cfdi;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamSource;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.eclipse.persistence.jaxb.JAXBContextFactory;
import org.eclipse.persistence.jaxb.JAXBContextProperties;
import org.eclipse.persistence.jaxb.UnmarshallerProperties;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import com.buzonfiscal.ns.addenda.bf._2.AddendaBuzonFiscal;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.jayway.jsonpath.DocumentContext;
import com.jayway.jsonpath.JsonPath;

import mx.com.teqsoftqro.sat.common.CFDv32ComprobanteBase;
import mx.com.teqsoftqro.sat.common.ComprobanteBase;
import mx.com.teqsoftqro.sat.common.Constants;
import mx.com.teqsoftqro.sat.common.DiscoveryFormatType;
import mx.com.teqsoftqro.sat.common.DocumentType;
import mx.com.teqsoftqro.sat.common.DocumentTypes;
import mx.com.teqsoftqro.sat.common.NamespacePrefixMapperImpl;
import mx.com.teqsoftqro.sat.common.UrlPrefixes;
import mx.com.teqsoftqro.stamp.model.CFDi;
import mx.gob.sat.cfd._32.Comprobante;
import mx.gob.sat.cfd.timbrefiscaldigital.TimbreFiscalDigital;
import mx.gob.sat.nomina12.Nomina;
import net.minidev.json.JSONArray;

public class CFDiFactory {

	private static final String XML_HEADER = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";
	
	public static final ImmutableMap<String, String> PREFIXES = ImmutableMap.of("http://www.w3.org/2001/XMLSchema-instance", "xsi");
	
	private final Map<String, String> localPrefixes = Maps.newHashMap();
	
	private JAXBContext context;
	
	private DiscoveryFormatType format;
	
	private TransformerFactory tf;
	
	private CFDi cfdi;
	
	private ComprobanteBase baseDocument;
	
	private List<DocumentType> docTypes;
	
	public CFDiFactory(InputStream in, DiscoveryFormatType format) throws Exception {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		byte[] buffer = new byte[1024];
		int len;
		while ((len = in.read(buffer)) > -1 ) {
		    baos.write(buffer, 0, len);
		}
		baos.flush();
		InputStream is1 = new ByteArrayInputStream(baos.toByteArray());
		InputStream is2 = new ByteArrayInputStream(baos.toByteArray()); 
		
		this.format = format;
		
		if (this.format == DiscoveryFormatType.XML) {
			this.docTypes = getDocumentTypesXml(is1);
			Class[] ctxs = getClassContexts(docTypes);
			this.context = getContext(ctxs);
			this.cfdi = loadXml(is2, ctxs);
			DocumentTypes docTypes2 = new DocumentTypes();
			docTypes2.setDocumentTypes(docTypes);
			this.baseDocument = new CFDv32ComprobanteBase(this.cfdi.getComprobante(), docTypes);
			addNamespaces();
		} else if (this.format == DiscoveryFormatType.JSON) {
			List<DocumentType> docTypes = getDocumentTypesJson(is1);
			Class[] ctxs = getClassContexts(docTypes);
			this.context = getContext(ctxs);
			this.cfdi = loadJson(is2, ctxs);
			DocumentTypes docTypes2 = new DocumentTypes();
			docTypes2.setDocumentTypes(docTypes);
			this.baseDocument = new CFDv32ComprobanteBase(this.cfdi.getComprobante(), docTypes);
			addNamespaces();
		}
	}
	
	private CFDi loadJson(InputStream source, Class... context) throws JAXBException, IOException {
		JAXBContext jaxbContext = getContext(context);
		try {
			Unmarshaller u = jaxbContext.createUnmarshaller();
			StreamSource src = new StreamSource(source);
			cfdi = u.unmarshal(src, CFDi.class).getValue();
		} finally {
			source.close();
		}
		return cfdi;
	}
	
	private CFDi loadXml(InputStream source, Class[] contexts) throws JAXBException, IOException {
		JAXBContext context = getContext(contexts);
		try {
			Unmarshaller u = context.createUnmarshaller();
			return (CFDi) u.unmarshal(source);
		} finally {
			source.close();
		}
	}
	
	public void guardar(OutputStream out) throws Exception {
		Marshaller m = context.createMarshaller();
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
		m.setProperty(Marshaller.JAXB_ENCODING, StandardCharsets.UTF_8.name());
		byte[] xmlHeaderBytes = XML_HEADER.getBytes("UTF8");
		if (format == DiscoveryFormatType.XML) {
			out.write(xmlHeaderBytes);
		}
		m.marshal(cfdi, out);
	}

	private List<DocumentType> getDocumentTypesJson(InputStream source) {
		List<DocumentType> docType = new ArrayList<DocumentType>();
		DocumentContext dc = JsonPath.parse(source);
		String versionComprobante = dc.read("$['comprobante']['version']");
		docType.add(new DocumentType("Comprobante", versionComprobante));
		try {
			Map<String, Object> listStr = dc.read("$['comprobante']['Complemento']");
			Set<Entry<String, Object>> keyValues = listStr.entrySet();
			for (Entry<String, Object> ent : keyValues) {
				String str = ((JSONArray) ent.getValue()).toString();
				JsonObject object = (JsonObject) ((JsonArray) Json.createReader(new StringReader(str)).read()).get(0);
				String version = (object.getJsonString("Version").getString() == null) ? object.getJsonString("version").getString() : object.getJsonString("Version").getString();
				version = (version != null) ? version.replace("\"", "") : null ;
				docType.add(new DocumentType(ent.getKey(), version));
			}
		} catch (Exception e) {
			
		}
		
		return docType;
	}
	
	private List<DocumentType> getDocumentTypesXml(InputStream source) throws ParserConfigurationException, SAXException, IOException, XPathExpressionException {
		DocumentType docType = new DocumentType();
		List<DocumentType> lista = new ArrayList<DocumentType>();
		
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	    DocumentBuilder builder = factory.newDocumentBuilder();
	    Document doc = builder.parse(source);
	    
	    XPathFactory xfactory = XPathFactory.newInstance();
	    XPath xpath = xfactory.newXPath();
		
		XPathExpression expr = xpath.compile("//*[@version]|//*[@Version]|//*[@VERSION]");
		NodeList nl3 = (NodeList) expr.evaluate(doc, XPathConstants.NODESET);
		
		for (int i = 0; i < nl3.getLength(); i++) {
			if (nl3.item(i).getNodeType() == Node.ELEMENT_NODE) {
				docType = new DocumentType();
				
				String element = nl3.item(i).getNodeName();
				element = element.substring(element.indexOf(":") + 1);
				docType.setRoot(element);
				docType.setVersion(xpath.evaluate("//" + element  + "/@version|//" + element + "/@Version|//"+ element + "/@VERSION", nl3.item(i)));
				
				lista.add(docType);
			}
		}
		
		return lista;
	}

	private JAXBContext getContext(String[] contexts) throws JAXBException {
		List<String> ctx = Lists.newArrayList(contexts);
		if (format == DiscoveryFormatType.XML) {
			Map<String, Object> properties = new HashMap<String, Object>();
			return org.eclipse.persistence.jaxb.JAXBContext.newInstance(Constants.JOINER.join(ctx), null);
		}
		else if (format == DiscoveryFormatType.JSON) {
			Map<String, Object> properties = new HashMap<String, Object>();
			properties.put(JAXBContextProperties.MEDIA_TYPE, "application/json");
			properties.put(JAXBContextProperties.JSON_INCLUDE_ROOT, false);
			return null;
		}
		else {
			return null;
		}
	}
	
	private JAXBContext getContext(Class[] contexts) throws JAXBException {
		if (format == DiscoveryFormatType.XML) {
			Map<String, Object> properties = new HashMap<String, Object>();
			return org.eclipse.persistence.jaxb.JAXBContextFactory.createContext(contexts, properties);
		}
		else if (format == DiscoveryFormatType.JSON) {
			Map<String, Object> properties = new HashMap<String, Object>();
			properties.put(JAXBContextProperties.MEDIA_TYPE, "application/json");
			properties.put(JAXBContextProperties.JSON_INCLUDE_ROOT, false);
			return org.eclipse.persistence.jaxb.JAXBContextFactory.createContext(contexts, properties);
		}
		else {
			return null;
		}
	}

	private String[] getStringContexts(List<DocumentType> docTypes) {
		Iterator<DocumentType> it = docTypes.iterator();
		List<String> contexts = new ArrayList<String>();
		
		while (it.hasNext()) {
			DocumentType docType = it.next();
			if (docType.equals(DocumentType.CFDI32)) {
				contexts.add(Constants.CFDI32);
			}
			if (docType.equals(DocumentType.NOMINA11)) {
				contexts.add(Constants.NOMINA11);
			}
			if (docType.equals(DocumentType.NOMINA12)) {
				contexts.add(Constants.NOMINA12);
			}
			if (docType.equals(DocumentType.TFD10)) {
				contexts.add(Constants.TFD10);
			}
		}
		
		String[] arrayContexts = new String[contexts.size() + 1];
		Iterator<String> itString = contexts.iterator();
		int cont = 0;
		arrayContexts[cont++] = "mx.com.teqsoftqro.stamp.model";
		while (itString.hasNext()) {
			arrayContexts[cont] = itString.next();
			cont++;
		}
		
		return arrayContexts;
	}
	
	private Class[] getClassContexts(List<DocumentType> docTypes) {
		Iterator<DocumentType> it = docTypes.iterator();
		List<Class> contexts = new ArrayList<Class>();
		
		while (it.hasNext()) {
			DocumentType docType = it.next();
			if (docType.equals(DocumentType.CFDI32)) {
				contexts.add(Constants.CFDI32_CLASS);
			}
			if (docType.equals(DocumentType.NOMINA11)) {
				contexts.add(Constants.NOMINA11_CLASS);
			}
			if (docType.equals(DocumentType.NOMINA12)) {
				contexts.add(Constants.NOMINA12_CLASS);
			}
			if (docType.equals(DocumentType.TFD10)) {
				contexts.add(Constants.TFD10_CLASS);
			}
		}
		
		Class[] arrayContexts = new Class[contexts.size() + 2];
		Iterator<Class> itString = contexts.iterator();
		int cont = 0;
		arrayContexts[cont++] = mx.com.teqsoftqro.stamp.model.CFDi.class;
		arrayContexts[cont++] = mx.com.teqsoftqro.stamp.model.AcuseReciboFinkok.class;
		while (itString.hasNext()) {
			arrayContexts[cont] = itString.next();
			cont++;
		}
		
		return arrayContexts;
	}
	
	public void addNamespace(String uri, String prefix) {
		localPrefixes.put(uri, prefix);
	}
	
	public void addNamespaces() {
		if (baseDocument.getDocumentTypes() != null && baseDocument.getDocumentTypes().size() > 0) {
			Iterator<DocumentType> itDocType = baseDocument.getDocumentTypes().iterator();
			while (itDocType.hasNext()) {
				DocumentType docType = itDocType.next();
				if (docType.equals(DocumentType.CFDI32)) {
					addNamespace(UrlPrefixes.CFDI32.getUrl(), UrlPrefixes.CFDI32.getPrefix());
				}
				if (docType.equals(DocumentType.NOMINA11)) {
					addNamespace(UrlPrefixes.NOMINA11.getUrl(), UrlPrefixes.NOMINA11.getPrefix());
				}
				if (docType.equals(DocumentType.NOMINA12)) {
					addNamespace(UrlPrefixes.NOMINA12.getUrl(), UrlPrefixes.NOMINA12.getPrefix());
				}
				if (docType.equals(DocumentType.TFD10)) {
					addNamespace(UrlPrefixes.TFD10.getUrl(), UrlPrefixes.TFD10.getPrefix());
				}
			}
		}
	}
	
	public CFDi getCfdi() {
		return this.cfdi;
	}
	
}
