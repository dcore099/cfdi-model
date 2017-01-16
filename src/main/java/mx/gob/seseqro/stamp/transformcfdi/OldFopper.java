package mx.gob.seseqro.stamp.transformcfdi;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.net.URL;
import java.util.Enumeration;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;

import org.apache.avalon.framework.logger.ConsoleLogger;
import org.apache.fop.apps.Driver;
import org.apache.fop.apps.Fop;
import org.apache.fop.messaging.MessageHandler;
import org.apache.fop.render.pdf.PDFRenderer;

public class OldFopper {

	public static ByteArrayOutputStream fopPDF(InputStream xsltURL, String title, Source src, ByteArrayOutputStream out, String template){
		try {
			out = new ByteArrayOutputStream();

			//String basePath = xsltURL.toURI().toString();

			//String realPath = basePath.substring(0, basePath.lastIndexOf("/")+1);

			Driver driver = new Driver();

			org.apache.avalon.framework.logger.Logger logger = new ConsoleLogger(ConsoleLogger.LEVEL_FATAL);
			MessageHandler.setScreenLogger(logger);
			driver.setLogger(logger);

			//org.apache.fop.configuration.Configuration.put("baseDir", realPath);
			driver.setRenderer(Driver.RENDER_PDF);
			driver.setOutputStream(out);

			Source xslt = new StreamSource(xsltURL);
			TransformerFactory factory = TransformerFactory.newInstance();
			Transformer transformer = factory.newTransformer(xslt);

			Result res = null;
			res = new SAXResult(driver.getContentHandler());
			transformer.transform(src, res);
		} catch (Exception e) {
			e.printStackTrace();
			try {
				if (null!= out) out.close();
			} catch (IOException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
		}
		
		return out;
		/*
		finally {
			//Clean-up
			try {
				if (null!= out) out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}*/
	}
	
	
	public static void fopPDFOpt(String title, Source src, File f, URL xsltURL,String realPath){
		OutputStream out=null;
		try {
			out = new BufferedOutputStream(new FileOutputStream(f));
			
			

			Driver driver = new Driver();

			org.apache.avalon.framework.logger.Logger logger = new ConsoleLogger(ConsoleLogger.LEVEL_FATAL);
			MessageHandler.setScreenLogger(logger);
			driver.setLogger(logger);

			org.apache.fop.configuration.Configuration.put("baseDir", realPath);
			
			driver.setRenderer(Driver.RENDER_PDF);
			driver.setOutputStream(out);
			
			Source xslt= new StreamSource(xsltURL.openStream());
				
			
			
		
			TransformerFactory factory = TransformerFactory.newInstance();
			Transformer transformer = factory.newTransformer(xslt);

			Result res = null;
			res = new SAXResult(driver.getContentHandler());
			transformer.transform(src, res);
			
			out.close();
			out = null;

		} catch (Exception e) {
			e.printStackTrace();
			try {
				if (null!= out) out.close();
			} catch (IOException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
		}
		finally {
			//Clean-up
			try {
				if (null!= out) out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
		
}
