
package com.buzonfiscal.ns.addenda.bf._2;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Calendar;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import org.w3._2001.xmlschema.Adapter1;


/**
 * <p>Java class for CFDType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="CFDType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;attribute name="vigente" type="{http://www.w3.org/2001/XMLSchema}boolean" />
 *       &lt;attribute name="fechaEnvio" type="{http://www.w3.org/2001/XMLSchema}dateTime" />
 *       &lt;attribute name="fechaCancelacion" type="{http://www.w3.org/2001/XMLSchema}dateTime" />
 *       &lt;attribute name="fechaValidacion" type="{http://www.w3.org/2001/XMLSchema}dateTime" />
 *       &lt;attribute name="valido" type="{http://www.w3.org/2001/XMLSchema}boolean" />
 *       &lt;attribute name="razonNoValido" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="porcentajeDescuento" type="{http://www.buzonfiscal.com/ns/addenda/bf/2}t_Importe" />
 *       &lt;attribute name="noOrden" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="comprador" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="tipoMoneda" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="tipoCambio">
 *         &lt;simpleType>
 *           &lt;restriction base="{http://www.w3.org/2001/XMLSchema}decimal">
 *             &lt;fractionDigits value="4"/>
 *             &lt;whiteSpace value="collapse"/>
 *           &lt;/restriction>
 *         &lt;/simpleType>
 *       &lt;/attribute>
 *       &lt;attribute name="fechaTipoCambio" type="{http://www.w3.org/2001/XMLSchema}dateTime" />
 *       &lt;attribute name="agenteVentas" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="observaciones" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="totalConLetra" type="{http://www.w3.org/2001/XMLSchema}string" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "")
@XmlSeeAlso({
    CFD.class
})
public class OriginalCFDType
    implements Serializable
{

    private final static long serialVersionUID = 1L;
    @XmlAttribute
    protected Boolean vigente;
    @XmlAttribute
    @XmlJavaTypeAdapter(Adapter1 .class)
    @XmlSchemaType(name = "dateTime")
    protected Calendar fechaEnvio;
    @XmlAttribute
    @XmlJavaTypeAdapter(Adapter1 .class)
    @XmlSchemaType(name = "dateTime")
    protected Calendar fechaCancelacion;
    @XmlAttribute
    @XmlJavaTypeAdapter(Adapter1 .class)
    @XmlSchemaType(name = "dateTime")
    protected Calendar fechaValidacion;
    @XmlAttribute
    protected Boolean valido;
    @XmlAttribute
    protected String razonNoValido;
    @XmlAttribute
    protected BigDecimal porcentajeDescuento;
    @XmlAttribute
    protected String noOrden;
    @XmlAttribute
    protected String comprador;
    @XmlAttribute
    protected String tipoMoneda;
    @XmlAttribute
    protected BigDecimal tipoCambio;
    @XmlAttribute
    @XmlJavaTypeAdapter(Adapter1 .class)
    @XmlSchemaType(name = "dateTime")
    protected Calendar fechaTipoCambio;
    @XmlAttribute
    protected String agenteVentas;
    @XmlAttribute
    protected String observaciones;
    @XmlAttribute
    protected String totalConLetra;

    /**
     * Gets the value of the vigente property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    public Boolean isVigente() {
        return vigente;
    }

    /**
     * Sets the value of the vigente property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    public void setVigente(Boolean value) {
        this.vigente = value;
    }

    /**
     * Gets the value of the fechaEnvio property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public Calendar getFechaEnvio() {
        return fechaEnvio;
    }

    /**
     * Sets the value of the fechaEnvio property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFechaEnvio(Calendar value) {
        this.fechaEnvio = value;
    }

    /**
     * Gets the value of the fechaCancelacion property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public Calendar getFechaCancelacion() {
        return fechaCancelacion;
    }

    /**
     * Sets the value of the fechaCancelacion property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFechaCancelacion(Calendar value) {
        this.fechaCancelacion = value;
    }

    /**
     * Gets the value of the fechaValidacion property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public Calendar getFechaValidacion() {
        return fechaValidacion;
    }

    /**
     * Sets the value of the fechaValidacion property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFechaValidacion(Calendar value) {
        this.fechaValidacion = value;
    }

    /**
     * Gets the value of the valido property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    public Boolean isValido() {
        return valido;
    }

    /**
     * Sets the value of the valido property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    public void setValido(Boolean value) {
        this.valido = value;
    }

    /**
     * Gets the value of the razonNoValido property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getRazonNoValido() {
        return razonNoValido;
    }

    /**
     * Sets the value of the razonNoValido property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setRazonNoValido(String value) {
        this.razonNoValido = value;
    }

    /**
     * Gets the value of the porcentajeDescuento property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getPorcentajeDescuento() {
        return porcentajeDescuento;
    }

    /**
     * Sets the value of the porcentajeDescuento property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setPorcentajeDescuento(BigDecimal value) {
        this.porcentajeDescuento = value;
    }

    /**
     * Gets the value of the noOrden property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNoOrden() {
        return noOrden;
    }

    /**
     * Sets the value of the noOrden property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNoOrden(String value) {
        this.noOrden = value;
    }

    /**
     * Gets the value of the comprador property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getComprador() {
        return comprador;
    }

    /**
     * Sets the value of the comprador property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setComprador(String value) {
        this.comprador = value;
    }

    /**
     * Gets the value of the tipoMoneda property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTipoMoneda() {
        return tipoMoneda;
    }

    /**
     * Sets the value of the tipoMoneda property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTipoMoneda(String value) {
        this.tipoMoneda = value;
    }

    /**
     * Gets the value of the tipoCambio property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getTipoCambio() {
        return tipoCambio;
    }

    /**
     * Sets the value of the tipoCambio property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setTipoCambio(BigDecimal value) {
        this.tipoCambio = value;
    }

    /**
     * Gets the value of the fechaTipoCambio property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public Calendar getFechaTipoCambio() {
        return fechaTipoCambio;
    }

    /**
     * Sets the value of the fechaTipoCambio property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFechaTipoCambio(Calendar value) {
        this.fechaTipoCambio = value;
    }

    /**
     * Gets the value of the agenteVentas property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAgenteVentas() {
        return agenteVentas;
    }

    /**
     * Sets the value of the agenteVentas property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAgenteVentas(String value) {
        this.agenteVentas = value;
    }

    /**
     * Gets the value of the observaciones property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getObservaciones() {
        return observaciones;
    }

    /**
     * Sets the value of the observaciones property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setObservaciones(String value) {
        this.observaciones = value;
    }

    /**
     * Gets the value of the totalConLetra property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTotalConLetra() {
        return totalConLetra;
    }

    /**
     * Sets the value of the totalConLetra property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTotalConLetra(String value) {
        this.totalConLetra = value;
    }

}
