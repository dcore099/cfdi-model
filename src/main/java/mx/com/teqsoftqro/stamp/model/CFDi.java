package mx.com.teqsoftqro.stamp.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import org.eclipse.persistence.oxm.annotations.XmlInverseReference;
import mx.bigdata.sat.schema.binder.LocalDateTimeAdapter;
import mx.com.teqsoftqro.sat.common.DocumentTypes;
import mx.gob.sat.cfd._32.Comprobante;

@XmlRootElement(name = "CFDi")
@XmlType
public class CFDi implements Serializable {

	private static final long serialVersionUID = 1L;
	// Control
	private String refID;
	private LocalDateTime creationDate;
	private LocalDateTime updateDate;
	private String createdBy;
	private String updatedBy;

	// Generalidades Factura
	private LoteCFDi lote;
	private String folioFiscal;
	private String folio;
	private String folioAnterior;
	private String serie;
	private String tipoComprobante;
	private String rfcEmisor;
	private String contribuyenteEmisor;
	private String rfcReceptor;
	private String contribuyenteReceptor;
	private LocalDateTime fechaCFDi;
	private LocalDateTime fechaTimbre;
	private BigDecimal subtotal;
	private BigDecimal descuento;
	private BigDecimal total;
	private List<ConceptosCFDi> detalles;
	
	// Proceso Timbre
	private String procesado;
	private String errorCode;
	private String errorDesc;
	private AcuseReciboFinkok respuestaTimbrado;
	private String cancelado;
	
	// XML
	private Comprobante comprobante;
	private DocumentTypes documentTypes;
	
	// Campos Extra 
	private String observaciones;
	private LocalDateTime fechaDeposito;
	private String paciente;
	private String nivel;
	private String formaPago;
	private String numeroCuenta;
	private String unidadGenero;
	private String correos;
	
	
	// Busqueda
	private LocalDateTime desdeFechaTimbre;
	private LocalDateTime hastaFechaTimbre;
	private LocalDateTime desdeFechaCFDi;
	private LocalDateTime hastaFechaCFDi;
	private BigDecimal desdeSubtotal;
	private BigDecimal hastaSubtotal;
	private BigDecimal desdeDescuento;
	private BigDecimal hastaDescuento;
	private BigDecimal desdeTotal;
	private BigDecimal hastaTotal;
	
	public CFDi() {}
	public CFDi(String refID,
				String folioFiscal,
				String serie,
				String tipoComprobante,
				String rfcEmisor,
				String contribuyenteEmisor,
				String rfcReceptor,
				String contribuyenteReceptor,
				LocalDateTime fechaCFDi,
				LocalDateTime fechaTimbre,
				BigDecimal subtotal,
				BigDecimal descuento,
				BigDecimal total,
				String procesado,
				String errorCode,
				String errorDesc
				) {
		this.refID = refID;
		this.folioFiscal = folioFiscal;
		this.serie = serie;
		this.tipoComprobante = tipoComprobante;
		this.rfcEmisor = rfcEmisor;
		this.contribuyenteEmisor = contribuyenteEmisor;
		this.rfcReceptor = rfcReceptor;
		this.contribuyenteReceptor = contribuyenteReceptor;
		this.fechaCFDi = fechaCFDi;
		this.fechaTimbre = fechaTimbre;
		this.subtotal = subtotal;
		this.descuento = descuento;
		this.total = total;
		this.procesado = procesado;
		this.errorCode = errorCode;
		this.errorDesc = errorDesc;
	}
	
	public String getRefID() {
		return refID;
	}
	public String getFolioFiscal() {
		return folioFiscal;
	}
	public String getSerie() {
		return serie;
	}
	public String getTipoComprobante() {
		return tipoComprobante;
	}
	public String getRfcEmisor() {
		return rfcEmisor;
	}
	public String getContribuyenteEmisor() {
		return contribuyenteEmisor;
	}
	public String getRfcReceptor() {
		return rfcReceptor;
	}
	public String getContribuyenteReceptor() {
		return contribuyenteReceptor;
	}
	@XmlJavaTypeAdapter(LocalDateTimeAdapter.class)
	public LocalDateTime getFechaCFDi() {
		return fechaCFDi;
	}
	@XmlJavaTypeAdapter(LocalDateTimeAdapter.class)
	public LocalDateTime getFechaTimbre() {
		return fechaTimbre;
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
	public String getProcesado() {
		return procesado;
	}
	public String getErrorCode() {
		return errorCode;
	}
	public String getErrorDesc() {
		return errorDesc;
	}
	public AcuseReciboFinkok getRespuestaTimbrado() {
		return respuestaTimbrado;
	}
	public String getCancelado() {
		return cancelado;
	}
	public Comprobante getComprobante() {
		return comprobante;
	}
	@XmlJavaTypeAdapter(LocalDateTimeAdapter.class)
	public LocalDateTime getDesdeFechaTimbre() {
		return desdeFechaTimbre;
	}
	@XmlJavaTypeAdapter(LocalDateTimeAdapter.class)
	public LocalDateTime getHastaFechaTimbre() {
		return hastaFechaTimbre;
	}
	public BigDecimal getDesdeSubtotal() {
		return desdeSubtotal;
	}
	public BigDecimal getHastaSubtotal() {
		return hastaSubtotal;
	}
	public BigDecimal getDesdeDescuento() {
		return desdeDescuento;
	}
	public BigDecimal getHastaDescuento() {
		return hastaDescuento;
	}
	public BigDecimal getDesdeTotal() {
		return desdeTotal;
	}
	public BigDecimal getHastaTotal() {
		return hastaTotal;
	}
	public void setRefID(String refID) {
		this.refID = refID;
	}
	public void setFolioFiscal(String folioFiscal) {
		this.folioFiscal = folioFiscal;
	}
	public void setSerie(String serie) {
		this.serie = serie;
	}
	public void setTipoComprobante(String tipoComprobante) {
		this.tipoComprobante = tipoComprobante;
	}
	public void setRfcEmisor(String rfcEmisor) {
		this.rfcEmisor = rfcEmisor;
	}
	public void setContribuyenteEmisor(String contribuyenteEmisor) {
		this.contribuyenteEmisor = contribuyenteEmisor;
	}
	public void setRfcReceptor(String rfcReceptor) {
		this.rfcReceptor = rfcReceptor;
	}
	public void setContribuyenteReceptor(String contribuyenteReceptor) {
		this.contribuyenteReceptor = contribuyenteReceptor;
	}
	public void setFechaCFDi(LocalDateTime fechaCFDi) {
		this.fechaCFDi = fechaCFDi;
	}
	public void setFechaTimbre(LocalDateTime fechaTimbre) {
		this.fechaTimbre = fechaTimbre;
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
	public void setProcesado(String procesado) {
		this.procesado = procesado;
	}
	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}
	public void setErrorDesc(String errorDesc) {
		this.errorDesc = errorDesc;
	}
	public void setRespuestaTimbrado(AcuseReciboFinkok respuestaTimbrado) {
		this.respuestaTimbrado = respuestaTimbrado;
	}
	public void setCancelado(String cancelado) {
		this.cancelado = cancelado;
	}
	public void setComprobante(Comprobante comprobante) {
		this.comprobante = comprobante;
	}
	public void setDesdeFechaTimbre(LocalDateTime desdeFechaTimbre) {
		this.desdeFechaTimbre = desdeFechaTimbre;
	}
	public void setHastaFechaTimbre(LocalDateTime hastaFechaTimbre) {
		this.hastaFechaTimbre = hastaFechaTimbre;
	}
	public void setDesdeSubtotal(BigDecimal desdeSubtotal) {
		this.desdeSubtotal = desdeSubtotal;
	}
	public void setHastaSubtotal(BigDecimal hastaSubtotal) {
		this.hastaSubtotal = hastaSubtotal;
	}
	public void setDesdeDescuento(BigDecimal desdeDescuento) {
		this.desdeDescuento = desdeDescuento;
	}
	public void setHastaDescuento(BigDecimal hastaDescuento) {
		this.hastaDescuento = hastaDescuento;
	}
	public void setDesdeTotal(BigDecimal desdeTotal) {
		this.desdeTotal = desdeTotal;
	}
	public void setHastaTotal(BigDecimal hastaTotal) {
		this.hastaTotal = hastaTotal;
	}
	@XmlJavaTypeAdapter(LocalDateTimeAdapter.class)
	public LocalDateTime getDesdeFechaCFDi() {
		return desdeFechaCFDi;
	}
	public void setDesdeFechaCFDi(LocalDateTime desdeFechaCFDi) {
		this.desdeFechaCFDi = desdeFechaCFDi;
	}
	@XmlJavaTypeAdapter(LocalDateTimeAdapter.class)
	public LocalDateTime getHastaFechaCFDi() {
		return hastaFechaCFDi;
	}
	public void setHastaFechaCFDi(LocalDateTime hastaFechaCFDi) {
		this.hastaFechaCFDi = hastaFechaCFDi;
	}
	public String getFolio() {
		return folio;
	}
	public void setFolio(String folio) {
		this.folio = folio;
	}
	public String getFolioAnterior() {
		return folioAnterior;
	}
	public void setFolioAnterior(String folioAnterior) {
		this.folioAnterior = folioAnterior;
	}
	public LocalDateTime getCreationDate() {
		return creationDate;
	}
	public LocalDateTime getUpdateDate() {
		return updateDate;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public String getUpdatedBy() {
		return updatedBy;
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
	public List<ConceptosCFDi> getDetalles() {
		return detalles;
	}
	public void setDetalles(List<ConceptosCFDi> detalles) {
		this.detalles = detalles;
	}
	@XmlInverseReference(mappedBy = "cfdis")
	public LoteCFDi getLote() {
		return lote;
	}
	public void setLote(LoteCFDi lote) {
		this.lote = lote;
	}
	public String getObservaciones() {
		return observaciones;
	}
	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}
	@XmlJavaTypeAdapter(LocalDateTimeAdapter.class)
	public LocalDateTime getFechaDeposito() {
		return fechaDeposito;
	}
	public void setFechaDeposito(LocalDateTime fechaDeposito) {
		this.fechaDeposito = fechaDeposito;
	}
	public String getPaciente() {
		return paciente;
	}
	public void setPaciente(String paciente) {
		this.paciente = paciente;
	}
	public String getNivel() {
		return nivel;
	}
	public void setNivel(String nivel) {
		this.nivel = nivel;
	}
	public String getNumeroCuenta() {
		return numeroCuenta;
	}
	public void setNumeroCuenta(String numeroCuenta) {
		this.numeroCuenta = numeroCuenta;
	}
	public String getFormaPago() {
		return formaPago;
	}
	public void setFormaPago(String formaPago) {
		this.formaPago = formaPago;
	}
	public String getUnidadGenero() {
		return unidadGenero;
	}
	public void setUnidadGenero(String unidadGenero) {
		this.unidadGenero = unidadGenero;
	}
	public String getCorreos() {
		return correos;
	}
	public void setCorreos(String correos) {
		this.correos = correos;
	}
	@Override
	public boolean equals(Object obj) {
		boolean equal = true;
		CFDi cfdi = (CFDi) obj;
		
		if (cfdi.getRefID() != null && this.getRefID() != null) {equal = this.getRefID().equals(cfdi.getRefID()); }
		else if (cfdi.getRefID() == null && this.getRefID() != null) {return false;}
		else if (cfdi.getRefID() != null && this.getRefID() == null) {return false;}
		else if (cfdi.getRefID() == null && this.getRefID() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getCreationDate() != null && this.getCreationDate() != null) {equal = this.getCreationDate().equals(cfdi.getCreationDate()); }
		else if (cfdi.getCreationDate() == null && this.getCreationDate() != null) {return false;}
		else if (cfdi.getCreationDate() != null && this.getCreationDate() == null) {return false;}
		else if (cfdi.getCreationDate() == null && this.getCreationDate() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getUpdateDate() != null && this.getUpdateDate() != null) {equal = this.getUpdateDate().equals(cfdi.getUpdateDate()); }
		else if (cfdi.getUpdateDate() == null && this.getUpdateDate() != null) {return false;}
		else if (cfdi.getUpdateDate() != null && this.getUpdateDate() == null) {return false;}
		else if (cfdi.getUpdateDate() == null && this.getUpdateDate() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getCreatedBy() != null && this.getCreatedBy() != null) {equal = this.getCreatedBy().equals(cfdi.getCreatedBy()); }
		else if (cfdi.getCreatedBy() == null && this.getCreatedBy() != null) {return false;}
		else if (cfdi.getCreatedBy() != null && this.getCreatedBy() == null) {return false;}
		else if (cfdi.getCreatedBy() == null && this.getCreatedBy() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getUpdatedBy() != null && this.getUpdatedBy() != null) {equal = this.getUpdatedBy().equals(cfdi.getUpdatedBy()); }
		else if (cfdi.getUpdatedBy() == null && this.getUpdatedBy() != null) {return false;}
		else if (cfdi.getUpdatedBy() != null && this.getUpdatedBy() == null) {return false;}
		else if (cfdi.getUpdatedBy() == null && this.getUpdatedBy() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getFolioFiscal() != null && this.getFolioFiscal() != null) {equal = this.getFolioFiscal().equals(cfdi.getFolioFiscal()); }
		else if (cfdi.getFolioFiscal() == null && this.getFolioFiscal() != null) {return false;}
		else if (cfdi.getFolioFiscal() != null && this.getFolioFiscal() == null) {return false;}
		else if (cfdi.getFolioFiscal() == null && this.getFolioFiscal() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getFolio() != null && this.getFolio()!= null) {equal = this.getFolio().equals(cfdi.getFolio()); }
		else if (cfdi.getFolio() == null && this.getFolio() != null) {return false;}
		else if (cfdi.getFolio() != null && this.getFolio() == null) {return false;}
		else if (cfdi.getFolio() == null && this.getFolio() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getFolioAnterior() != null && this.getFolioAnterior() != null) {equal = this.getFolioAnterior().equals(cfdi.getFolioAnterior()); }
		else if (cfdi.getFolioAnterior() == null && this.getFolioAnterior() != null) {return false;}
		else if (cfdi.getFolioAnterior() != null && this.getFolioAnterior() == null) {return false;}
		else if (cfdi.getFolioAnterior() == null && this.getFolioAnterior() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getSerie() != null && this.getSerie() != null) {equal = this.getSerie().equals(cfdi.getSerie()); }
		else if (cfdi.getSerie() == null && this.getSerie() != null) {return false;}
		else if (cfdi.getSerie() != null && this.getSerie() == null) {return false;}
		else if (cfdi.getSerie() == null && this.getSerie() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getTipoComprobante() != null && this.getTipoComprobante() != null) {equal = this.getTipoComprobante().equals(cfdi.getTipoComprobante()); }
		else if (cfdi.getTipoComprobante() == null && this.getTipoComprobante() != null) {return false;}
		else if (cfdi.getTipoComprobante() != null && this.getTipoComprobante() == null) {return false;}
		else if (cfdi.getTipoComprobante() == null && this.getTipoComprobante() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getRfcEmisor() != null && this.getRfcEmisor() != null) {equal = this.getRfcEmisor().equals(cfdi.getRfcEmisor()); }
		else if (cfdi.getRfcEmisor() == null && this.getRfcEmisor() != null) {return false;}
		else if (cfdi.getRfcEmisor() != null && this.getRfcEmisor() == null) {return false;}
		else if (cfdi.getRfcEmisor() == null && this.getRfcEmisor() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getContribuyenteEmisor() != null && this.getContribuyenteEmisor() != null) {equal = this.getContribuyenteEmisor().equals(cfdi.getContribuyenteEmisor()); }
		else if (cfdi.getContribuyenteEmisor() == null && this.getContribuyenteEmisor() != null) {return false;}
		else if (cfdi.getContribuyenteEmisor() != null && this.getContribuyenteEmisor() == null) {return false;}
		else if (cfdi.getContribuyenteEmisor() == null && this.getContribuyenteEmisor() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getRfcReceptor() != null && this.getRfcReceptor() != null) {equal = this.getRfcReceptor().equals(cfdi.getRfcReceptor()); }
		else if (cfdi.getRfcReceptor() == null && this.getRfcReceptor() != null) {return false;}
		else if (cfdi.getRfcReceptor() != null && this.getRfcReceptor() == null) {return false;}
		else if (cfdi.getRfcReceptor() == null && this.getRfcReceptor() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getContribuyenteReceptor() != null && this.getContribuyenteReceptor() != null) {equal = this.getContribuyenteReceptor().equals(cfdi.getContribuyenteReceptor()); }
		else if (cfdi.getContribuyenteReceptor() == null && this.getContribuyenteReceptor() != null) {return false;}
		else if (cfdi.getContribuyenteReceptor() != null && this.getContribuyenteReceptor() == null) {return false;}
		else if (cfdi.getContribuyenteReceptor() == null && this.getContribuyenteReceptor() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getFechaCFDi() != null && this.getFechaCFDi() != null) {equal = this.getFechaCFDi().equals(cfdi.getFechaCFDi()); }
		else if (cfdi.getFechaCFDi() == null && this.getFechaCFDi() != null) {return false;}
		else if (cfdi.getFechaCFDi() != null && this.getFechaCFDi() == null) {return false;}
		else if (cfdi.getFechaCFDi() == null && this.getFechaCFDi() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getFechaTimbre() != null && this.getFechaTimbre() != null) {equal = this.getFechaTimbre().equals(cfdi.getFechaTimbre()); }
		else if (cfdi.getFechaTimbre() == null && this.getFechaTimbre() != null) {return false;}
		else if (cfdi.getFechaTimbre() != null && this.getFechaTimbre() == null) {return false;}
		else if (cfdi.getFechaTimbre() == null && this.getFechaTimbre() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getSubtotal() != null && this.getSubtotal() != null) {equal = this.getSubtotal().equals(cfdi.getSubtotal()); }
		else if (cfdi.getSubtotal() == null && this.getSubtotal() != null) {return false;}
		else if (cfdi.getSubtotal() != null && this.getSubtotal() == null) {return false;}
		else if (cfdi.getSubtotal() == null && this.getSubtotal() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getDescuento() != null && this.getDescuento() != null) {equal = this.getDescuento().equals(cfdi.getDescuento()); }
		else if (cfdi.getDescuento() == null && this.getDescuento() != null) {return false;}
		else if (cfdi.getDescuento() != null && this.getDescuento() == null) {return false;}
		else if (cfdi.getDescuento() == null && this.getDescuento() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getTotal() != null && this.getTotal() != null) {equal = this.getTotal().equals(cfdi.getTotal()); }
		else if (cfdi.getTotal() == null && this.getTotal() != null) {return false;}
		else if (cfdi.getTotal() != null && this.getTotal() == null) {return false;}
		else if (cfdi.getTotal() == null && this.getTotal() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getProcesado() != null && this.getProcesado() != null) {equal = this.getProcesado().equals(cfdi.getProcesado()); }
		else if (cfdi.getProcesado() == null && this.getProcesado() != null) {return false;}
		else if (cfdi.getProcesado() != null && this.getProcesado() == null) {return false;}
		else if (cfdi.getProcesado() == null && this.getProcesado() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getErrorCode() != null && this.getErrorCode() != null) {equal = this.getErrorCode().equals(cfdi.getErrorCode()); }
		else if (cfdi.getErrorCode() == null && this.getErrorCode() != null) {return false;}
		else if (cfdi.getErrorCode() != null && this.getErrorCode() == null) {return false;}
		else if (cfdi.getErrorCode() == null && this.getErrorCode() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getErrorDesc() != null && this.getErrorDesc() != null) {equal = this.getErrorDesc().equals(cfdi.getErrorDesc()); }
		else if (cfdi.getErrorDesc() == null && this.getErrorDesc() != null) {return false;}
		else if (cfdi.getErrorDesc() != null && this.getErrorDesc() == null) {return false;}
		else if (cfdi.getErrorDesc() == null && this.getErrorDesc() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getCancelado() != null && this.getCancelado() != null) {equal = this.getCancelado().equals(cfdi.getCancelado()); }
		else if (cfdi.getCancelado() == null && this.getCancelado() != null) {return false;}
		else if (cfdi.getCancelado() != null && this.getCancelado() == null) {return false;}
		else if (cfdi.getCancelado() == null && this.getCancelado() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getObservaciones() != null && this.getObservaciones() != null) {equal = this.getObservaciones().equals(cfdi.getObservaciones()); }
		else if (cfdi.getObservaciones() == null && this.getObservaciones() != null) {return false;}
		else if (cfdi.getObservaciones() != null && this.getObservaciones() == null) {return false;}
		else if (cfdi.getObservaciones() == null && this.getObservaciones() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getFechaDeposito() != null && this.getFechaDeposito() != null) {equal = this.getFechaDeposito().equals(cfdi.getFechaDeposito()); }
		else if (cfdi.getFechaDeposito() == null && this.getFechaDeposito() != null) {return false;}
		else if (cfdi.getFechaDeposito() != null && this.getFechaDeposito() == null) {return false;}
		else if (cfdi.getFechaDeposito() == null && this.getFechaDeposito() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getPaciente() != null && this.getPaciente() != null) {equal = this.getPaciente().equals(cfdi.getPaciente()); }
		else if (cfdi.getPaciente() == null && this.getPaciente() != null) {return false;}
		else if (cfdi.getPaciente() != null && this.getPaciente() == null) {return false;}
		else if (cfdi.getPaciente() == null && this.getPaciente() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getNivel() != null && this.getNivel() != null) {equal = this.getNivel().equals(cfdi.getNivel()); }
		else if (cfdi.getNivel() == null && this.getNivel() != null) {return false;}
		else if (cfdi.getNivel() != null && this.getNivel() == null) {return false;}
		else if (cfdi.getNivel() == null && this.getNivel() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getFormaPago() != null && this.getFormaPago() != null) {equal = this.getFormaPago().equals(cfdi.getFormaPago()); }
		else if (cfdi.getFormaPago() == null && this.getFormaPago() != null) {return false;}
		else if (cfdi.getFormaPago() != null && this.getFormaPago() == null) {return false;}
		else if (cfdi.getFormaPago() == null && this.getFormaPago() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getNumeroCuenta() != null && this.getNumeroCuenta() != null) {equal = this.getNumeroCuenta().equals(cfdi.getNumeroCuenta()); }
		else if (cfdi.getNumeroCuenta() == null && this.getNumeroCuenta() != null) {return false;}
		else if (cfdi.getNumeroCuenta() != null && this.getNumeroCuenta() == null) {return false;}
		else if (cfdi.getNumeroCuenta() == null && this.getNumeroCuenta() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getUnidadGenero() != null && this.getUnidadGenero() != null) {equal = this.getUnidadGenero().equals(cfdi.getUnidadGenero()); }
		else if (cfdi.getUnidadGenero() == null && this.getUnidadGenero() != null) {return false;}
		else if (cfdi.getUnidadGenero() != null && this.getUnidadGenero() == null) {return false;}
		else if (cfdi.getUnidadGenero() == null && this.getUnidadGenero() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		if (cfdi.getCorreos() != null && this.getCorreos() != null) {equal = this.getCorreos().equals(cfdi.getCorreos()); }
		else if (cfdi.getCorreos() == null && this.getCorreos() != null) {return false;}
		else if (cfdi.getCorreos() != null && this.getCorreos() == null) {return false;}
		else if (cfdi.getCorreos() == null && this.getCorreos() == null) {equal = true;}
		if (!equal) {
			return false;
		}
		
		return true;
	}
	public DocumentTypes getDocumentTypes() {
		return documentTypes;
	}
	public void setDocumentTypes(DocumentTypes documentTypes) {
		this.documentTypes = documentTypes;
	}
	
	
	
}
