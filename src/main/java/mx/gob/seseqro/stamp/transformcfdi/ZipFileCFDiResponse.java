package mx.gob.seseqro.stamp.transformcfdi;

import java.io.Serializable;

public class ZipFileCFDiResponse 
	implements Serializable, Cloneable{

	
	private static final long serialVersionUID = 4710532861550102465L;
	private String errorCode;
	private String errorMessage;
	private String fechaEjecucion;
	private String nombreArchivo;

	public String getFechaEjecucion() {
		return fechaEjecucion;
	}
	public void setFechaEjecucion(String fechaEjecucion) {
		this.fechaEjecucion = fechaEjecucion;
	}
	public String getErrorCode() {
		return errorCode;
	}
	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	public String getNombreArchivo() {
		return nombreArchivo;
	}
	public void setNombreArchivo(String nombreArchivo) {
		this.nombreArchivo = nombreArchivo;
	}
}
