
package com.buzonfiscal.ns.addenda.bf._2;

import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for DescripcionType.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="DescripcionType">
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string">
 *     &lt;enumeration value="Factura"/>
 *     &lt;enumeration value="Nota de Credito"/>
 *     &lt;enumeration value="Nota de Cargo"/>
 *     &lt;enumeration value="Recibo de Honorarios"/>
 *     &lt;enumeration value="Recibo de Arrendamiento"/>
 *     &lt;enumeration value="Carta Porte"/>
 *     &lt;enumeration value="Comprobante Simplificado"/>
 *     &lt;enumeration value="Donativo Deducible"/>
 *     &lt;enumeration value="Estado de Cuenta"/>
 *     &lt;enumeration value="Comprobante Fiscal Digital para el Sector Primario"/>
 *   &lt;/restriction>
 * &lt;/simpleType>
 * </pre>
 * 
 */
@XmlType(name = "DescripcionType")
@XmlEnum
public enum DescripcionType {

    @XmlEnumValue("Factura")
    FACTURA("Factura"),
    @XmlEnumValue("Nota de Credito")
    NOTA_DE_CREDITO("Nota de Credito"),
    @XmlEnumValue("Nota de Cargo")
    NOTA_DE_CARGO("Nota de Cargo"),
    @XmlEnumValue("Recibo de Honorarios")
    RECIBO_DE_HONORARIOS("Recibo de Honorarios"),
    @XmlEnumValue("Recibo de Arrendamiento")
    RECIBO_DE_ARRENDAMIENTO("Recibo de Arrendamiento"),
    @XmlEnumValue("Carta Porte")
    CARTA_PORTE("Carta Porte"),
    @XmlEnumValue("Comprobante Simplificado")
    COMPROBANTE_SIMPLIFICADO("Comprobante Simplificado"),
    @XmlEnumValue("Donativo Deducible")
    DONATIVO_DEDUCIBLE("Donativo Deducible"),
    @XmlEnumValue("Estado de Cuenta")
    ESTADO_DE_CUENTA("Estado de Cuenta"),
    @XmlEnumValue("Comprobante Fiscal Digital para el Sector Primario")
    COMPROBANTE_FISCAL_DIGITAL_PARA_EL_SECTOR_PRIMARIO("Comprobante Fiscal Digital para el Sector Primario");
    private final String value;

    DescripcionType(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static DescripcionType fromValue(String v) {
        for (DescripcionType c: DescripcionType.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }

}
