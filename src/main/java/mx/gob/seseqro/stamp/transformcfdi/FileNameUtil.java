package mx.gob.seseqro.stamp.transformcfdi;

import java.io.File;
import java.util.StringTokenizer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class FileNameUtil {

	protected final Logger logger = LoggerFactory.getLogger(FileNameUtil.class.getName());
	public static final String CARPETA = "\\[C\\]";
	public static final String NOMBRE_INICIO = "\\[NI\\]";
	public static final String NOMBRE_FINAL = "\\[NF\\]";
	public static final String TRASLADO = "\\[T\\]";
	public static final String PLANTILLA = "\\[PE\\]";
	
	public static final String CONTIENE_CARPETA = "[C]";
	public static final String CONTIENE_NOMBRE_INICIO = "[NI]";
	public static final String CONTIENE_NOMBRE_FINAL = "[NF]";
	public static final String CONTIENE_TRASLADO = "[T]";
	public static final String CONTIENE_PLANTILLA[]  ={"PE1","PE2","PE3","PE4","PE5","PE6","PE7","PE8","PE9","PE_10","PE_11","PE_12","PE_13","PE_14","PE_15","PE_16","PE_17","PE_18","PE_19","PE_20"};
	
	public String getOutNameFileInvercapMas(String option, File f, File outDir, String rfcEmisor, String rfcReceptor, String tipoDocto, 
			String serieFolio, String fecha, String parametroOption, int noRemisiones, String id, String periodo){
		
		String folders = "";
		String finalFileName = id + "-" + periodo + "_" + rfcEmisor + "_" + tipoDocto + "_" + serieFolio + "_" + fecha + "_" + rfcReceptor;
		String fileName = getFileNameWithoutExtension(f.getName());
		
		if(f.getName().contains(FileNameUtil.CONTIENE_TRASLADO)){
			fileName = fileName.replaceAll(TRASLADO,"");
		}
		System.out.println(fileName);
		for(int i=0; i<CONTIENE_PLANTILLA.length; i++){
			if(f.getName().contains(FileNameUtil.CONTIENE_PLANTILLA[i])){
				fileName = fileName.replaceAll(PLANTILLA,"");
			}
		}
		
		if((option.trim().equalsIgnoreCase("Default") && parametroOption.trim().equalsIgnoreCase("NA"))){
			finalFileName = optionDefault(fileName, folders, finalFileName, outDir);
		}else{
			if(option.trim().equalsIgnoreCase("Default") && !parametroOption.trim().equalsIgnoreCase("NA")){
				finalFileName = optionDefaultWithParameters(fileName, folders, finalFileName, outDir, 
						rfcEmisor, tipoDocto, serieFolio, fecha, noRemisiones, parametroOption);
			}else{
				if(option.trim().equalsIgnoreCase("NombreEspecial")){
					finalFileName = optionSpecialName(finalFileName, fileName, folders, serieFolio, noRemisiones, outDir);
				}else{
					if(option.trim().equalsIgnoreCase("Posicion")){
						finalFileName = this.optionPosition(fileName, folders, finalFileName, outDir,
								parametroOption, noRemisiones, serieFolio);
					}
				}
			}
		}
		
		return finalFileName;
	}	
	//Funcion que dispara la opcion con la cual se generaran los archivos/carpetas de salida
	public String getOutNameFileInvercap(String option, File f, File outDir, String rfcEmisor, String tipoDocto, 
			String serieFolio, String fecha, String parametroOption, int noRemisiones, String id){
		
		String folders = "";
		String finalFileName = id + "_" + rfcEmisor + "_" + tipoDocto + "_" + serieFolio + "_" + fecha;
		String fileName = getFileNameWithoutExtension(f.getName());
		
		if(f.getName().contains(FileNameUtil.CONTIENE_TRASLADO)){
			fileName = fileName.replaceAll(TRASLADO,"");
		}
		System.out.println(fileName);
		for(int i=0; i<CONTIENE_PLANTILLA.length; i++){
			if(f.getName().contains(FileNameUtil.CONTIENE_PLANTILLA[i])){
				fileName = fileName.replaceAll(PLANTILLA,"");
			}
		}
		
		if((option.trim().equalsIgnoreCase("Default") && parametroOption.trim().equalsIgnoreCase("NA"))){
			finalFileName = optionDefault(fileName, folders, finalFileName, outDir);
		}else{
			if(option.trim().equalsIgnoreCase("Default") && !parametroOption.trim().equalsIgnoreCase("NA")){
				finalFileName = optionDefaultWithParameters(fileName, folders, finalFileName, outDir, 
						rfcEmisor, tipoDocto, serieFolio, fecha, noRemisiones, parametroOption);
			}else{
				if(option.trim().equalsIgnoreCase("NombreEspecial")){
					finalFileName = optionSpecialName(finalFileName, fileName, folders, serieFolio, noRemisiones, outDir);
				}else{
					if(option.trim().equalsIgnoreCase("Posicion")){
						finalFileName = this.optionPosition(fileName, folders, finalFileName, outDir,
								parametroOption, noRemisiones, serieFolio);
					}
				}
			}
		}
		
		return finalFileName;
	}	
	//Funcion que dispara la opcion con la cual se generaran los archivos/carpetas de salida
	public String getOutNameFile(String option, File f, File outDir, String rfcEmisor, String tipoDocto, 
			String serieFolio, String fecha, String parametroOption, int noRemisiones){
		
		String folders = "";
		String finalFileName = rfcEmisor + "_" + tipoDocto + "_" + serieFolio + "_" + fecha;
		String fileName = getFileNameWithoutExtension(f.getName());
		
		if(f.getName().contains(FileNameUtil.CONTIENE_TRASLADO)){
			fileName = fileName.replaceAll(TRASLADO,"");
		}
		System.out.println(fileName);
		for(int i=0; i<CONTIENE_PLANTILLA.length; i++){
			if(f.getName().contains(FileNameUtil.CONTIENE_PLANTILLA[i])){
				fileName = fileName.replaceAll(PLANTILLA,"");
			}
		}
		
		if((option.trim().equalsIgnoreCase("Default") && parametroOption.trim().equalsIgnoreCase("NA"))){
			finalFileName = optionDefault(fileName, folders, finalFileName, outDir);
		}else{
			if(option.trim().equalsIgnoreCase("Default") && !parametroOption.trim().equalsIgnoreCase("NA")){
				finalFileName = optionDefaultWithParameters(fileName, folders, finalFileName, outDir, 
						rfcEmisor, tipoDocto, serieFolio, fecha, noRemisiones, parametroOption);
			}else{
				if(option.trim().equalsIgnoreCase("NombreEspecial")){
					finalFileName = optionSpecialName(finalFileName, fileName, folders, serieFolio, noRemisiones, outDir);
				}else{
					if(option.trim().equalsIgnoreCase("Posicion")){
						finalFileName = this.optionPosition(fileName, folders, finalFileName, outDir,
								parametroOption, noRemisiones, serieFolio);
					}
				}
			}
		}
		
		return finalFileName;
	}
	//Funcion que imeplementa los detalles de la opcion 1. Default, especificados en la documentacion
	//http://zlab02.diverza.com/svn/autentix/DiverzaConector/trunk/BuzonFiscalConector/sampleDocs/GeneracionPathDeSalida/EjemplosNombresArchivosConector.doc
	public String optionDefault(String fileName, String folders, String finalFileName, File outDir){
		StringTokenizer st = new StringTokenizer(fileName, "_");
		while (st.hasMoreElements()) {
			String elemento = st.nextToken();
			System.out.println("DIVISION ::: " + elemento);
			if (elemento.contains(CONTIENE_CARPETA)) {
				elemento = elemento.replaceAll(CARPETA, "");
				logger.info("Usar como folder ::: " + elemento);
				folders = folders + File.separator + elemento;
			} else {
				if (elemento.contains(CONTIENE_NOMBRE_INICIO)) {
					elemento = elemento.replaceAll(NOMBRE_INICIO, "");
					logger.info("Usar como ParteDelNombre al Inicio ::: "
							+ elemento);
					finalFileName = elemento + "_" + finalFileName;
				}
				if (elemento.contains(CONTIENE_NOMBRE_FINAL)) {
					elemento = elemento.replaceAll(NOMBRE_FINAL, "");
					logger.info("Usar como ParteDelNombre al final ::: "
							+ elemento);
					finalFileName = finalFileName + "_" + elemento;
				}
			}
		}

		if (finalFileName.endsWith("_")) {
			logger.debug("Termina con guion bajo");
			finalFileName = finalFileName.substring(0,
					finalFileName.length() - 1);
		}
		
		finalFileName = concatFinalName(fileName, folders, finalFileName, outDir);
		
		return finalFileName;
	}
	//Funcion que imeplementa los detalles de la opcion 2. Default con parametros, especificados en la documentacion
	//http://zlab02.diverza.com/svn/autentix/DiverzaConector/trunk/BuzonFiscalConector/sampleDocs/GeneracionPathDeSalida/EjemplosNombresArchivosConector.doc
	public String optionDefaultWithParameters(String fileName, String folders, String finalFileName, File outDir, 
			String rfcEmisor, String tipoDocto, String serieFolio, String fecha, int noRemisiones, String parametroOption){
		finalFileName = "";
		if(!parametroOption.contains("[-RFC]")){
			finalFileName = rfcEmisor + "_";
		}
		if(!parametroOption.contains("[-TIPODOCTO]")){
			finalFileName = finalFileName + tipoDocto + "_";
		}
		if(!parametroOption.contains("[-SF]")){
			finalFileName = finalFileName + serieFolio + "_";
		}else{
			if(noRemisiones > 1){
				finalFileName = finalFileName + serieFolio + "_";
			}
		}
		if(!parametroOption.contains("[-FECHA]")){
			finalFileName = finalFileName + fecha;
		}
		if(finalFileName.endsWith("_")){
			logger.debug("Termina con guion bajo");
			finalFileName = finalFileName.substring(0, finalFileName.length()-1);
		}
		
		StringTokenizer st = new StringTokenizer(fileName,"_");
		while(st.hasMoreElements()){
			String elemento = st.nextToken();
			System.out.println("DIVISION ::: " + elemento);
			if(elemento.contains(CONTIENE_CARPETA)){
				elemento = elemento.replaceAll(CARPETA, "");
				logger.info("Usar como folder ::: " + elemento);
				folders = folders + File.separator + elemento;
			}else{
				if(elemento.contains(CONTIENE_NOMBRE_INICIO)){
					elemento = elemento.replaceAll(NOMBRE_INICIO, "");
					logger.info("Usar como ParteDelNombre al Inicio ::: " + elemento);
					finalFileName = elemento + "_" + finalFileName; 
				}
				if(elemento.contains(CONTIENE_NOMBRE_FINAL)){
					elemento = elemento.replaceAll(NOMBRE_FINAL, "");
					logger.info("Usar como ParteDelNombre al Final ::: " + elemento);
					finalFileName = finalFileName + "_" + elemento;
				}
			}
		}
		finalFileName = concatFinalName(fileName, folders, finalFileName, outDir);
		
		return finalFileName;
	}
	//Funcion que imeplementa los detalles de la opcion 3. NombreEspecial, especificados en la documentacion
	//http://zlab02.diverza.com/svn/autentix/DiverzaConector/trunk/BuzonFiscalConector/sampleDocs/GeneracionPathDeSalida/EjemplosNombresArchivosConector.doc
	public String optionSpecialName(String finalFileName, String fileName, String folders, String serieFolio, int noRemisiones, File outDir){
		finalFileName = "";
		
		StringTokenizer st = new StringTokenizer(fileName,"_");
		while(st.hasMoreElements()){
			String elemento = st.nextToken();
			System.out.println("DIVISION ::: " + elemento);
			if(elemento.contains(CONTIENE_CARPETA)){
				elemento = elemento.replaceAll(CARPETA, "");
				logger.info("Usar como folder ::: " + elemento);
				folders = folders + File.separator + elemento;
			}else{
				finalFileName = finalFileName + elemento + "_";
			}
		}
		
		if(finalFileName.endsWith("_")){
			logger.debug("Termina con guion bajo");
			finalFileName = finalFileName.substring(0, finalFileName.length()-1);
		}
		
		if(noRemisiones > 1){
			finalFileName = finalFileName + "_" + serieFolio;
		}
		
		finalFileName = concatFinalName(fileName, folders, finalFileName, outDir);
		
		return finalFileName;
	}
	//Funcion que imeplementa los detalles de la opcion 4. Posicion, especificados en la documentacion
	//http://zlab02.diverza.com/svn/autentix/DiverzaConector/trunk/BuzonFiscalConector/sampleDocs/GeneracionPathDeSalida/EjemplosNombresArchivosConector.doc
	public String optionPosition(String fileName, String folders, String finalFileName, File outDir,
			String parametroOption, int noRemisiones, String serieFolio){
		finalFileName = "";
		StringTokenizer st = new StringTokenizer(parametroOption, "_");
		int pos = 0;
		int posFinal = 0;
		while (st.hasMoreElements()) {
			String elemento = st.nextToken();
			logger.info("DIVISION ::: " + elemento);
			if (elemento.contains(CONTIENE_CARPETA)) {
				elemento = elemento.replaceAll(CARPETA, "");
				
				pos = Integer.valueOf(elemento).intValue();
				logger.info("POSICION ::: " + pos);
				folders = folders + File.separator + fileName.substring(posFinal, pos + posFinal);
				posFinal = pos + posFinal;
			} else {
				if (elemento.contains(CONTIENE_NOMBRE_FINAL)) {
					elemento = elemento.replaceAll(NOMBRE_FINAL, "");
					
					pos = Integer.valueOf(elemento).intValue();
					finalFileName = finalFileName + fileName.substring(posFinal, pos + posFinal);
					posFinal = pos + posFinal;
				} else {
					if (elemento.contains(CONTIENE_NOMBRE_INICIO)) {
						elemento = elemento.replaceAll(NOMBRE_INICIO, "");
						
						pos = Integer.valueOf(elemento).intValue();
						finalFileName = fileName.substring(posFinal, pos + posFinal) + finalFileName;
						posFinal = pos + posFinal;
					}
				}
			}
			
		}
		
		if (finalFileName.endsWith("_")) {
			logger.debug("Termina con guion bajo");
			finalFileName = finalFileName.substring(0,
					finalFileName.length() - 1);
		}
		
		if(noRemisiones > 1 ){
			finalFileName = finalFileName + "_" + serieFolio;
		}
		
		logger.info("FOLDERS ::: " + folders);
		finalFileName = concatFinalName(fileName, folders, finalFileName, outDir);
		logger.info("Path Final ::: " + finalFileName);
		return finalFileName;
	}
	/*Concatena el path final, de los parametros outDir(pathInicial), folders(carpetas obtenidas del archivo de entrada),
	  y finalName(nombre obtenido del archivo de entrada)*/
	public String concatFinalName(String finalName, String folders, String finalFileName, File outDir){
		folders = outDir + File.separator + folders;
		finalFileName = folders + File.separator + finalFileName;
		File foldersFile = new File(folders);
		if(!foldersFile.exists()){
			foldersFile.mkdirs();
		}
		return finalFileName;
	}
	//Obtiene el nombre del archivo sin la extension, localizando el ultimo punto en todo el nombre 
	//ya que la extension del archivo podria ser menor a 3 caracteres, aunque deberia ser solo .txt o .xml
	private static String getFileNameWithoutExtension(String fileName) {
		int index = fileName.lastIndexOf('.');
		if (index > 0 && index <= fileName.length() - 2) {
			System.out.println("Filename without Extension: "
					+ fileName.substring(0, index));
			fileName = fileName.substring(0, index);
		}
		return fileName;
	}
	//Para lo opcion por posicion se hace una validacion previa de la longitud requerida por si esta no es la adecuada no se inicie el llamdo al WS,
	//ya que el path al final no podria generarse
	public boolean validateLength(String fileName, String paramOptFileName){
		boolean result = false;
		fileName = this.getFileNameWithoutExtension(fileName);
		StringTokenizer st = new StringTokenizer(paramOptFileName, "_");
		int longitudEsperada = 0;
		int longitudArchivo = fileName.length();
		while (st.hasMoreElements()) {
			String elemento = st.nextToken();
			logger.info("DIVISION ::: " + elemento);
			if (elemento.contains(CONTIENE_CARPETA)) {
				elemento = elemento.replaceAll(CARPETA, "");
			} else {
				if (elemento.contains(CONTIENE_NOMBRE_FINAL)) {
					elemento = elemento.replaceAll(NOMBRE_FINAL, "");
				} else {
					if (elemento.contains(CONTIENE_NOMBRE_INICIO)) {
						elemento = elemento.replaceAll(NOMBRE_INICIO, "");
					}
				}
			}
			longitudEsperada = longitudEsperada + Integer.valueOf(elemento).intValue();
		}
		if(longitudEsperada == longitudArchivo){
			result = true;
		}
		return result;
	}
}
