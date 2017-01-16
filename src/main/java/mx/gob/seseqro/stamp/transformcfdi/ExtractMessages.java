package mx.gob.seseqro.stamp.transformcfdi;

public class ExtractMessages {
	//Mensajes de Proceso en general
	public static String MSG_EXTRCFDI_0000 = "Proceso Realizado con \u00e9xito"; 
	
	public static String MSG_EXTRCFDI_0010 = "Hubo un error al conectarse al servicio REST"; 
	public static String MSG_EXTRCFDI_0011 = "Hubo un error al tratar de obtener el archivo del SFTP"; 
	public static String MSG_EXTRCFDI_0012 = "El archivo ZIP est\u00e1 vac\u00edo";
	public static String MSG_EXTRCFDI_0013 = "Hubo un error al tratar de conectarse al SFTP";
	
	//Mensajes de tratamiento de archivos dentro del proceso
	public static String MSG_EXTRCFDI_0014 = "Hubo un error al procesar el siguiente archivo : ";
	public static String MSG_EXTRCFDI_0015 = "Hubo un error al descomprimir el zip ";
	public static String MSG_EXTRCFDI_0016 = "Hubo un error al tratar de guardar el zip localmente";
	
	//Perfil Transformador
	public static String MSG_PERTRANSF_0031 = "No se pudo mover el archivo original";
	public static String MSG_PERTRANSF_0032 = "No es posible leer el archivo. No es un archivo v\u00e1lido o est\u00e1  da\u00f1ado";
	public static String MSG_PERTRANSF_0033 = "No es un tipo de archivo v\u00e1lido, no es un xml";
	
	
	//Utilidades para nombrar archivos
	public static String UTIL_EXTENSION_ZIP = ".zip";
	public static String UTIL_NOMBRE_ZIP = "extzip_";
	public static String UTIL_NOMBRE_ZIPFOLDER = "extractedZip";
}
