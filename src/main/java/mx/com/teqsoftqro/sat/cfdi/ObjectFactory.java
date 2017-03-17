package mx.com.teqsoftqro.sat.cfdi;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.JAXBIntrospector;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.namespace.QName;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.stream.StreamSource;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.eclipse.persistence.jaxb.JAXBContextProperties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import com.google.common.collect.Maps;
import com.jayway.jsonpath.DocumentContext;
import com.jayway.jsonpath.JsonPath;

import mx.com.teqsoftqro.sat.common.CFDv32ComprobanteBase;
import mx.com.teqsoftqro.sat.common.Constants;
import mx.com.teqsoftqro.sat.common.DiscoveryFormatType;
import mx.com.teqsoftqro.sat.common.DocumentType;
import mx.com.teqsoftqro.sat.common.DocumentTypes;
import mx.com.teqsoftqro.sat.common.NamespacePrefixMapperImpl;
import mx.com.teqsoftqro.stamp.model.AcuseReciboFinkok;
import mx.com.teqsoftqro.stamp.model.CFDi;
import mx.gob.sat.cfd._32.Comprobante;
import net.minidev.json.JSONArray;

public class ObjectFactory {

	private final Map<String, String> localPrefixes = Maps.newHashMap();
	
	private Logger logger = LoggerFactory.getLogger(ObjectFactory.class);
	
	private String schemaLocation;
	protected DocumentTypes docTypes;
	protected Object document;
	protected DiscoveryFormatType format;
	
	public ObjectFactory(InputStream in, DiscoveryFormatType format) throws Exception {
		List<InputStream> inputs = cloneInputStream(in, 2);
		this.format = format;
		
		if (this.format == DiscoveryFormatType.XML) {
			this.docTypes = getDocumentTypesXml(inputs.get(0));
			this.document = load(inputs.get(1));
			addNamespaces();
		} else if (this.format == DiscoveryFormatType.JSON) {
			this.docTypes = getDocumentTypesJson(inputs.get(0));
			this.document = load(inputs.get(1));
			addNamespaces();
		}
	}
	
	public ObjectFactory(Object obj, DiscoveryFormatType format) throws Exception {
		docTypes = new DocumentTypes();
		document = obj;
		this.format = format;
		
		if (obj.getClass().getName().equals(DocumentType.CFDI.getClase().getName())) {
			docTypes.getDocumentTypes().add(DocumentType.CFDI);
			CFDi cfdi = (CFDi) obj;
			if (cfdi.getComprobante() != null) {
				docTypes.getDocumentTypes().add(DocumentType.CFDI32);
				if (cfdi.getComprobante().getComplemento() != null && cfdi.getComprobante().getComplemento().getAny().size() > 0) {
					Iterator<Object> complementos = cfdi.getComprobante().getComplemento().getAny().iterator();
					while (complementos.hasNext()) {
						Object complemento = complementos.next();
						for (DocumentType dType : DocumentType.docTypesRegistered().getDocumentTypes()) {
							if (complemento.getClass().getName().equals(dType.getClase().getName())) {
								docTypes.getDocumentTypes().add(dType);
							}
						}
					}
				}
			}
			
		} else if (obj.getClass().getName().equals(DocumentType.ACUSE_RECIBO_FINKOK.getClase().getName())) {
			docTypes.getDocumentTypes().add(DocumentType.ACUSE_RECIBO_FINKOK);
			AcuseReciboFinkok acuse = (AcuseReciboFinkok) obj;
		} else if (obj.getClass().getName().equals(DocumentType.CFDI32.getClase().getName())) {
			if (obj.getClass().getName().equals(DocumentType.CFDI32.getClase().getName())) {
				docTypes.getDocumentTypes().add(DocumentType.CFDI32);
				Comprobante comp2 = (Comprobante) obj;
				if (comp2.getComplemento() != null && comp2.getComplemento().getAny().size() > 0) {
					Iterator<Object> complementos = comp2.getComplemento().getAny().iterator();
					while (complementos.hasNext()) {
						Object complemento = complementos.next();
						for (DocumentType dType : DocumentType.docTypesRegistered().getDocumentTypes()) {
							if (complemento.getClass().getName().equals(dType.getClase().getName())) {
								docTypes.getDocumentTypes().add(dType);
							}
						}
					}
				}
				if (comp2.getAddenda() != null && comp2.getAddenda().getAny().size() > 0) {
					Iterator<Object> addendas = comp2.getAddenda().getAny().iterator();
					while (addendas.hasNext()) {
						Object addenda = addendas.next();
						for (DocumentType dType : DocumentType.docTypesRegistered().getDocumentTypes()) {
							if (addenda.getClass().getName().equals(dType.getClase().getName())) {
								docTypes.getDocumentTypes().add(dType);
							}
						}
					}
				}
			}
		}
		
		addNamespaces();
	}
	
	private DocumentTypes getDocumentTypesJson(InputStream source) {
		DocumentTypes docTypes = new DocumentTypes();
		
		DocumentContext dc = JsonPath.parse(source);
		Iterator<DocumentType> itDocType = DocumentType.docTypesRegistered().getDocumentTypes().iterator();
		while (itDocType.hasNext()) {
			DocumentType docType = itDocType.next();
			try {
				Object obj = dc.read(docType.getRootJsonPath());
				if (obj instanceof JSONArray && !((JSONArray) obj).isEmpty()) {
					docTypes.getDocumentTypes().add(docType);
				}
			} catch (Exception ex) {
				logger.trace("Error", ex);
			}
		}
		
		return docTypes;
	}
	
	private DocumentTypes getDocumentTypesXml(InputStream source) throws ParserConfigurationException, SAXException, IOException, XPathExpressionException {
		DocumentTypes docTypes = new DocumentTypes();
		
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	    DocumentBuilder builder = factory.newDocumentBuilder();
	    Document doc = builder.parse(source);
	    
	    XPathFactory xfactory = XPathFactory.newInstance();
	    XPath xpath = xfactory.newXPath();
	    
	    Iterator<DocumentType> itDocType = DocumentType.docTypesRegistered().getDocumentTypes().iterator();
	    while (itDocType.hasNext()) {
	    	DocumentType docType = itDocType.next();
	    	if (docType.getRootXPath() != null) {
	    		if (!docType.getRootXPath().equals("")) {
		    		XPathExpression expr = xpath.compile(docType.getRootXPath());
			    	NodeList nl = (NodeList) expr.evaluate(doc, XPathConstants.NODESET);
			    	if (nl.getLength() > 0) {
			    		docTypes.getDocumentTypes().add(docType);
			    	}
	    		}
	    	}
	    }
	    
		return docTypes;
	}
	
	private Object load(InputStream source) throws JAXBException, IOException {
		JAXBContext context = getContext(this.docTypes);
		Object o = null;
		try {
			Unmarshaller u = context.createUnmarshaller();
			Reader reader = new InputStreamReader(source, "UTF-8");
			StreamSource src = new StreamSource(reader);
			Class<?> clazz = docTypes.getDocumentTypes().get(0).getClase();
			o = u.unmarshal(src, clazz).getValue();
		} finally {
			source.close();
		}
		return o;
	}
	
	private Object loadXml(InputStream source) throws JAXBException, IOException, ParserConfigurationException, SAXException, XPathExpressionException {
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
	
	public void guardar(OutputStream out) throws Exception {
		JAXBContext context = getContext(docTypes);
		Marshaller m = context.createMarshaller();
		m.setProperty("com.sun.xml.bind.namespacePrefixMapper", new NamespacePrefixMapperImpl(localPrefixes));
		//m.setProperty(Marshaller.JAXB_FRAGMENT, Boolean.TRUE);
		m.setProperty(Marshaller.JAXB_SCHEMA_LOCATION, schemaLocation);
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
		m.setProperty(Marshaller.JAXB_ENCODING, StandardCharsets.UTF_8.name());
		
		m.marshal(document, out);
	}
	
	protected JAXBContext getContext(DocumentTypes contexts) throws JAXBException {
		List<String> ctxString = new ArrayList<String>();
		List<Class> ctxClass = new ArrayList<Class>();
		for (DocumentType dType : contexts.getDocumentTypes()) {
			ctxString.add(dType.getPaquete());
			ctxClass.add(dType.getClase());
		}
		
		if (format == DiscoveryFormatType.XML) {
			Map<String, Object> properties = new HashMap<String, Object>();
			properties.put(Marshaller.JAXB_ENCODING, StandardCharsets.UTF_8.name());
			//return org.eclipse.persistence.jaxb.JAXBContextFactory.createContext(Constants.JOINER.join(ctxString), null);
			return org.eclipse.persistence.jaxb.JAXBContextFactory.createContext(ctxClass.toArray(new Class[ctxClass.size()]), properties);
		}
		else if (format == DiscoveryFormatType.JSON) {
			Map<String, Object> properties = new HashMap<String, Object>();
			properties.put(Marshaller.JAXB_ENCODING, StandardCharsets.UTF_8.name());
			properties.put(JAXBContextProperties.MEDIA_TYPE, "application/json");
			properties.put(JAXBContextProperties.JSON_INCLUDE_ROOT, false);
			return org.eclipse.persistence.jaxb.JAXBContextFactory.createContext(ctxClass.toArray(new Class[ctxClass.size()]), properties);
		}
		else {
			return null;
		}
		
	}
	
	private List<InputStream> cloneInputStream(InputStream input, int times) throws IOException {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		byte[] buffer = new byte[1024];
		int len;
		while ((len = input.read(buffer)) > -1 ) {
		    baos.write(buffer, 0, len);
		}
		baos.flush();
		List<InputStream> inputStreamClones = new ArrayList<InputStream>();
		
		while (inputStreamClones.size() < times) {
			inputStreamClones.add(new ByteArrayInputStream(baos.toByteArray()));
		}
		return inputStreamClones;
	}
	
	public void addNamespace(String uri, String prefix) {
		localPrefixes.put(uri, prefix);
	}
	
	public void addNamespaces() {
		Iterator<DocumentType> itDocType = docTypes.getDocumentTypes().iterator();
		schemaLocation = "";
		while (itDocType.hasNext()) {
			DocumentType docType = itDocType.next();
			addNamespace(docType.getNamespace(), docType.getNamespacePrefix());
			//if (!(docType.getClase() == DocumentType.TFD10.getClase())) {
				schemaLocation = schemaLocation + docType.getNamespace() + " " + docType.getSchemaLocation() + " ";
			//}
		}
	}

	public Object getDocument() {
		return document;
	}

	public DocumentTypes getDocTypes() {
		return docTypes;
	}

	public void setDocTypes(DocumentTypes docTypes) {
		this.docTypes = docTypes;
	}

	public void setDocument(Object document) {
		this.document = document;
	}
}
