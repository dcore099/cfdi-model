
package com.buzonfiscal.ns.addenda.bf._2;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for ReceptorType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ReceptorType">
 *   &lt;complexContent>
 *     &lt;extension base="{http://www.buzonfiscal.com/ns/addenda/bf/2}ReceptorType">
 *       &lt;redefine>
 *         &lt;complexType name="ReceptorType">
 *           &lt;complexContent>
 *             &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *               &lt;attribute name="telefono" type="{http://www.w3.org/2001/XMLSchema}string" />
 *               &lt;attribute name="fax" type="{http://www.w3.org/2001/XMLSchema}string" />
 *               &lt;attribute name="email" type="{http://www.w3.org/2001/XMLSchema}string" />
 *               &lt;attribute name="web" type="{http://www.w3.org/2001/XMLSchema}string" />
 *               &lt;attribute name="GLN" type="{http://www.w3.org/2001/XMLSchema}string" />
 *               &lt;attribute name="noCliente" type="{http://www.w3.org/2001/XMLSchema}string" />
 *               &lt;attribute name="noProveedor" type="{http://www.w3.org/2001/XMLSchema}string" />
 *             &lt;/restriction>
 *           &lt;/complexContent>
 *         &lt;/complexType>
 *       &lt;/redefine>
 *       &lt;attribute name="nim" type="{http://www.w3.org/2001/XMLSchema}string" />
 *     &lt;/extension>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ReceptorType")
@XmlRootElement(name = "Receptor")
public class Receptor
    extends OriginalReceptorType
    implements Serializable
{

    private final static long serialVersionUID = 1L;
    @XmlAttribute
    protected String nim;

    /**
     * Gets the value of the nim property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNim() {
        return nim;
    }

    /**
     * Sets the value of the nim property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNim(String value) {
        this.nim = value;
    }

}
