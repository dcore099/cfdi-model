package mx.com.teqsoftqro.stamp.model;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "Incidencia")
@XmlType
public class IncidenciaFinkok implements Serializable {

	private static final long serialVersionUID = 1L;
	private String idIncidencia;
	private String uuid;
	private String codigoError;
	private String workProcessId;
	private String mensajeIncidencia;
	private String rfcEmisor;
	private String noCertificadoPac;
	private String fechaRegistro;
	
	public String getIdIncidencia() {
		return idIncidencia;
	}
	public void setIdIncidencia(String idIncidencia) {
		this.idIncidencia = idIncidencia;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getCodigoError() {
		return codigoError;
	}
	public void setCodigoError(String codigoError) {
		this.codigoError = codigoError;
	}
	public String getWorkProcessId() {
		return workProcessId;
	}
	public void setWorkProcessId(String workProcessId) {
		this.workProcessId = workProcessId;
	}
	public String getMensajeIncidencia() {
		return mensajeIncidencia;
	}
	public void setMensajeIncidencia(String mensajeIncidencia) {
		this.mensajeIncidencia = mensajeIncidencia;
	}
	public String getRfcEmisor() {
		return rfcEmisor;
	}
	public void setRfcEmisor(String rfcEmisor) {
		this.rfcEmisor = rfcEmisor;
	}
	public String getNoCertificadoPac() {
		return noCertificadoPac;
	}
	public void setNoCertificadoPac(String noCertificadoPac) {
		this.noCertificadoPac = noCertificadoPac;
	}
	public String getFechaRegistro() {
		return fechaRegistro;
	}
	public void setFechaRegistro(String fechaRegistro) {
		this.fechaRegistro = fechaRegistro;
	}
	
}
