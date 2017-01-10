package mx.com.teqsoftqro.sat.cfdi;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.xml.XMLConstants;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.bind.util.JAXBSource;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.apache.commons.codec.binary.Base64;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;

import mx.bigdata.sat.security.KeyLoaderEnumeration;
import mx.bigdata.sat.security.factory.KeyLoaderFactory;
import mx.com.teqsoftqro.sat.common.CFDv32ComprobanteBase;
import mx.com.teqsoftqro.sat.common.ComprobanteBase;
import mx.com.teqsoftqro.sat.common.Constants;
import mx.com.teqsoftqro.sat.common.DocumentType;
import mx.com.teqsoftqro.sat.common.NamespacePrefixMapperImpl;
import mx.com.teqsoftqro.sat.common.URIResolverImpl;
import mx.com.teqsoftqro.sat.common.UrlPrefixes;
import mx.gob.sat.cfd._32.Comprobante;

public class CFDv32Factory implements CFDI {

	private static final String XML_HEADER = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";
	
	private static final String XSLT = "/xslt/cadenaoriginal_3_2.xslt";
	
	private static final String[] XSD = new String[] { "/xsd/v32/cfdv32.xsd", "/xsd/v3/TimbreFiscalDigital.xsd",
			"/xsd/common/TuristaPasajeroExtranjero/TuristaPasajeroExtranjero.xsd",
			"/xsd/common/detallista/detallista.xsd", "/xsd/common/divisas/divisas.xsd", "/xsd/common/donat/donat11.xsd",
			"/xsd/common/ecb/ecb.xsd", "/xsd/common/ecc/ecc.xsd", "/xsd/common/iedu/iedu.xsd",
			"/xsd/common/implocal/implocal.xsd", "/xsd/common/leyendasFisc/leyendasFisc.xsd",
			"/xsd/common/pfic/pfic.xsd", "/xsd/common/psgcfdsp/psgcfdsp.xsd", "/xsd/common/psgecfd/psgecfd.xsd",
			"/xsd/common/terceros/terceros11.xsd", "/xsd/common/ventavehiculos/ventavehiculos.xsd",
			"/xsd/common/nomina/nomina11.xsd", "/xsd/common/nomina12/nomina12.xsd" };
	
	public static final ImmutableMap<String, String> PREFIXES = ImmutableMap.of("http://www.w3.org/2001/XMLSchema-instance", "xsi");
	
	private final Map<String, String> localPrefixes = Maps.newHashMap();
	
	private JAXBContext context;
	
	private Comprobante document;
	
	private ComprobanteBase baseDocument;
	
	private TransformerFactory tf;
	
	public CFDv32Factory(InputStream in) throws Exception {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();

		byte[] buffer = new byte[1024];
		int len;
		while ((len = in.read(buffer)) > -1 ) {
		    baos.write(buffer, 0, len);
		}
		baos.flush();
		
		InputStream is1 = new ByteArrayInputStream(baos.toByteArray());
		InputStream is2 = new ByteArrayInputStream(baos.toByteArray()); 
		
		
		List<DocumentType> docTypes = getDocumentTypes(is1);
		String[] ctxs = getStringContexts(docTypes); 

		this.context = getContext(ctxs);
		this.document = load(is2, ctxs);
		this.baseDocument = new CFDv32ComprobanteBase(this.document, docTypes);
		addNamespaces();
	}

	public CFDv32Factory(InputStream in, String... contexts) throws Exception {
		this.context = getContext(contexts);
		this.document = load(in);
	}
	
	public CFDv32Factory(Comprobante comprobante, String... contexts) throws Exception {
		this.context = getContext(contexts);
		this.document = copy(comprobante);
	}
	
	public CFDv32Factory(ComprobanteBase comp) throws Exception {
		String[] ctxs = getStringContexts(comp.getDocumentTypes()); 
		this.context = getContext(ctxs);
		this.baseDocument = comp;
		this.document = (Comprobante) comp.getComprobante();
		addNamespaces();
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
	
	@Override
	public void setTransformerFactory(TransformerFactory tf) {
		this.tf = tf;
		tf.setURIResolver(new URIResolverImpl());
	}

	@Override
	public void sellar(PrivateKey key, X509Certificate cert) throws Exception {
		cert.checkValidity();
		String signature = getSignature(key);
		document.setSello(signature);
		byte[] bytes = cert.getEncoded();
		Base64 b64 = new Base64(-1);
		String certStr = b64.encodeToString(bytes);
		document.setCertificado(certStr);
		BigInteger bi = cert.getSerialNumber();
		document.setNoCertificado(new String(bi.toByteArray()));
	}

	public Comprobante sellarComprobante(PrivateKey key, X509Certificate cert) throws Exception {
		sellar(key, cert);
		return doGetComprobante();
	}
	
	@Override
	public void validar() throws Exception {
		validar(null);
	}

	@Override
	public void validar(ErrorHandler handler) throws Exception {
		SchemaFactory sf = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
		Source[] schemas = new Source[XSD.length];
		for (int i = 0; i < XSD.length; i++) {
			schemas[i] = new StreamSource(getClass().getResourceAsStream(XSD[i]));
		}
		Schema schema = sf.newSchema(schemas);
		Validator validator = schema.newValidator();
		if (handler != null) {
			validator.setErrorHandler(handler);
		}
		validator.validate(new JAXBSource(context, document));
	}

	@Override
	public void verificar() throws Exception {
		String certStr = document.getCertificado();
		Base64 b64 = new Base64();
		byte[] cbs = b64.decode(certStr);

		X509Certificate cert = KeyLoaderFactory.createInstance(KeyLoaderEnumeration.PUBLIC_KEY_LOADER, new ByteArrayInputStream(cbs)).getKey();

		String sigStr = document.getSello();
		byte[] signature = b64.decode(sigStr);
		byte[] bytes = getOriginalBytes();
		Signature sig = Signature.getInstance("SHA1withRSA");
		sig.initVerify(cert);
		sig.update(bytes);
		boolean bool = sig.verify(signature);
		if (!bool) {
			throw new Exception("Invalid signature");
		}
	}

	@Override
	public void guardar(OutputStream out) throws Exception {
		Marshaller m = context.createMarshaller();
		m.setProperty("com.sun.xml.bind.namespacePrefixMapper", new NamespacePrefixMapperImpl(localPrefixes));
		m.setProperty(Marshaller.JAXB_FRAGMENT, Boolean.TRUE);
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
		m.setProperty(Marshaller.JAXB_SCHEMA_LOCATION, "http://www.sat.gob.mx/cfd/3  " + "http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv32.xsd");
		m.setProperty(Marshaller.JAXB_ENCODING, StandardCharsets.UTF_8.name());
		byte[] xmlHeaderBytes = XML_HEADER.getBytes("UTF8");
		out.write(xmlHeaderBytes);
		m.marshal(document, out);
	}

	@Override
	public String getCadenaOriginal() throws Exception {
		byte[] bytes = getOriginalBytes();
		return new String(bytes, "UTF8");
	}

	@Override
	public ComprobanteBase getComprobante() throws Exception {
		return baseDocument;
	}
	
	public Comprobante doGetComprobante() throws Exception {
		return copy(document);
	}
	
	byte[] getOriginalBytes() throws Exception {
		JAXBSource in = new JAXBSource(context, document);
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		Result out = new StreamResult(baos);
		TransformerFactory factory = tf;
		if (factory == null) {
			factory = TransformerFactory.newInstance();
			factory.setURIResolver(new URIResolverImpl());
		}
		Transformer transformer = factory.newTransformer(new StreamSource(getClass().getResourceAsStream(XSLT)));
		transformer.transform(in, out);
		return baos.toByteArray();
	}
	
	String getSignature(PrivateKey key) throws Exception {
		byte[] bytes = getOriginalBytes();
		Signature sig = Signature.getInstance("SHA1withRSA");
		sig.initSign(key);
		sig.update(bytes);
		byte[] signed = sig.sign();
		Base64 b64 = new Base64(-1);
		return b64.encodeToString(signed);
	}
	
	private Comprobante copy(Comprobante comprobante) throws Exception {
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setNamespaceAware(true);
		DocumentBuilder db = dbf.newDocumentBuilder();
		Document doc = db.newDocument();
		Marshaller m = context.createMarshaller();
		m.marshal(comprobante, doc);
		Unmarshaller u = context.createUnmarshaller();
		return (Comprobante) u.unmarshal(doc);
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
		
		String[] arrayContexts = new String[contexts.size()];
		Iterator<String> itString = contexts.iterator();
		int cont = 0;
		while (itString.hasNext()) {
			arrayContexts[cont] = itString.next();
			cont++;
		}
		
		return arrayContexts;
	}
	
	public static List<DocumentType> getDocumentTypes(InputStream source) throws SAXException, IOException, ParserConfigurationException, XPathExpressionException {
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
	
	private static JAXBContext getContext(String[] contexts) throws Exception {
		List<String> ctx = Lists.newArrayList(contexts);
		return org.eclipse.persistence.jaxb.JAXBContext.newInstance(Constants.JOINER.join(ctx));
		//return JAXBContext.newInstance(Constants.JOINER.join(ctx));
	}
	
	private static Comprobante load(InputStream source, String... contexts) throws Exception {
		JAXBContext context = getContext(contexts);
		try {
			Unmarshaller u = context.createUnmarshaller();
			return (Comprobante) u.unmarshal(source);
		} finally {
			source.close();
		}
	}
	
}
