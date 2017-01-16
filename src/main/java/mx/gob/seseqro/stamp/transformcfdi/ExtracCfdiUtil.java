package mx.gob.seseqro.stamp.transformcfdi;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;

public class ExtracCfdiUtil extends FileUtil{

	
	private static ExtracCfdiUtil extracCfdiUtil;
	
	public static ExtracCfdiUtil getInstancia(){
		if(null==extracCfdiUtil){
			extracCfdiUtil = new ExtracCfdiUtil();
		}
		return extracCfdiUtil;
	}      
	
	public void generateCfdiFromZip(URL xlstURL,ZipInputStream zinstream,String extracDir,ExtractionStatusModel extractionStatusModel,String template){
		
		try{
			
			ZipEntry zentry = zinstream.getNextEntry();
			
			HashMap <String,Object> datos = getTransformationData(xlstURL, template);
			URL xsltIS = (URL) datos.get("xslt");
			while(null!=zentry){
				String path = null;
				try{
					path = extracDir+File.separator+zentry.getName();
					ByteArrayOutputStream baos = new ByteArrayOutputStream(1024);
					int n;
					byte[] buf = new byte[1024];
					while ((n = zinstream.read(buf, 0, 1024)) > -1) {
						baos.write(buf, 0, n);
		
					}
					
					
					File cfdiFile = new File(path.replace("\\", "/"));
					if(!cfdiFile.exists()){
						cfdiFile.getParentFile().mkdirs();
					}
					
					FileOutputStream fos = new FileOutputStream(cfdiFile);
					
					baos.writeTo(fos);
					//InputStream inputStream = new ByteArrayInputStream((baos).toByteArray());
					
					
					StreamSource ss = new StreamSource(new ByteArrayInputStream((baos).toByteArray()));
					File f =  new File(path.replace("\\", "/").replace(".xml", ".pdf"));
					
					OldFopper.fopPDFOpt(null, ss, f , xsltIS , datos.get("realPath").toString());
					
					zinstream.closeEntry();
				    
				    baos.close();
				    fos.close();
				}catch(Exception e){
					if(extractionStatusModel.getStatusMessages() == null){
						extractionStatusModel.setStatusMessages(new ArrayList<String>());
					}
					extractionStatusModel.getStatusMessages().add(ExtractMessages.MSG_EXTRCFDI_0014+path);
					extractionStatusModel.setStatusCode(9999);
					e.printStackTrace();
				}
				zentry = zinstream.getNextEntry();
			}
		}catch(Exception e){
			extractionStatusModel.setStatusCode(666);
			extractionStatusModel.setStatusMessage(ExtractMessages.MSG_EXTRCFDI_0015);
			e.printStackTrace();
		}
	}
	
	
	public boolean writeFile(byte [] fileBA,String path){
		try{
			
			
			InputStream inputstream = new ByteArrayInputStream(fileBA);
			
			File f = new File(path);
			
			if(!f.getParentFile().exists()){
				f.getParentFile().mkdirs();
			}
			OutputStream outputStream = new FileOutputStream(path);
			if(null != inputstream){
				byte[] buffer = new byte[4096];
				int length;
				while ((length = inputstream.read(buffer)) > 0) {
					outputStream.write(buffer, 0, length);
		
				}
				
				
				outputStream.flush();
				outputStream.close();
				inputstream.close();
			}else{
				return false;
			}
		
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public StreamSource obtenerSourceFromFile(File file){
		
		StreamSource stream = null;
		try{
			InputStream inputStream = new FileInputStream(file);
			stream = obtenerSource(inputStream);
		}catch(Exception e){
			e.printStackTrace();
			stream = null;
		}
		return stream;
	}
	
	public StreamSource obtenerSource(InputStream zipInputStream){
		StreamSource source = null;
		try{
			source = new StreamSource( zipInputStream );
		}catch(Exception e){
			source = null;
			e.printStackTrace();
		}
		return source;
	}
	
	public void setExtractionStatus (ExtractionStatusModel extractionStatusModel,Integer statusCode,String statusMessage){
		extractionStatusModel.setStatusCode(statusCode);
		extractionStatusModel.setStatusMessage(statusMessage);
	}
	
	
	
	
	public HashMap<String,Object> getTransformationData(URL xsltURL, String template){
		HashMap<String,Object> dataHM = null;
		try{
			String basePath =xsltURL.toURI().toString();
			String realPath = basePath.substring(0, basePath.lastIndexOf("/")+1);
			dataHM = new HashMap<String,Object>();
			
			dataHM.put("realPath", realPath);
			dataHM.put("xslt", xsltURL);
		}catch(Exception e){
			dataHM=null;
			e.printStackTrace();
		}
		return dataHM;
	}
	
	private static String REST_SERVICE_EXTRACCIONCFDI = "/serviciosDiverza/service/getZipCfdiFilesByDate/";
}
