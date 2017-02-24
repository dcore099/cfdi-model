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
	@Override
	public boolean equals(Object obj) {
		boolean equal = true;
		ConceptosCFDi concepto = (ConceptosCFDi) obj;
		
		if (concepto.getIdConcepto() != null && this.getIdConcepto() != null) {equal = this.getIdConcepto().equals(concepto.getIdConcepto()); }
		else if (concepto.getIdConcepto() == null && this.getIdConcepto() != null) {return false;}
		else if (concepto.getIdConcepto() != null && this.getIdConcepto() == null) {return false;}
		else if (concepto.getIdConcepto() == null && this.getIdConcepto() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (concepto.getCantidad() != null && this.getCantidad() != null) {equal = this.getCantidad().equals(concepto.getCantidad()); }
		else if (concepto.getCantidad() == null && this.getCantidad() != null) {return false;}
		else if (concepto.getCantidad() != null && this.getCantidad() == null) {return false;}
		else if (concepto.getCantidad() == null && this.getCantidad() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (concepto.getUnidad() != null && this.getUnidad() != null) {equal = this.getUnidad().equals(concepto.getUnidad()); }
		else if (concepto.getUnidad() == null && this.getUnidad() != null) {return false;}
		else if (concepto.getUnidad() != null && this.getUnidad() == null) {return false;}
		else if (concepto.getUnidad() == null && this.getUnidad() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (concepto.getNoIdentificacion() != null && this.getNoIdentificacion() != null) {equal = this.getNoIdentificacion().equals(concepto.getNoIdentificacion()); }
		else if (concepto.getNoIdentificacion() == null && this.getNoIdentificacion() != null) {return false;}
		else if (concepto.getNoIdentificacion() != null && this.getNoIdentificacion() == null) {return false;}
		else if (concepto.getNoIdentificacion() == null && this.getNoIdentificacion() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (concepto.getDescripcion() != null && this.getDescripcion() != null) {equal = this.getDescripcion().equals(concepto.getDescripcion()); }
		else if (concepto.getDescripcion() == null && this.getDescripcion() != null) {return false;}
		else if (concepto.getDescripcion() != null && this.getDescripcion() == null) {return false;}
		else if (concepto.getDescripcion() == null && this.getDescripcion() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (concepto.getValorUnitario() != null && this.getValorUnitario() != null) {equal = this.getValorUnitario().equals(concepto.getValorUnitario()); }
		else if (concepto.getValorUnitario() == null && this.getValorUnitario() != null) {return false;}
		else if (concepto.getValorUnitario() != null && this.getValorUnitario() == null) {return false;}
		else if (concepto.getValorUnitario() == null && this.getValorUnitario() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (concepto.getImporte() != null && this.getImporte() != null) {equal = this.getImporte().equals(concepto.getImporte()); }
		else if (concepto.getImporte() == null && this.getImporte() != null) {return false;}
		else if (concepto.getImporte() != null && this.getImporte() == null) {return false;}
		else if (concepto.getImporte() == null && this.getImporte() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		return true;
	}
	public boolean equalId(ConceptosCFDi concepto) {
		boolean equal = true;
		
		if (concepto.getIdConcepto() != null && this.getIdConcepto() != null) {equal = this.getIdConcepto().equals(concepto.getIdConcepto()); }
		else if (concepto.getIdConcepto() == null && this.getIdConcepto() != null) {return false;}
		else if (concepto.getIdConcepto() != null && this.getIdConcepto() == null) {return false;}
		else if (concepto.getIdConcepto() == null && this.getIdConcepto() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		return true;
	}
}
