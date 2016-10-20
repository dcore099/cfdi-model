
package com.buzonfiscal.ns.addenda.bf._2;

import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for NombreCortoType.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="NombreCortoType">
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string">
 *     &lt;enumeration value="FAC"/>
 *     &lt;enumeration value="NCR"/>
 *     &lt;enumeration value="NCA"/>
 *     &lt;enumeration value="RHO"/>
 *     &lt;enumeration value="RAR"/>
 *     &lt;enumeration value="CPO"/>
 *     &lt;enumeration value="CSI"/>
 *     &lt;enumeration value="DDE"/>
 *     &lt;enumeration value="SP"/>
 *   &lt;/restriction>
 * &lt;/simpleType>
 * </pre>
 * 
 */
@XmlType(name = "NombreCortoType")
@XmlEnum
public enum NombreCortoType {

    FAC,
    NCR,
    NCA,
    RHO,
    RAR,
    CPO,
    CSI,
    DDE,
    SP;

    public String value() {
        return name();
    }

    public static NombreCortoType fromValue(String v) {
        return valueOf(v);
    }

}
