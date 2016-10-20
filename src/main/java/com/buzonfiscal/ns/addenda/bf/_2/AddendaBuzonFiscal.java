
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
 * <p>Java class for AddendaBuzonFiscalType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="AddendaBuzonFiscalType">
 *   &lt;complexContent>
 *     &lt;extension base="{http://www.buzonfiscal.com/ns/addenda/bf/2}AddendaBuzonFiscalType">
 *       &lt;redefine>
 *         &lt;complexType name="AddendaBuzonFiscalType">
 *           &lt;complexContent>
 *             &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *               &lt;sequence>
 *                 &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}Emisor" minOccurs="0"/>
 *                 &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}Remitente" minOccurs="0"/>
 *                 &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}ExpedidoEn" minOccurs="0"/>
 *                 &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}Receptor" minOccurs="0"/>
 *                 &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}Destino" minOccurs="0"/>
 *                 &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}TipoDocumento"/>
 *                 &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}CFD" minOccurs="0"/>
 *                 &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}Retenciones" minOccurs="0"/>
 *                 &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}Extra" maxOccurs="unbounded" minOccurs="0"/>
 *               &lt;/sequence>
 *               &lt;attribute name="version" use="required" type="{http://www.w3.org/2001/XMLSchema}decimal" fixed="2.0" />
 *             &lt;/restriction>
 *           &lt;/complexContent>
 *         &lt;/complexType>
 *       &lt;/redefine>
 *       &lt;sequence>
 *         &lt;element ref="{http://www.buzonfiscal.com/ns/addenda/bf/2}ExtraConceptos" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/extension>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "AddendaBuzonFiscalType", propOrder = {
    "extraConceptos"
})
@XmlRootElement(name = "AddendaBuzonFiscal")
public class AddendaBuzonFiscal
    extends OriginalAddendaBuzonFiscalType
    implements Serializable
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "ExtraConceptos")
    protected List<ExtraConceptos> extraConceptos;

    /**
     * Gets the value of the extraConceptos property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the extraConceptos property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getExtraConceptos().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link ExtraConceptos }
     * 
     * 
     */
    public List<ExtraConceptos> getExtraConceptos() {
        if (extraConceptos == null) {
            extraConceptos = new ArrayList<ExtraConceptos>();
        }
        return this.extraConceptos;
    }

}
