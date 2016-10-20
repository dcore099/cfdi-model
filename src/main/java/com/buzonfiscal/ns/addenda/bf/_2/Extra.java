
package com.buzonfiscal.ns.addenda.bf._2;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for ExtraType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ExtraType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;attribute name="atributo" use="required" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="valor" use="required" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="prefijo" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="sufijo" type="{http://www.w3.org/2001/XMLSchema}string" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ExtraType")
@XmlRootElement(name = "Extra")
public class Extra
    implements Serializable
{

    private final static long serialVersionUID = 1L;
    @XmlAttribute(required = true)
    protected String atributo;
    @XmlAttribute(required = true)
    protected String valor;
    @XmlAttribute
    protected String prefijo;
    @XmlAttribute
    protected String sufijo;

    /**
     * Gets the value of the atributo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAtributo() {
        return atributo;
    }

    /**
     * Sets the value of the atributo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAtributo(String value) {
        this.atributo = value;
    }

    /**
     * Gets the value of the valor property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getValor() {
        return valor;
    }

    /**
     * Sets the value of the valor property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setValor(String value) {
        this.valor = value;
    }

    /**
     * Gets the value of the prefijo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPrefijo() {
        return prefijo;
    }

    /**
     * Sets the value of the prefijo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPrefijo(String value) {
        this.prefijo = value;
    }

    /**
     * Gets the value of the sufijo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSufijo() {
        return sufijo;
    }

    /**
     * Sets the value of the sufijo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSufijo(String value) {
        this.sufijo = value;
    }

}
