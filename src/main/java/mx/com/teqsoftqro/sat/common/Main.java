package mx.com.teqsoftqro.sat.common;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;

import mx.com.teqsoftqro.sat.cfdi.CFD32Factory;
import mx.com.teqsoftqro.sat.cfdi.CFDiFactory;
import mx.com.teqsoftqro.sat.cfdi.ObjectFactory;
import mx.gob.sat.cfd._32.Comprobante;
import mx.gob.seseqro.stamp.transformcfdi.CFDiToPdfConverter;

public class Main {

	public static void main(String[] args) throws FileNotFoundException, Exception {
		String xml = "C:\\ExcelImport\\xMLtOpDF\\ReciboXML.xml"; // args[0];
		String xslt = "C:\\ExcelImport\\xMLtOpDF\\genfoV3.2PE1.xsl"; // args[1];
		
		CFD32Factory objF = new CFD32Factory(new FileInputStream(xml));
		InputStream in = new FileInputStream(xslt);
		CFDiToPdfConverter cfdiPdf = new CFDiToPdfConverter();
		ByteArrayOutputStream fos = (ByteArrayOutputStream) cfdiPdf.processCFDiToPDF(objF.getDocument(), in);
		fos.writeTo(new FileOutputStream("example1.pdf"));
		
	}
	
}
