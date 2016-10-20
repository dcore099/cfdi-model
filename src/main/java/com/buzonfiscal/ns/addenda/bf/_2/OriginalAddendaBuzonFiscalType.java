
package com.buzonfiscal.ns.addenda.bf._2;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for AddendaBuzonFiscalType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="AddendaBuzonFiscalType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}Emisor" minOccurs="0"/>
 *         &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}Remitente" minOccurs="0"/>
 *         &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}ExpedidoEn" minOccurs="0"/>
 *         &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}Receptor" minOccurs="0"/>
 *         &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}Destino" minOccurs="0"/>
 *         &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}TipoDocumento"/>
 *         &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}CFD" minOccurs="0"/>
 *         &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}Retenciones" minOccurs="0"/>
 *         &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}Extra" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *       &lt;attribute name="version" use="required" type="{http://www.w3.org/2001/XMLSchema}decimal" fixed="2.0" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "emisor",
    "remitente",
    "expedidoEn",
    "receptor",
    "destino",
    "tipoDocumento",
    "cfd",
    "retenciones",
    "extras"
})
@XmlSeeAlso({
    AddendaBuzonFiscal.class
})
public class OriginalAddendaBuzonFiscalType
    implements Serializable
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "Emisor")
    protected Emisor emisor;
    @XmlElement(name = "Remitente")
    protected Remitente remitente;
    @XmlElement(name = "ExpedidoEn")
    protected ExpedidoEn expedidoEn;
    @XmlElement(name = "Receptor")
    protected Receptor receptor;
    @XmlElement(name = "Destino")
    protected Destino destino;
    @XmlElement(name = "TipoDocumento", required = true)
    protected TipoDocumento tipoDocumento;
    @XmlElement(name = "CFD")
    protected CFD cfd;
    @XmlElement(name = "Retenciones")
    protected Retenciones retenciones;
    @XmlElement(name = "Extra")
    protected List<Extra> extras;
    /**
     * 
     * 
     */
    @XmlAttribute(required = true)
    public final static BigDecimal VERSION = new BigDecimal("2.0");

    /**
     * Gets the value of the emisor property.
     * 
     * @return
     *     possible object is
     *     {@link Emisor }
     *     
     */
    public Emisor getEmisor() {
        return emisor;
    }

    /**
     * Sets the value of the emisor property.
     * 
     * @param value
     *     allowed object is
     *     {@link Emisor }
     *     
     */
    public void setEmisor(Emisor value) {
        this.emisor = value;
    }

    /**
     * Gets the value of the remitente property.
     * 
     * @return
     *     possible object is
     *     {@link Remitente }
     *     
     */
    public Remitente getRemitente() {
        return remitente;
    }

    /**
     * Sets the value of the remitente property.
     * 
     * @param value
     *     allowed object is
     *     {@link Remitente }
     *     
     */
    public void setRemitente(Remitente value) {
        this.remitente = value;
    }

    /**
     * Gets the value of the expedidoEn property.
     * 
     * @return
     *     possible object is
     *     {@link ExpedidoEn }
     *     
     */
    public ExpedidoEn getExpedidoEn() {
        return expedidoEn;
    }

    /**
     * Sets the value of the expedidoEn property.
     * 
     * @param value
     *     allowed object is
     *     {@link ExpedidoEn }
     *     
     */
    public void setExpedidoEn(ExpedidoEn value) {
        this.expedidoEn = value;
    }

    /**
     * Gets the value of the receptor property.
     * 
     * @return
     *     possible object is
     *     {@link Receptor }
     *     
     */
    public Receptor getReceptor() {
        return receptor;
    }

    /**
     * Sets the value of the receptor property.
     * 
     * @param value
     *     allowed object is
     *     {@link Receptor }
     *     
     */
    public void setReceptor(Receptor value) {
        this.receptor = value;
    }

    /**
     * Gets the value of the destino property.
     * 
     * @return
     *     possible object is
     *     {@link Destino }
     *     
     */
    public Destino getDestino() {
        return destino;
    }

    /**
     * Sets the value of the destino property.
     * 
     * @param value
     *     allowed object is
     *     {@link Destino }
     *     
     */
    public void setDestino(Destino value) {
        this.destino = value;
    }

    /**
     * Gets the value of the tipoDocumento property.
     * 
     * @return
     *     possible object is
     *     {@link TipoDocumento }
     *     
     */
    public TipoDocumento getTipoDocumento() {
        return tipoDocumento;
    }

    /**
     * Sets the value of the tipoDocumento property.
     * 
     * @param value
     *     allowed object is
     *     {@link TipoDocumento }
     *     
     */
    public void setTipoDocumento(TipoDocumento value) {
        this.tipoDocumento = value;
    }

    /**
     * Gets the value of the cfd property.
     * 
     * @return
     *     possible object is
     *     {@link CFD }
     *     
     */
    public CFD getCFD() {
        return cfd;
    }

    /**
     * Sets the value of the cfd property.
     * 
     * @param value
     *     allowed object is
     *     {@link CFD }
     *     
     */
    public void setCFD(CFD value) {
        this.cfd = value;
    }

    /**
     * Gets the value of the retenciones property.
     * 
     * @return
     *     possible object is
     *     {@link Retenciones }
     *     
     */
    public Retenciones getRetenciones() {
        return retenciones;
    }

    /**
     * Sets the value of the retenciones property.
     * 
     * @param value
     *     allowed object is
     *     {@link Retenciones }
     *     
     */
    public void setRetenciones(Retenciones value) {
        this.retenciones = value;
    }

    /**
     * Gets the value of the extras property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the extras property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getExtras().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Extra }
     * 
     * 
     */
    public List<Extra> getExtras() {
        if (extras == null) {
            extras = new ArrayList<Extra>();
        }
        return this.extras;
    }

}
