
package com.buzonfiscal.ns.addenda.bf._2;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for RetencionesType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="RetencionesType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}Retencion" maxOccurs="unbounded"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "RetencionesType", propOrder = {
    "retencions"
})
@XmlRootElement(name = "Retenciones")
public class Retenciones
    implements Serializable
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "Retencion", required = true)
    protected List<Retencion> retencions;

    /**
     * Gets the value of the retencions property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the retencions property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getRetencions().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Retencion }
     * 
     * 
     */
    public List<Retencion> getRetencions() {
        if (retencions == null) {
            retencions = new ArrayList<Retencion>();
        }
        return this.retencions;
    }

}
