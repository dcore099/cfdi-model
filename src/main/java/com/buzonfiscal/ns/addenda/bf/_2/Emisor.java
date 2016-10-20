
package com.buzonfiscal.ns.addenda.bf._2;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for EmisorType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="EmisorType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;attribute name="telefono" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="fax" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="emailNotificaciones" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="emailComercial" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="web" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="GLN" type="{http://www.w3.org/2001/XMLSchema}string" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "EmisorType")
@XmlRootElement(name = "Emisor")
public class Emisor
    implements Serializable
{

    private final static long serialVersionUID = 1L;
    @XmlAttribute
    protected String telefono;
    @XmlAttribute
    protected String fax;
    @XmlAttribute
    protected String emailNotificaciones;
    @XmlAttribute
    protected String emailComercial;
    @XmlAttribute
    protected String web;
    @XmlAttribute(name = "GLN")
    protected String gln;

    /**
     * Gets the value of the telefono property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * Sets the value of the telefono property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTelefono(String value) {
        this.telefono = value;
    }

    /**
     * Gets the value of the fax property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getFax() {
        return fax;
    }

    /**
     * Sets the value of the fax property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFax(String value) {
        this.fax = value;
    }

    /**
     * Gets the value of the emailNotificaciones property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getEmailNotificaciones() {
        return emailNotificaciones;
    }

    /**
     * Sets the value of the emailNotificaciones property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setEmailNotificaciones(String value) {
        this.emailNotificaciones = value;
    }

    /**
     * Gets the value of the emailComercial property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getEmailComercial() {
        return emailComercial;
    }

    /**
     * Sets the value of the emailComercial property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setEmailComercial(String value) {
        this.emailComercial = value;
    }

    /**
     * Gets the value of the web property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWeb() {
        return web;
    }

    /**
     * Sets the value of the web property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWeb(String value) {
        this.web = value;
    }

    /**
     * Gets the value of the gln property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getGLN() {
        return gln;
    }

    /**
     * Sets the value of the gln property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setGLN(String value) {
        this.gln = value;
    }

}
