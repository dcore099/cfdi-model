package mx.bigdata.sat.cfdi;

import static org.junit.Assert.assertEquals;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PushbackInputStream;
import java.io.StringBufferInputStream;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.util.zip.DeflaterInputStream;
import java.util.zip.GZIPInputStream;

import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;

import org.apache.commons.io.IOUtils;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;

import mx.bigdata.sat.cfd.CFDv2;
import mx.bigdata.sat.cfd.CFDv22;
import mx.bigdata.sat.common.CFDFactory;
import mx.bigdata.sat.common.FiscalDocument;
import mx.bigdata.sat.security.KeyLoaderEnumeration;
import mx.bigdata.sat.security.factory.KeyLoaderFactory;

public class CertificateTest {

	private static X509Certificate cert1;
	private static X509Certificate cert2;
	private static X509Certificate cert3;
	
	@BeforeClass public static void loadKeys() throws Exception {
	
	    cert1 = KeyLoaderFactory.createInstance(
	        KeyLoaderEnumeration.PUBLIC_KEY_LOADER,
	        new FileInputStream("resources/certs/CSD01_AAA010101AAA.cer")
	    ).getKey();
	    
	    cert2 = KeyLoaderFactory.createInstance(
		        KeyLoaderEnumeration.PUBLIC_KEY_LOADER,
		        new FileInputStream("resources/certs/00001000000403215693.cer")
		    ).getKey();
	    		
		cert3 = KeyLoaderFactory.createInstance(
		        KeyLoaderEnumeration.PUBLIC_KEY_LOADER,
		        new FileInputStream("resources/certs/rasr641117bv8.cer")
		    ).getKey();
	
	}
	
	@Test
	public void test() throws FileNotFoundException, IOException, XMLStreamException {
		GZIPInputStream gzip = new GZIPInputStream(new FileInputStream("resources/certs/LCO_2016-10-21_2.XML.gz"));
		//DeflaterInputStream d = new DeflaterInputStream(new FileInputStream("resources/certs/LCO_2016-10-20_1.XML.gz"));
		//byte[] array = new byte[5120000];
		//d.read(array);
		//String str = new String(array, StandardCharsets.UTF_8);
		//int i = 0;
		//i = i + 1;
		PushbackInputStream pb = new PushbackInputStream(gzip);
		while (pb.read() != '<') {}
		pb.unread('<');
		
		XMLInputFactory inputFactory = XMLInputFactory.newInstance();
		XMLStreamReader streamReader = inputFactory.createXMLStreamReader(pb);
		String anotherStr;
		int cont = 0;
		try {
		while (streamReader.hasNext()) {
			cont = cont + 1;
			int eventType = streamReader.next();
			if (cont > 9999340) {
				int e = 0;
				e = e + 1;
			}
			switch (eventType) {
			case XMLStreamReader.START_ELEMENT:
				anotherStr = streamReader.getLocalName();
				int attributesCount = streamReader.getAttributeCount();
				for (int i = 0; i < attributesCount; i++) {
					anotherStr = streamReader.getAttributeLocalName(i);
					anotherStr = streamReader.getAttributeValue(i);
					if (anotherStr.contains("AUID")) {
						System.out.println("RRT");
					}
					if (anotherStr.contains("RATR890123")) {
						System.out.println("RRT");
					}
					if (anotherStr.contains("RASR641117")) {
						System.out.println("RRT");
					}
				}
				if (streamReader.hasText()) {
					anotherStr = streamReader.getText();
				}
				int e = 0;
				e = e +1;
				break;
			case XMLStreamReader.END_ELEMENT:
				anotherStr = streamReader.getLocalName();
				if (streamReader.hasText()) {
					anotherStr = streamReader.getLocalName();
					if (anotherStr.equals("LCO")) {
						streamReader.close();
					}
				}
				break;
			}
		}
		} catch (Exception ex) {
			System.out.println(cont);
		}
	}
	
	@Test @Ignore
	public void  testConvert() throws Exception {
		  FiscalDocument c;
		  /*
		  c = CFDv2.newComprobante(new FileInputStream("resources/xml/cfdv2.externo.xml"));
		  assertEquals("2.0", c.getVersion());
		  assertEquals(mx.gob.sat.cfd._2.Comprobante.class, c.documentType());
		  c = CFDv22.newComprobante(new FileInputStream("resources/xml/cfdv22.xml"));
		  assertEquals("2.2", c.getVersion());
		  assertEquals(mx.gob.sat.cfd._22.Comprobante.class, c.documentType());
		  c = CFDv3.newComprobante(new FileInputStream("resources/xml/cfdv3.xml"));
		  assertEquals("3.0", c.getVersion());
		  assertEquals(mx.gob.sat.cfd._3.Comprobante.class, c.documentType());
		  c = CFDv32.newComprobante(new FileInputStream("resources/xml/cfdv32.xml"));
		  assertEquals("3.2", c.getVersion());
		  assertEquals(mx.gob.sat.cfd._32.Comprobante.class, c.documentType());
		  */
	  }
	
	@Test @Ignore
	public void testCFDiFactory() throws FileNotFoundException, IOException, Exception {
		String str = CFDFactory.getDocumentType(IOUtils.toByteArray(new FileInputStream("resources/xml/cfdv32.xml")));
		assertEquals(CFDv32.DOC_TYPE, str);
	}

}
