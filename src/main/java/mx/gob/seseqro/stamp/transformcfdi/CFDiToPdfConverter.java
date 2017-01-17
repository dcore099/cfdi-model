package mx.gob.seseqro.stamp.transformcfdi;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.StandardCharsets;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.transform.stream.StreamSource;

import org.eclipse.persistence.jaxb.JAXBContextFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.buzonfiscal.ns.addenda.bf._2.AddendaBuzonFiscal;

import mx.com.teqsoftqro.sat.cfdi.ObjectFactory;
import mx.com.teqsoftqro.sat.common.DiscoveryFormatType;
import mx.com.teqsoftqro.stamp.model.CFDi;
import mx.gob.sat.cfd._32.Comprobante;
import mx.gob.sat.cfd.timbrefiscaldigital.TimbreFiscalDigital;
import mx.gob.sat.nomina.Nomina;

public class CFDiToPdfConverter {

	protected final Logger logger = LoggerFactory.getLogger(ProcesaTransformCfdi.class.getName());
	
	ExtracCfdiUtil extracCfdiUtil = new ExtracCfdiUtil();
	
	public OutputStream processCFDiToPDF(Object cfdi, InputStream xsltLocation) throws Exception {
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		ByteArrayOutputStream baos2 = new ByteArrayOutputStream();
		
		ObjectFactory objF = new ObjectFactory(cfdi, DiscoveryFormatType.XML);
		objF.guardar(baos2);
		ByteArrayInputStream bais = new ByteArrayInputStream(baos2.toByteArray());
		
		StreamSource cfdiSource = extracCfdiUtil.obtenerSource(bais);
		
		if(null!=cfdiSource){
			ByteArrayOutputStream outResult = OldFopper.fopPDF(xsltLocation, null,cfdiSource, out, null);
			return outResult;
		}else{
			return null;
		}
	}
	
	private static String getStringFromInputStream(InputStream is) {

		BufferedReader br = null;
		StringBuilder sb = new StringBuilder();

		String line;
		try {

			br = new BufferedReader(new InputStreamReader(is));
			while ((line = br.readLine()) != null) {
				sb.append(line);
			}

		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		return sb.toString();

	}
	
}
