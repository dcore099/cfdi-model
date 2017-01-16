package mx.gob.seseqro.stamp.transformcfdi;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;

import javax.xml.transform.stream.StreamSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class ProcesaTransformCfdi {
	
	protected final Logger logger = LoggerFactory.getLogger(ProcesaTransformCfdi.class.getName());

	boolean ready = false;
	
	public ProcesaTransformCfdi(){
		ready = true;
	}

	public int ProcessFile(File file, File outDir, File processedDir, File diagnosticDir, URL xsltLocation) throws MalformedURLException {
		return 0;
	}
	
	private int moveFile(File file, File processedDir,String diagnosticDir,String message){
		FileUtil fUtil = new FileUtil();
		if (!fUtil.moveProcessedFile(file, processedDir)){
			extracCfdiUtil.writeFile(diagnosticDir+File.separator+file.getName(), null, message);
			return -1;    
		}
		return 0;
	}

	public boolean isReady() {
		return this.ready;
	}
	
	private ExtracCfdiUtil extracCfdiUtil = ExtracCfdiUtil.getInstancia();
	private static String TXT_EXTENSION = ".txt";

}
