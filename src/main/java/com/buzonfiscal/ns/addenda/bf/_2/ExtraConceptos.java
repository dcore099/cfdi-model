
package com.buzonfiscal.ns.addenda.bf._2;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for ExtraConceptosType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ExtraConceptosType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;attribute name="Referencia1" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="Referencia2" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="Indicador">
 *         &lt;simpleType>
 *           &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string">
 *             &lt;minLength value="1"/>
 *             &lt;maxLength value="1"/>
 *             &lt;whiteSpace value="collapse"/>
 *             &lt;pattern value="[A-Z]"/>
 *           &lt;/restriction>
 *         &lt;/simpleType>
 *       &lt;/attribute>
 *       &lt;attribute name="descripcionIngles" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="numRemision">
 *         &lt;simpleType>
 *           &lt;restriction base="{http://www.w3.org/2001/XMLSchema}decimal">
 *             &lt;fractionDigits value="0"/>
 *             &lt;whiteSpace value="collapse"/>
 *           &lt;/restriction>
 *         &lt;/simpleType>
 *       &lt;/attribute>
 *       &lt;attribute name="cargo" type="{http://www.buzonfiscal.com/ns/addenda/bf/2}t_Importe" />
 *       &lt;attribute name="descuento" type="{http://www.buzonfiscal.com/ns/addenda/bf/2}t_Importe" />
 *       &lt;attribute name="mensaje" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="tasaImpuesto" type="{http://www.buzonfiscal.com/ns/addenda/bf/2}t_Importe" />
 *       &lt;attribute name="impuesto" type="{http://www.buzonfiscal.com/ns/addenda/bf/2}t_Importe" />
 *       &lt;attribute name="valorUnitarioMonedaExtranjera" type="{http://www.buzonfiscal.com/ns/addenda/bf/2}t_Importe" />
 *       &lt;attribute name="importeMonedaExtranjera" type="{http://www.buzonfiscal.com/ns/addenda/bf/2}t_Importe" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ExtraConceptosType")
@XmlRootElement(name = "ExtraConceptos")
public class ExtraConceptos
    implements Serializable
{

    private final static long serialVersionUID = 1L;
    @XmlAttribute(name = "Referencia1")
    protected String referencia1;
    @XmlAttribute(name = "Referencia2")
    protected String referencia2;
    @XmlAttribute(name = "Indicador")
    protected String indicador;
    @XmlAttribute
    protected String descripcionIngles;
    @XmlAttribute
    protected BigDecimal numRemision;
    @XmlAttribute
    protected BigDecimal cargo;
    @XmlAttribute
    protected BigDecimal descuento;
    @XmlAttribute
    protected String mensaje;
    @XmlAttribute
    protected BigDecimal tasaImpuesto;
    @XmlAttribute
    protected BigDecimal impuesto;
    @XmlAttribute
    protected BigDecimal valorUnitarioMonedaExtranjera;
    @XmlAttribute
    protected BigDecimal importeMonedaExtranjera;

    /**
     * Gets the value of the referencia1 property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getReferencia1() {
        return referencia1;
    }

    /**
     * Sets the value of the referencia1 property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setReferencia1(String value) {
        this.referencia1 = value;
    }

    /**
     * Gets the value of the referencia2 property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getReferencia2() {
        return referencia2;
    }

    /**
     * Sets the value of the referencia2 property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setReferencia2(String value) {
        this.referencia2 = value;
    }

    /**
     * Gets the value of the indicador property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getIndicador() {
        return indicador;
    }

    /**
     * Sets the value of the indicador property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setIndicador(String value) {
        this.indicador = value;
    }

    /**
     * Gets the value of the descripcionIngles property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDescripcionIngles() {
        return descripcionIngles;
    }

    /**
     * Sets the value of the descripcionIngles property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDescripcionIngles(String value) {
        this.descripcionIngles = value;
    }

    /**
     * Gets the value of the numRemision property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getNumRemision() {
        return numRemision;
    }

    /**
     * Sets the value of the numRemision property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setNumRemision(BigDecimal value) {
        this.numRemision = value;
    }

    /**
     * Gets the value of the cargo property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getCargo() {
        return cargo;
    }

    /**
     * Sets the value of the cargo property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setCargo(BigDecimal value) {
        this.cargo = value;
    }

    /**
     * Gets the value of the descuento property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getDescuento() {
        return descuento;
    }

    /**
     * Sets the value of the descuento property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setDescuento(BigDecimal value) {
        this.descuento = value;
    }

    /**
     * Gets the value of the mensaje property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMensaje() {
        return mensaje;
    }

    /**
     * Sets the value of the mensaje property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMensaje(String value) {
        this.mensaje = value;
    }

    /**
     * Gets the value of the tasaImpuesto property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getTasaImpuesto() {
        return tasaImpuesto;
    }

    /**
     * Sets the value of the tasaImpuesto property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setTasaImpuesto(BigDecimal value) {
        this.tasaImpuesto = value;
    }

    /**
     * Gets the value of the impuesto property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getImpuesto() {
        return impuesto;
    }

    /**
     * Sets the value of the impuesto property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setImpuesto(BigDecimal value) {
        this.impuesto = value;
    }

    /**
     * Gets the value of the valorUnitarioMonedaExtranjera property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getValorUnitarioMonedaExtranjera() {
        return valorUnitarioMonedaExtranjera;
    }

    /**
     * Sets the value of the valorUnitarioMonedaExtranjera property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setValorUnitarioMonedaExtranjera(BigDecimal value) {
        this.valorUnitarioMonedaExtranjera = value;
    }

    /**
     * Gets the value of the importeMonedaExtranjera property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getImporteMonedaExtranjera() {
        return importeMonedaExtranjera;
    }

    /**
     * Sets the value of the importeMonedaExtranjera property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setImporteMonedaExtranjera(BigDecimal value) {
        this.importeMonedaExtranjera = value;
    }

}
