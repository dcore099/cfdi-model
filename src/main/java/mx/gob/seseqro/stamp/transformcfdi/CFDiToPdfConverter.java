package mx.gob.seseqro.stamp.transformcfdi;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.xml.transform.stream.StreamSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mx.com.teqsoftqro.sat.cfdi.ObjectFactory;
import mx.com.teqsoftqro.sat.common.DiscoveryFormatType;

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
	
	/*
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
	*/
}
