package mx.com.teqsoftqro.stamp.model;

import java.io.Serializable;
import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "AcuseRecibo")
@XmlType
public class AcuseReciboFinkok implements Serializable {

	private static final long serialVersionUID = 1L;
	private String xml;
	private String uuid;
	private String faultString;
	private String fecha;
	private String codEstatus;
	private String faultCode;
	private String SatSeal;
	private IncidenciasFinkok incidencias;
	private String noCertificadoSat;
	
	public String getXml() {
		return xml;
	}
	public void setXml(String xml) {
		this.xml = xml;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getFaultString() {
		return faultString;
	}
	public void setFaultString(String faultString) {
		this.faultString = faultString;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	public String getCodEstatus() {
		return codEstatus;
	}
	public void setCodEstatus(String codEstatus) {
		this.codEstatus = codEstatus;
	}
	public String getFaultCode() {
		return faultCode;
	}
	public void setFaultCode(String faultCode) {
		this.faultCode = faultCode;
	}
	public String getSatSeal() {
		return SatSeal;
	}
	public void setSatSeal(String satSeal) {
		SatSeal = satSeal;
	}
	public IncidenciasFinkok getIncidencias() {
		return incidencias;
	}
	public void setIncidencias(IncidenciasFinkok incidencias) {
		this.incidencias = incidencias;
	}
	public String getNoCertificadoSat() {
		return noCertificadoSat;
	}
	public void setNoCertificadoSat(String noCertificadoSat) {
		this.noCertificadoSat = noCertificadoSat;
	}
}
