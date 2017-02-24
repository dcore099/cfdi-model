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
import java.util.Iterator;

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
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runners.MethodSorters;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import mx.bigdata.sat.security.KeyLoaderEnumeration;
import mx.bigdata.sat.security.factory.KeyLoaderFactory;
import mx.com.teqsoftqro.sat.cfdi.CFD32Factory;
import mx.com.teqsoftqro.sat.cfdi.CFDiFactory;
import mx.com.teqsoftqro.sat.cfdi.ObjectFactory;
import mx.com.teqsoftqro.sat.common.ComprobanteBase;
import mx.com.teqsoftqro.sat.common.DiscoveryFormatType;
import mx.com.teqsoftqro.stamp.model.CFDi;
import mx.gob.sat.cfd._32.Comprobante;
import mx.gob.sat.nomina12.Nomina;
import mx.gob.sat.timbrefiscaldigital.TimbreFiscalDigital;
import mx.gob.seseqro.stamp.transformcfdi.CFDiToPdfConverter;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class CFD32FactoryTest {

	private static PrivateKey key;
	private static X509Certificate cert;
	  
	@BeforeClass
	public static void loadKeys() throws Exception {

		key = KeyLoaderFactory.createInstance(KeyLoaderEnumeration.PRIVATE_KEY_LOADER,
				new FileInputStream("resources/certs/CSD01_AAA010101AAA.key"), "12345678a").getKey();

		cert = KeyLoaderFactory.createInstance(KeyLoaderEnumeration.PUBLIC_KEY_LOADER,
				new FileInputStream("resources/certs/CSD01_AAA010101AAA.cer")).getKey();

	}
	
	@Test
	public void test00Cfdi() throws FileNotFoundException, Exception {
		CFD32Factory cfd = new CFD32Factory(new FileInputStream("resources/xml/cfdi_sellado.xml"));
		Comprobante cfdi = (Comprobante) cfd.getDocument();
		assertNotNull(cfdi);
		assertEquals(cfdi.getComplemento().getAny().size(), 0);
	}
	
	@Test
	public void test05CfdiNomina12() throws FileNotFoundException, Exception {
		CFD32Factory cfd = new CFD32Factory(new FileInputStream("resources/xml/cfdi_nomina12.xml"));
		Comprobante cfdi = (Comprobante) cfd.getDocument();
		assertNotNull(cfdi);
		assertEquals(cfdi.getComplemento().getAny().size(), 1);
		assertEquals(cfdi.getComplemento().getAny().get(0).getClass(), Nomina.class);
	}
	
	@Test
	public void test10CfdiNomina12Timbre() throws FileNotFoundException, Exception {
		CFD32Factory cfd = new CFD32Factory(new FileInputStream("resources/xml/cfdi_nomina12_timbre.xml"));
		Comprobante cfdi = (Comprobante) cfd.getDocument();
		assertNotNull(cfdi);
		assertEquals(cfdi.getComplemento().getAny().size(), 2);
		Iterator<Object> complementos = cfdi.getComplemento().getAny().iterator();
		while (complementos.hasNext()) {
			Object obj = complementos.next();
			assertTrue((obj.getClass() == Nomina.class) || (obj.getClass() == TimbreFiscalDigital.class));
		}
	}
	
	@Test
	public void test15SellarCfdi() throws FileNotFoundException, Exception {
		CFD32Factory cfd = new CFD32Factory(new FileInputStream("resources/xml/cfdi_nomina12_timbre.xml"));
		cfd.sellar(key, cert);
		Comprobante cfdi = (Comprobante) cfd.getDocument();
		
		//assertEquals(cfdi.getSello(), "SEUFMhOJ5GSgioW/x9L95//uRs389cvjTBD8XPoyEgIAP2t3dMYACrCIdEOVOqtxetIqioMCIxuqXP+Psz34nDkqgYsGK4hina49UoGRPYNBM+jYZegJzMt87LHFEvVrgL3geN83GUt/EhnWUafsgFkQVRBBrg4YQEz0Cjy33Q0=");
		//assertEquals(cfdi.getCertificado(), "");		
		imprimeComprobante(cfdi);
	}
	
	@Test @Ignore
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
	
	public void imprimeComprobante(Comprobante comp) throws Exception {
		CFD32Factory cfd =  new CFD32Factory(comp);
		FileOutputStream fos = new FileOutputStream("resources/xml/result.xml");
		cfd.guardar(fos);
	}

}
