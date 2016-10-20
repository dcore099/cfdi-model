
package com.buzonfiscal.ns.addenda.bf._2;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for DestinoType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="DestinoType">
 *   &lt;complexContent>
 *     &lt;extension base="{http://www.buzonfiscal.com/ns/addenda/bf/2}t_Ubicacion">
 *       &lt;attribute name="claveIdentificacion" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="rfc" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="nombre" type="{http://www.w3.org/2001/XMLSchema}string" />
 *     &lt;/extension>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "DestinoType")
@XmlRootElement(name = "Destino")
public class Destino
    extends TUbicacion
    implements Serializable
{

    private final static long serialVersionUID = 1L;
    @XmlAttribute
    protected String claveIdentificacion;
    @XmlAttribute
    protected String rfc;
    @XmlAttribute
    protected String nombre;

    /**
     * Gets the value of the claveIdentificacion property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getClaveIdentificacion() {
        return claveIdentificacion;
    }

    /**
     * Sets the value of the claveIdentificacion property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setClaveIdentificacion(String value) {
        this.claveIdentificacion = value;
    }

    /**
     * Gets the value of the rfc property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getRfc() {
        return rfc;
    }

    /**
     * Sets the value of the rfc property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setRfc(String value) {
        this.rfc = value;
    }

    /**
     * Gets the value of the nombre property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * Sets the value of the nombre property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNombre(String value) {
        this.nombre = value;
    }

}
