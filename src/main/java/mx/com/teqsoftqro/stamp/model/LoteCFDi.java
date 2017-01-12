package mx.com.teqsoftqro.stamp.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import mx.bigdata.sat.schema.binder.LocalDateTimeAdapter;

@XmlRootElement(name = "CFDis")
@XmlType
public class LoteCFDi implements Serializable {

	private static final long serialVersionUID = 1L;
	private String nombreLote;
	private LocalDateTime creationDate;
	private LocalDateTime updateDate;
	private String createdBy;
	private String updatedBy;
	
	private BigDecimal subtotal;
	private BigDecimal descuento;
	private BigDecimal total;
	
	private List<CFDi> cfdis;

	public LoteCFDi() {
		setCfdis(new ArrayList<CFDi>());
	}
	
	public String getNombreLote() {
		return nombreLote;
	}
	@XmlJavaTypeAdapter(LocalDateTimeAdapter.class)
	public LocalDateTime getCreationDate() {
		return creationDate;
	}
	@XmlJavaTypeAdapter(LocalDateTimeAdapter.class)
	public LocalDateTime getUpdateDate() {
		return updateDate;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public String getUpdatedBy() {
		return updatedBy;
	}
	public BigDecimal getSubtotal() {
		return subtotal;
	}
	public BigDecimal getDescuento() {
		return descuento;
	}
	public BigDecimal getTotal() {
		return total;
	}
	@XmlElement(name = "CFDi")
	public List<CFDi> getCfdis() {
		return cfdis;
	}
	public void setNombreLote(String nombreLote) {
		this.nombreLote = nombreLote;
	}
	public void setCreationDate(LocalDateTime creationDate) {
		this.creationDate = creationDate;
	}
	public void setUpdateDate(LocalDateTime updateDate) {
		this.updateDate = updateDate;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}
	public void setSubtotal(BigDecimal subtotal) {
		this.subtotal = subtotal;
	}
	public void setDescuento(BigDecimal descuento) {
		this.descuento = descuento;
	}
	public void setTotal(BigDecimal total) {
		this.total = total;
	}
	public void setCfdis(List<CFDi> cfdis) {
		this.cfdis = cfdis;
	}
}
