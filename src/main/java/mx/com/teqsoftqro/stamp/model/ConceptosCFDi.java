package mx.com.teqsoftqro.stamp.model;

import java.io.Serializable;
import java.math.BigDecimal;

import org.eclipse.persistence.oxm.annotations.XmlInverseReference;

public class ConceptosCFDi implements Serializable {

	private static final long serialVersionUID = 1L;
	private Long idConcepto;
	private BigDecimal cantidad;
	private String unidad;
	private String noIdentificacion;
	private String descripcion;
	private BigDecimal valorUnitario;
	private BigDecimal importe;
	private CFDi cfdi;
	
	public BigDecimal getCantidad() {
		return cantidad;
	}
	public String getUnidad() {
		return unidad;
	}
	public String getNoIdentificacion() {
		return noIdentificacion;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public BigDecimal getValorUnitario() {
		return valorUnitario;
	}
	public BigDecimal getImporte() {
		return importe;
	}
	public void setCantidad(BigDecimal cantidad) {
		this.cantidad = cantidad;
	}
	public void setUnidad(String unidad) {
		this.unidad = unidad;
	}
	public void setNoIdentificacion(String noIdentificacion) {
		this.noIdentificacion = noIdentificacion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public void setValorUnitario(BigDecimal valorUnitario) {
		this.valorUnitario = valorUnitario;
	}
	public void setImporte(BigDecimal importe) {
		this.importe = importe;
	}
	@XmlInverseReference(mappedBy = "detalles")
	public CFDi getCfdi() {
		return cfdi;
	}
	public void setCfdi(CFDi cfdi) {
		this.cfdi = cfdi;
	}
	public Long getIdConcepto() {
		return idConcepto;
	}
	public void setIdConcepto(Long idConcepto) {
		this.idConcepto = idConcepto;
	}
	
	
	
}
