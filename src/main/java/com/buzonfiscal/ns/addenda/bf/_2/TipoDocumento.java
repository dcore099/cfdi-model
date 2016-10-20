
package com.buzonfiscal.ns.addenda.bf._2;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for TipoDocumentoType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="TipoDocumentoType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;attribute name="nombreCorto" use="required" type="{http://www.buzonfiscal.com/ns/addenda/bf/2}NombreCortoType" />
 *       &lt;attribute name="descripcion" use="required" type="{http://www.buzonfiscal.com/ns/addenda/bf/2}DescripcionType" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "TipoDocumentoType")
@XmlRootElement(name = "TipoDocumento")
public class TipoDocumento
    implements Serializable
{

    private final static long serialVersionUID = 1L;
    @XmlAttribute(required = true)
    protected NombreCortoType nombreCorto;
    @XmlAttribute(required = true)
    protected DescripcionType descripcion;

    /**
     * Gets the value of the nombreCorto property.
     * 
     * @return
     *     possible object is
     *     {@link NombreCortoType }
     *     
     */
    public NombreCortoType getNombreCorto() {
        return nombreCorto;
    }

    /**
     * Sets the value of the nombreCorto property.
     * 
     * @param value
     *     allowed object is
     *     {@link NombreCortoType }
     *     
     */
    public void setNombreCorto(NombreCortoType value) {
        this.nombreCorto = value;
    }

    /**
     * Gets the value of the descripcion property.
     * 
     * @return
     *     possible object is
     *     {@link DescripcionType }
     *     
     */
    public DescripcionType getDescripcion() {
        return descripcion;
    }

    /**
     * Sets the value of the descripcion property.
     * 
     * @param value
     *     allowed object is
     *     {@link DescripcionType }
     *     
     */
    public void setDescripcion(DescripcionType value) {
        this.descripcion = value;
    }

}
