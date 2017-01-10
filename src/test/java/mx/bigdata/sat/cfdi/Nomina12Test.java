package mx.bigdata.sat.cfdi;

import static org.junit.Assert.*;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPathExpressionException;

import org.eclipse.persistence.jaxb.JAXBContextFactory;
import org.junit.Ignore;
import org.junit.Test;
import org.xml.sax.SAXException;

import mx.bigdata.sat.examples.ExampleCFDv32Factory;
import mx.com.teqsoftqro.sat.cfdi.CFDv32Factory;
import mx.com.teqsoftqro.sat.common.ComprobanteBase;
import mx.com.teqsoftqro.sat.common.DocumentType;
import mx.gob.sat.cfd._32.Comprobante;
import mx.gob.sat.nomina12.Nomina;

public class Nomina12Test {

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
		List<DocumentType> docType = CFDv32Factory.getDocumentTypes(new FileInputStream("resources/xml/nomina12.xml"));
		assertNotNull(docType);
	}
	
	@Test
	public void test2() throws FileNotFoundException, Exception {
		CFDv32Factory cfd = new CFDv32Factory(new FileInputStream("resources/xml/nomina12.xml"));
		Comprobante c = cfd.doGetComprobante();
		ComprobanteBase compBase = cfd.getComprobante();
		assertNotNull(c);
		assertNotNull(compBase);
		
		CFDv32Factory cfd2 = new CFDv32Factory(compBase);
		cfd2.guardar(System.out);
		
	}

}
