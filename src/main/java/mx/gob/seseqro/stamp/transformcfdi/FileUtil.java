package mx.gob.seseqro.stamp.transformcfdi;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.util.JAXBSource;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.sax.SAXTransformerFactory;
import javax.xml.transform.sax.TransformerHandler;
import javax.xml.transform.stream.StreamResult;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class FileUtil {

	protected final Logger logger = LoggerFactory.getLogger(FileUtil.class.getName());
	
	public boolean saveCfd(Marshaller mCFD, Object cfd, OutputStream fo, TransformerFactory tf, SAXResult  saxres) {
		boolean saved = false;
		
		try {
			SAXTransformerFactory saxTF = null;
			Source cfdSource;
			cfdSource = new JAXBSource(mCFD, cfd);
			StreamResult resXML = new StreamResult(fo);
			// SAXTransformerFactory saxTF = null;
			if (tf.getFeature(SAXTransformerFactory.FEATURE))
				saxTF = (SAXTransformerFactory) tf;
			TransformerHandler thandler = saxTF.newTransformerHandler();
			thandler.setResult(resXML);
			Transformer xmlTransformer = thandler.getTransformer();
			xmlTransformer.setParameter(OutputKeys.INDENT, "yes");
			CFDPrefixXMLFilter cfdContentFilter = new CFDPrefixXMLFilter();
			cfdContentFilter.setContentHandler(thandler);
			saxres = new SAXResult(cfdContentFilter);
			Transformer transXML;
			transXML = tf.newTransformer();
			transXML.transform(cfdSource, saxres);
			fo.close();
			fo = null;
			saved = true;
		} catch (TransformerConfigurationException ex) {
			logger.error(ExceptionUtils.getRealMessage(ex), ex);
		} catch (IOException ex) {
			logger.error(ExceptionUtils.getRealMessage(ex), ex);
		} catch (TransformerException ex) {
			logger.error(ExceptionUtils.getRealMessage(ex), ex);
		} catch (JAXBException ex) {
			logger.error(ExceptionUtils.getRealMessage(ex), ex);
		} catch (Exception ex){
			logger.error(ExceptionUtils.getRealMessage(ex), ex);
		}
		return saved;
	}
	
	public boolean moveProcessedFile(File file, File processedDir){
		try{
			logger.info("archivo a mover ::: " + file.getCanonicalPath());
		}catch(Exception ex){
			ex.printStackTrace();
		}
		boolean moveOk = false;
		File movedFile = new File(processedDir,file.getName());
		if(movedFile.exists())
			movedFile.delete();
		moveOk = file.renameTo(movedFile);
		return moveOk;
	}
	
	public void writeFile(String fileName,List<String> mensajes, String mensaje){
		
		try{
			BufferedWriter bfwrt= null;
			FileWriter fstream = new FileWriter(fileName);
			bfwrt = new BufferedWriter(fstream);
			
			if(null!=mensajes && mensajes.size()>0){
				for(String msj : mensajes){
					bfwrt.write(msj + System.getProperty("line.separator"));
				}
			}else if(null!=mensaje && !"".equals(mensaje.trim())){
				bfwrt.write(mensaje);
			}
			bfwrt.close();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public boolean deleteFile(String filename) {
        File d = new File(filename);
        if (d.isFile()) {
            File dE = new File(d.getParent());
            if (dE.isDirectory()) {
                File[] files = dE.listFiles();
                if (files != null) {
                    for (int i = 0; i < files.length; i++) {
                        File fileT = files[i];
                        long now = new Date().getTime();
                        long liveTime = now - fileT.lastModified();
                        if (liveTime > 160000) {
                            boolean te= fileT.delete();
                        }
                        fileT = null;
                    }
                }
            }
        }
        if (null != filename) {
            File file = new File(filename);
            try {
                if (file.exists()) {
                    boolean exito = file.delete();
                    if (!exito) {
                        boolean exito2 = file.delete();
                        if (exito2) {
                            // funciono el 2o delete
                        } else {
                            DeleteThread td = new DeleteThread(filename);
                            td.start();
                        }
                    }
                    return exito;
                } else {
                    //System.out.println("::.DELETEFILE:::No existe ." + filename);
                }
                return false;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static void main(String[] args) {
        FileUtil fu = new FileUtil();
        fu.deleteFile("c:\\Temp\\empowered.pdf");
    }

    class DeleteThread extends Thread {

        private String nameFile;

        public DeleteThread(String nameFile) {
            super();
            //this.setDaemon(true);
            this.nameFile = nameFile;
        }

        public void run() {
            File f = new File(this.nameFile);
            try {
                DeleteThread.sleep(10000);
                boolean r = f.delete();
            } catch (InterruptedException ex) {
                System.out.println("Excepcion al borrar el archivo" + this.nameFile + " dentro del hilo " + ex);
            }

        }
    }
	
}
