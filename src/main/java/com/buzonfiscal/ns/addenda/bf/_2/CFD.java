
package com.buzonfiscal.ns.addenda.bf._2;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for CFDType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="CFDType">
 *   &lt;complexContent>
 *     &lt;extension base="{http://www.buzonfiscal.com/ns/addenda/bf/2}CFDType">
 *       &lt;redefine>
 *         &lt;complexType name="CFDType">
 *           &lt;complexContent>
 *             &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *               &lt;attribute name="vigente" type="{http://www.w3.org/2001/XMLSchema}boolean" />
 *               &lt;attribute name="fechaEnvio" type="{http://www.w3.org/2001/XMLSchema}dateTime" />
 *               &lt;attribute name="fechaCancelacion" type="{http://www.w3.org/2001/XMLSchema}dateTime" />
 *               &lt;attribute name="fechaValidacion" type="{http://www.w3.org/2001/XMLSchema}dateTime" />
 *               &lt;attribute name="valido" type="{http://www.w3.org/2001/XMLSchema}boolean" />
 *               &lt;attribute name="razonNoValido" type="{http://www.w3.org/2001/XMLSchema}string" />
 *               &lt;attribute name="porcentajeDescuento" type="{http://www.buzonfiscal.com/ns/addenda/bf/2}t_Importe" />
 *               &lt;attribute name="noOrden" type="{http://www.w3.org/2001/XMLSchema}string" />
 *               &lt;attribute name="comprador" type="{http://www.w3.org/2001/XMLSchema}string" />
 *               &lt;attribute name="tipoMoneda" type="{http://www.w3.org/2001/XMLSchema}string" />
 *               &lt;attribute name="tipoCambio">
 *                 &lt;simpleType>
 *                   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}decimal">
 *                     &lt;fractionDigits value="4"/>
 *                     &lt;whiteSpace value="collapse"/>
 *                   &lt;/restriction>
 *                 &lt;/simpleType>
 *               &lt;/attribute>
 *               &lt;attribute name="fechaTipoCambio" type="{http://www.w3.org/2001/XMLSchema}dateTime" />
 *               &lt;attribute name="agenteVentas" type="{http://www.w3.org/2001/XMLSchema}string" />
 *               &lt;attribute name="observaciones" type="{http://www.w3.org/2001/XMLSchema}string" />
 *               &lt;attribute name="totalConLetra" type="{http://www.w3.org/2001/XMLSchema}string" />
 *             &lt;/restriction>
 *           &lt;/complexContent>
 *         &lt;/complexType>
 *       &lt;/redefine>
 *       &lt;sequence>
 *         &lt;element name="InformacionAduanera" type="{http://www.buzonfiscal.com/ns/addenda/bf/2}t_InformacionAduanera" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *       &lt;attribute name="refID" type="{http://www.buzonfiscal.com/ns/addenda/bf/2}refIDType" />
 *       &lt;attribute name="embarque" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="fob" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="cargos" type="{http://www.buzonfiscal.com/ns/addenda/bf/2}t_Importe" />
 *     &lt;/extension>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "CFDType", propOrder = {
    "informacionAduaneras"
})
@XmlRootElement(name = "CFD")
public class CFD
    extends OriginalCFDType
    implements Serializable
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "InformacionAduanera")
    protected List<TInformacionAduanera> informacionAduaneras;
    @XmlAttribute
    protected String refID;
    @XmlAttribute
    protected String embarque;
    @XmlAttribute
    protected String fob;
    @XmlAttribute
    protected BigDecimal cargos;

    /**
     * Gets the value of the informacionAduaneras property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the informacionAduaneras property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getInformacionAduaneras().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link TInformacionAduanera }
     * 
     * 
     */
    public List<TInformacionAduanera> getInformacionAduaneras() {
        if (informacionAduaneras == null) {
            informacionAduaneras = new ArrayList<TInformacionAduanera>();
        }
        return this.informacionAduaneras;
    }

    /**
     * Gets the value of the refID property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getRefID() {
        return refID;
    }

    /**
     * Sets the value of the refID property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setRefID(String value) {
        this.refID = value;
    }

    /**
     * Gets the value of the embarque property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getEmbarque() {
        return embarque;
    }

    /**
     * Sets the value of the embarque property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setEmbarque(String value) {
        this.embarque = value;
    }

    /**
     * Gets the value of the fob property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getFob() {
        return fob;
    }

    /**
     * Sets the value of the fob property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFob(String value) {
        this.fob = value;
    }

    /**
     * Gets the value of the cargos property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getCargos() {
        return cargos;
    }

    /**
     * Sets the value of the cargos property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setCargos(BigDecimal value) {
        this.cargos = value;
    }

}
