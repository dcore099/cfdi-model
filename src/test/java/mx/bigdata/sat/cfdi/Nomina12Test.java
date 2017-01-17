package mx.bigdata.sat.cfdi;

import static org.junit.Assert.*;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.eclipse.persistence.jaxb.JAXBContextFactory;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import mx.bigdata.sat.security.KeyLoaderEnumeration;
import mx.bigdata.sat.security.factory.KeyLoaderFactory;
import mx.com.teqsoftqro.sat.cfdi.CFD32Factory;
import mx.com.teqsoftqro.sat.cfdi.CFDiFactory;
import mx.com.teqsoftqro.sat.cfdi.CFDv32Factory;
import mx.com.teqsoftqro.sat.cfdi.ObjectFactory;
import mx.com.teqsoftqro.sat.common.ComprobanteBase;
import mx.com.teqsoftqro.sat.common.DiscoveryFormatType;
import mx.com.teqsoftqro.stamp.model.CFDi;
import mx.gob.sat.cfd._32.Comprobante;
import mx.gob.sat.nomina12.Nomina;
import mx.gob.seseqro.stamp.transformcfdi.CFDiToPdfConverter;

public class Nomina12Test {

	private static PrivateKey key;

	  private static X509Certificate cert;
	  
	  @BeforeClass public static void loadKeys() throws Exception {

	    key = KeyLoaderFactory.createInstance(
	            KeyLoaderEnumeration.PRIVATE_KEY_LOADER,
	            new FileInputStream("resources/certs/CSD01_AAA010101AAA.key"),
	            "12345678a"
	    ).getKey();

	    cert = KeyLoaderFactory.createInstance(
	            KeyLoaderEnumeration.PUBLIC_KEY_LOADER,
	            new FileInputStream("resources/certs/CSD01_AAA010101AAA.cer")
	    ).getKey();

	  }
	
	@Test @Ignore
	public void test() throws Exception {
		CFDv32 cfd = new CFDv32(new FileInputStream("resources/xml/nomina12.xml"));
		Comprobante c = cfd.doGetComprobante();
		JAXBContext jc = JAXBContextFactory.createContext(new Class[]{Comprobante.class, Nomina.class}, null);
		Marshaller un = jc.createMarshaller();
		un.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		un.marshal(c, System.out);
		System.out.println("-----------------------------------------------------------------------------");
		cfd.guardar(System.out);
	}
	
	@Test @Ignore
	public void testCFDv32Factory() throws XPathExpressionException, FileNotFoundException, SAXException, IOException, ParserConfigurationException {
		//List<DocumentType> docType = CFDv32Factory.getDocumentTypes(new FileInputStream("resources/xml/nomina12.xml"));
		//assertNotNull(docType);
		
		InputStream is = new FileInputStream("resources/xml/nomina12.xml");
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	    DocumentBuilder builder = factory.newDocumentBuilder();
	    Document doc = builder.parse(is);
	    
	    XPathFactory xfactory = XPathFactory.newInstance();
	    XPath xpath = xfactory.newXPath();
	    
	    XPathExpression expr = xpath.compile("/*/Comprobante|/Comprobante|/*/Comprobante/@version|/Comprobante/@version");
		NodeList nodeL = (NodeList) expr.evaluate(doc, XPathConstants.NODESET);
		
		for (int e = 0; e < nodeL.getLength(); e++) {
			Node node = nodeL.item(e);
			if (node.getNodeType() == Node.ELEMENT_NODE) {
				System.out.println(node.getNodeName());
			}
			if (node.getNodeType() == Node.ATTRIBUTE_NODE && (node.getNodeName() == "Version" || node.getNodeName() == "version")) {
				System.out.println(node.getNodeValue());
			}
		}
	    
	    expr = xpath.compile("/*/Complemento/*|/*/Complemento/*/@version|/*/Complemento/*/@Version");
		NodeList nl3 = (NodeList) expr.evaluate(doc, XPathConstants.NODESET);
		
		for (int e = 0; e < nl3.getLength(); e++) {
			Node node1 = nl3.item(e);
			if (node1.getNodeType() == Node.ELEMENT_NODE) {
				System.out.println(node1.getNodeName());
			}
			if (node1.getNodeType() == Node.ATTRIBUTE_NODE && (node1.getNodeName() == "Version" || node1.getNodeName() == "version")) {
				System.out.println(node1.getNodeValue());
			}
			else {
				
			}
		}
		
		int i = nl3.getLength();
		i = i + 1;
	}
	
	@Test @Ignore
	public void test2() throws FileNotFoundException, Exception {
		CFDv32Factory cfd = new CFDv32Factory(new FileInputStream("resources/xml/nomina12Timbrada.xml"));
		Comprobante c = cfd.doGetComprobante();
		ComprobanteBase compBase = cfd.getComprobante();
		assertNotNull(c);
		assertNotNull(compBase);
		
		FileOutputStream fos= new FileOutputStream("resources/xml/nomina12Example1.xml"); 
		
		CFDv32Factory cfd2 = new CFDv32Factory(compBase);
		cfd2.guardar(fos);
		
		fos.close();
	}
	
	@Test @Ignore
	public void test3() throws FileNotFoundException, Exception {
		ObjectFactory cfd = new ObjectFactory(new FileInputStream("resources/xml/cfdi.xml"), DiscoveryFormatType.XML);
		CFDi cfdi = (CFDi) cfd.getDocument();
		
		ObjectFactory objF = new ObjectFactory(cfdi, DiscoveryFormatType.XML);
		objF.guardar(System.out);
		
		InputStream in = new FileInputStream("src/main/resources/genfoV3.2.xsl");
		CFDiToPdfConverter cfdiPdf = new CFDiToPdfConverter();
		ByteArrayOutputStream fos = (ByteArrayOutputStream) cfdiPdf.processCFDiToPDF(cfdi.getComprobante(), in);
		fos.writeTo(new FileOutputStream("resources/pdf/example1.pdf"));
		
		assertNotNull(cfdi);
	}
	
	@Test 
	public void test4() throws FileNotFoundException, Exception {
		ObjectFactory cfd = new ObjectFactory(new FileInputStream("resources/xml/cfdi_timbre.xml"), DiscoveryFormatType.XML);
		Comprobante cfdi = (Comprobante) cfd.getDocument();
		
		CFD32Factory objF = new CFD32Factory((Object)cfdi);
		objF.sellar(key, cert);
		objF.guardar(System.out);
		
		InputStream in = new FileInputStream("src/main/resources/genfoV3.2.xsl");
		CFDiToPdfConverter cfdiPdf = new CFDiToPdfConverter();
		ByteArrayOutputStream fos = (ByteArrayOutputStream) cfdiPdf.processCFDiToPDF(cfdi, in);
		fos.writeTo(new FileOutputStream("resources/pdf/example1.pdf"));
		
		assertNotNull(cfdi);
	}
	
	

}
