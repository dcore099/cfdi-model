<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:jaxb="http://java.sun.com/xml/ns/jaxb" xmlns:xjc="http://java.sun.com/xml/ns/jaxb/xjc" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes" xmlns:ecc="http://www.sat.gob.mx/ecc" xmlns:psgecfd="http://www.sat.gob.mx/psgecfd" xmlns:bf2="http://www.buzonfiscal.com/ns/addenda/bf/2" xmlns:cf2="http://www.sat.gob.mx/cfd/2" version="2.0">
  <xsl:variable name="fo:layout-master-set">
    <fo:layout-master-set>
      <fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.1in" margin-right="0.1in">
        <fo:region-body margin-top="0.1in" margin-bottom="0.5in"/>
      </fo:simple-page-master>
    </fo:layout-master-set>
  </xsl:variable>
  <xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/xml"/>
  <xsl:template match="/cf2:Comprobante">
    <fo:root>
      <xsl:copy-of select="$fo:layout-master-set"/>
      <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
        <fo:flow flow-name="xsl-region-body">
          <fo:block background-color="white">
            <fo:table start-indent="((8.5in - 0.1in - 0.1in) - 170mm) div 2" end-indent="((8.5in - 0.1in - 0.1in) - 170mm) div 2" border-bottom-color="#AAC2CE" border-left-color="#AAC2CE" border-right-color="#AAC2CE" border-top-color="#AAC2CE" height="792px" padding="15" text-align="center" width="612px" space-before.optimum="0pt" space-after.optimum="0pt" table-layout="fixed">
              <fo:table-column/>
              <fo:table-body>
                <fo:table-row border-bottom-color="#FFFFFF" border-left-color="#FFFFFF" border-right-color="#FFFFFF" border-top-color="#FFFFFF">
                  <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" padding-bottom="15px" padding-left="15px" padding-right="15px" padding-top="15px" border-style="none" border-width="0pt" border-color="white" padding-start="15pt" padding-end="15pt" padding-before="15pt" padding-after="15pt" display-align="before" text-align="start">
                    <fo:block>
                      <fo:table start-indent="((8.5in - 0.1in - 0.1in) - 582px) div 2" end-indent="((8.5in - 0.1in - 0.1in) - 582px) div 2" border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" padding="0" text-align="center" width="200mm" space-before.optimum="1pt" space-after.optimum="2pt" table-layout="fixed">
                        <fo:table-column column-width="6mm"/>
                        <fo:table-column column-width="64mm"/>
                        <fo:table-column column-width="40mm"/>
                        <fo:table-column column-width="10mm"/>
                        <fo:table-column column-width="4mm"/>
                        <fo:table-column column-width="12mm"/>
                        <fo:table-column column-width="10mm"/>
                        <fo:table-column column-width="7mm"/>
                        <fo:table-column column-width="25mm"/>
                        <fo:table-column column-width="18mm"/>
                        <fo:table-column column-width="4mm"/>
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="1mm" padding-bottom="5px" padding-left="0px" padding-right="0px" padding-top="10px" border-style="solid" border-width="0pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start">
                              <fo:block>
                                <fo:inline color="#000000" font-size="13pt" font-weight="bold">

																		 Comprobante Fiscal Digital

                                                                    </fo:inline>
                                <fo:inline color="#000000" font-size="10pt" font-weight="bold">

																		para el Sector Primario

                                                                    </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="1mm" padding-bottom="5px" padding-left="0px" padding-right="0px" padding-top="10px" border-style="solid" border-width="0pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="8" display-align="center" text-align="start"/>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" height="1mm" border-style="none" border-width="0pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" number-columns-spanned="3" text-align="center">
                              <fo:block>
                                <fo:external-graphic content-height="4px" content-width="295px" height="4pt" width="295pt" space-before.optimum="0pt" space-after.optimum="0pt">
                                  <xsl:attribute name="src">url('<xsl:text disable-output-escaping="yes">userstyle/barra.jpg</xsl:text>')</xsl:attribute>
                                </fo:external-graphic>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="0px" border-style="none" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="8" display-align="center" text-align="start">
                              <fo:block/>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" height="1mm" border-style="none" border-width="0pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" number-columns-spanned="11" text-align="left">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="bold"> 

																	Lugar y Fecha de Expedición: 

                                                                    </fo:inline>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal"><xsl:if test="./cf2:Emisor/cf2:DomicilioFiscal/@municipio"><xsl:value-of select="concat( ./cf2:Emisor/cf2:DomicilioFiscal/@municipio, ', ' )"/></xsl:if><xsl:if test="./cf2:Emisor/cf2:DomicilioFiscal/@estado"><xsl:value-of select="concat( ./cf2:Emisor/cf2:DomicilioFiscal/@estado, '  ' )"/></xsl:if>

																			el

                                                                     </fo:inline>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">
                                  <xsl:if test="./@fecha">
                                    <xsl:call-template name="formateaFecha">
                                      <xsl:with-param name="sep" select="'/'"/>
                                      <xsl:with-param name="valor" select="./@fecha"/>
                                    </xsl:call-template>
                                  </xsl:if>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="11" display-align="center" text-align="start">
                              <fo:block/>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="10px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="1mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="10px" border-style="none" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="left">
                              <fo:block>
                                <fo:inline color="#000000" font-size="8.5pt" font-weight="bold">

																		Folio:

                                                                    </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="1mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="10px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="4" text-align="left">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="1mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="10px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start" number-columns-spanned="5">
                              <fo:block>
                                <fo:inline color="#000000" font-size="8.5pt" font-weight="bold">

																		Certificado de Sello Digital Sector Primario: 

                                                                    </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="10px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="solid" border-top-width="0.1mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="none" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center">
                              <fo:block>
                                <fo:inline color="#cc3333" font-size="9.0pt" font-weight="bold">

																				 <xsl:value-of select="./@serie"/>

                                                                            </fo:inline>
                                <fo:inline color="#cc3333" font-size="9.0pt" font-weight="bold">

																			 <xsl:value-of select="./@folio"/>

                                                                        </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="1mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="10px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="4" text-align="left">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="solid" border-top-width="0.1mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center" number-columns-spanned="5">
                              <fo:block>
                                <fo:inline color="#cc3333" font-size="9.0pt" font-family="Courier">
                                  <xsl:value-of select="./@noCertificado"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="10px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="1mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="10px" border-style="none" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="left">
                              <fo:block>
                                <fo:inline color="#000000" font-size="8.5pt" font-weight="bold">

																		Año de Aprobación:

                                                                    </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="1mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="10px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="4" text-align="left">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="1mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="10px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start" number-columns-spanned="5">
                              <fo:block>
                                <fo:inline color="#000000" font-size="8.5pt" font-weight="bold">

																		Número de Aprobación: 

                                                                    </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="10px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="solid" border-top-width="0.1mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="none" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center">
                              <fo:block>
                                <fo:inline color="#000000" font-size="9.0pt" font-weight="bold">
                                  <xsl:value-of select="./@anoAprobacion"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="1mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="10px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="4" text-align="left">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="solid" border-top-width="0.1mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center" number-columns-spanned="5">
                              <fo:block>
                                <fo:inline color="#000000" font-size="9.0pt">
                                  <xsl:value-of select="./@noAprobacion"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="10px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="11" display-align="center" text-align="start">
                              <fo:block/>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="10px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start" number-rows-spanned="11">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" height="0mm" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="none" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="left" number-columns-spanned="3">
                              <fo:block>
                                <fo:inline color="#000000" font-size="8.5pt" font-weight="bold">

																				 Productor:

                                                                            </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="solid" border-top-width="0.1mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center" number-columns-spanned="7">
                              <fo:block/>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="none" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="left" number-columns-spanned="2">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">

																				 RFC:

                                                                            </fo:inline>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">
                                  <xsl:value-of select="./cf2:Emisor/@rfc"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center" number-rows-spanned="6">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center" number-columns-spanned="7">
                              <fo:block/>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="none" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="left" number-columns-spanned="2">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">

																				 Nombre: 

                                                                            </fo:inline>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">
                                  <xsl:value-of select="./cf2:Emisor/@nombre"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center" number-columns-spanned="7">
                              <fo:block/>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="none" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="left" number-columns-spanned="2">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">

																				Domicilio: 

                                                                            </fo:inline>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">
                                  <xsl:value-of select="./cf2:Emisor/cf2:DomicilioFiscal/@calle"/>
                                  <xsl:if test="./cf2:Emisor/cf2:DomicilioFiscal/@noExterior">  No. <xsl:value-of select="./cf2:Emisor/cf2:DomicilioFiscal/@noExterior"/></xsl:if>
                                  <xsl:if test="./cf2:Emisor/cf2:DomicilioFiscal/@noInterior"> - <xsl:value-of select="./cf2:Emisor/cf2:DomicilioFiscal/@noInterior"/></xsl:if>
                                  <xsl:if test="./cf2:Emisor/cf2:DomicilioFiscal/@referencia"> <xsl:value-of select="./cf2:Emisor/cf2:DomicilioFiscal/@referencia"/></xsl:if>
                                  <xsl:if test="./cf2:Emisor/cf2:DomicilioFiscal/@colonia"> <xsl:value-of select="./cf2:Emisor/cf2:DomicilioFiscal/@colonia"/></xsl:if>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center" number-columns-spanned="7">
                              <fo:block/>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="none" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="left" number-columns-spanned="2">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">

																				Ciudad:

                                                                            </fo:inline>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal"><xsl:if test="./cf2:Emisor/cf2:DomicilioFiscal/@localidad"><xsl:value-of select="./cf2:Emisor/cf2:DomicilioFiscal/@localidad"/> </xsl:if><xsl:if test="./cf2:Emisor/cf2:DomicilioFiscal/@municipio"><xsl:value-of select="concat( ./cf2:Emisor/cf2:DomicilioFiscal/@municipio, ', ' )"/></xsl:if><xsl:if test="./cf2:Emisor/cf2:DomicilioFiscal/@estado"><xsl:value-of select="concat( ./cf2:Emisor/cf2:DomicilioFiscal/@estado, ' ' )"/></xsl:if>

																				C.P. <xsl:value-of select="./cf2:Emisor/cf2:DomicilioFiscal/@codigoPostal"/> 

																				<xsl:value-of select="./cf2:Emisor/cf2:DomicilioFiscal/@pais"/>

                                                                            </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center" number-columns-spanned="5">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center">
                              <fo:block/>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" height="0mm" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="none" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="left" number-columns-spanned="2">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center" number-columns-spanned="5">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="bold">
                                  <xsl:value-of select="./cf2:Emisor/@nombre"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center">
                              <fo:block/>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="none" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="left" number-columns-spanned="2">
                              <fo:block>
                                <fo:inline color="#000000" font-size="8.5pt" font-weight="bold">

																				 Receptor:

                                                                            </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center" number-columns-spanned="5">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">

																				Productor Registrado

                                                                            </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center">
                              <fo:block/>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="none" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="left" number-columns-spanned="2">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">

																				 RFC:

                                                                            </fo:inline>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">
                                  <xsl:value-of select="./cf2:Receptor/@rfc"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center" number-rows-spanned="6">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center">
                              <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="1px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center" number-columns-spanned="5">
                              <fo:block line-height="6.8pt">
                                <fo:inline color="#000000" font-size="6.0pt" font-weight="normal">

																				 Acepto de total conformidad y bajo protesta de decir verdad que los datos asentados son verídicos

                                                                            </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="center">
                              <fo:block/>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="none" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="left" number-columns-spanned="2">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">

																				 Nombre: 

                                                                            </fo:inline>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">
                                  <xsl:value-of select="./cf2:Receptor/@nombre"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="justify" number-columns-spanned="7" number-rows-spanned="3" line-height="7.5pt">
                              <fo:block line-height="7.5pt">
                                <fo:inline color="#000000" font-size="6.8pt" font-weight="normal">

																				 La utilización de datos falsos o comprobantes falsos en materia fiscal puede constituir un delito de defraudación fiscal de acuerdo con el artículo 108 del Código Fiscal de la Federación.

                                                                            </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="none" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="left" number-columns-spanned="2">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">

																				Domicilio: 

                                                                            </fo:inline>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">
                                  <xsl:value-of select="./cf2:Receptor/cf2:Domicilio/@calle"/>
                                  <xsl:if test="./cf2:Receptor/cf2:Domicilio/@noExterior">

																						  No. <xsl:value-of select="./cf2:Receptor/cf2:Domicilio/@noExterior"/>

																					</xsl:if>
                                  <xsl:if test="./cf2:Receptor/cf2:Domicilio/@noInterior"> - <xsl:value-of select="./cf2:Receptor/cf2:Domicilio/@noInterior"/></xsl:if>
                                  <xsl:if test="./cf2:Receptor/cf2:Domicilio/@referencia"> <xsl:value-of select="./cf2:Receptor/cf2:Domicilio/@referencia"/></xsl:if>
                                  <xsl:if test="./cf2:Receptor/cf2:Domicilio/@colonia"> <xsl:value-of select="./cf2:Receptor/cf2:Domicilio/@colonia"/></xsl:if>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" height="0mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="0px" border-style="none" border-width="0pt" border-color="#999999" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="left" number-columns-spanned="2">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">

																				Ciudad: 

                                                                            </fo:inline>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal"><xsl:if test="./cf2:Receptor/cf2:Domicilio/@localidad"><xsl:value-of select="./cf2:Receptor/cf2:Domicilio/@localidad"/> </xsl:if><xsl:if test="./cf2:Receptor/cf2:Domicilio/@municipio"><xsl:value-of select="concat( ./cf2:Receptor/cf2:Domicilio/@municipio, ', ' )"/></xsl:if><xsl:if test="./cf2:Receptor/cf2:Domicilio/@estado"><xsl:value-of select="concat(./cf2:Receptor/cf2:Domicilio/@estado, ' ' )"/></xsl:if>

																				C.P. <xsl:value-of select="./cf2:Receptor/cf2:Domicilio/@codigoPostal"/> 

																				<xsl:value-of select="./cf2:Receptor/cf2:Domicilio/@pais"/>

                                                                            </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="3mm" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="11" display-align="center" text-align="start">
                              <fo:block/>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="solid" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="left" number-columns-spanned="4">
                              <fo:block>
                                <fo:inline color="#000000" font-size="8.3pt" font-weight="normal">Forma de Pago: </fo:inline>
                                <fo:inline color="#000000" font-size="8.3pt" font-weight="normal">
                                  <xsl:value-of select="./@formaDePago"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="solid" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="left" number-columns-spanned="7">
                              <fo:block>
                                <fo:inline color="#000000" font-size="8.3pt" font-weight="normal">Condiciones de Pago: </fo:inline>
                                <fo:inline color="#000000" font-size="8.3pt" font-weight="normal">
                                  <xsl:value-of select="./@condicionesDePago"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="solid" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center" number-columns-spanned="4" background-color="#000000">
                              <fo:block>
                                <fo:inline color="#ffffff" font-size="8.3pt" font-weight="bold">Descripción</fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="solid" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center" number-columns-spanned="2" background-color="#000000">
                              <fo:block>
                                <fo:inline color="#ffffff" font-size="8.3pt" font-weight="bold">Cant.</fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="solid" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center" number-columns-spanned="2" background-color="#000000">
                              <fo:block>
                                <fo:inline color="#ffffff" font-size="8.3pt" font-weight="bold">Medida</fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="solid" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center" background-color="#000000">
                              <fo:block>
                                <fo:inline color="#ffffff" font-size="8.3pt" font-weight="bold">P. Unitario</fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="solid" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center" number-columns-spanned="2" background-color="#000000">
                              <fo:block>
                                <fo:inline color="#ffffff" font-size="8.3pt" font-weight="bold">Importe</fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <xsl:for-each select="./cf2:Conceptos/cf2:Concepto">
                            <fo:table-row>
                              <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="none" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="left" number-columns-spanned="4">
                                <fo:block>
                                  <fo:inline color="#000000" font-size="7.5pt">
                                    <xsl:value-of select="./@descripcion"/>
                                  </fo:inline>
                                </fo:block>
                                <xsl:if test="./InformacionAduanera/@aduana">
                                  <xsl:for-each select="./InformacionAduanera">
                                    <fo:block space-before.optimum="0pt" space-after.optimum="0pt">
                                      <fo:block>
                                        <fo:inline color="#000000" font-size="7.5pt">Aduana: </fo:inline>
                                        <fo:inline color="#000000" font-size="7.5pt">
                                          <xsl:value-of select="./@aduana"/>
                                        </fo:inline>
                                      </fo:block>
                                    </fo:block>
                                    <fo:block space-before.optimum="0pt" space-after.optimum="0pt">
                                      <fo:block>
                                        <fo:inline color="#000000" font-size="7.5pt">No. de Pedimento: </fo:inline>
                                        <fo:inline color="#295067" font-size="7.5pt">
                                          <xsl:value-of select="./@numero"/>
                                        </fo:inline>
                                      </fo:block>
                                      <fo:block>
                                        <fo:inline color="#000000" font-size="7.5pt">Fecha: </fo:inline>
                                        <fo:inline color="#000000" font-size="7.5pt">
                                          <xsl:if test="./@fecha">
                                            <xsl:call-template name="formateaFechasinHora">
                                              <xsl:with-param name="sep" select="'/'"/>
                                              <xsl:with-param name="valor" select="./@fecha"/>
                                            </xsl:call-template>
                                          </xsl:if>
                                        </fo:inline>
                                      </fo:block>
                                    </fo:block>
                                  </xsl:for-each>
                                </xsl:if>
                              </fo:table-cell>
                              <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="none" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center" number-columns-spanned="2">
                                <fo:block>
                                  <fo:inline color="#000000" font-size="7.5pt">
                                    <xsl:value-of select="./@cantidad"/>
                                  </fo:inline>
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="none" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center" number-columns-spanned="2">
                                <fo:block>
                                  <fo:inline color="#000000" font-size="7.5pt">
                                    <xsl:value-of select="./@unidad"/>
                                  </fo:inline>
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="none" padding-bottom="0px" padding-left="0px" padding-right="2px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right">
                                <fo:block>
                                  <fo:inline color="#000000" font-size="7.5pt">
                                    <xsl:value-of select="format-number(./@valorUnitario, '###,##0.00' )"/>
                                  </fo:inline>
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="none" padding-bottom="0px" padding-left="0px" padding-right="2px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right" number-columns-spanned="2">
                                <fo:block>
                                  <fo:inline color="#000000" font-size="7.5pt">
                                    <xsl:value-of select="format-number(./@importe, '###,##0.00' )"/>
                                  </fo:inline>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                          </xsl:for-each>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.0mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="solid" border-top-width="0.1mm" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="2px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="5" text-align="right">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="bold"> </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="solid" border-top-width="0.1mm" padding-bottom="0px" padding-left="0px" padding-right="2px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right" number-columns-spanned="4">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">Subtotal:</fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="solid" border-left-width="0mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="solid" border-top-width="0.1mm" padding-bottom="0px" padding-left="0px" padding-right="2px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right" number-columns-spanned="2">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">
                                  <xsl:choose>
                                    <xsl:when test="./@version='1.0'">
                                      <xsl:for-each select="./cf2:Addenda/bf2:AddendaBuzonFiscal/bf2:Extra">
                                        <xsl:if test="./@atributo = 'subTotal'">
                                          <xsl:value-of select="format-number(./@valor, '###,##0.00' )"/>
                                        </xsl:if>
                                      </xsl:for-each>
                                    </xsl:when>
                                    <xsl:otherwise>
                                      <xsl:if test="./@subTotal">
                                        <xsl:value-of select="format-number( ./@subTotal, '###,##0.00' )"/>
                                      </xsl:if>
                                    </xsl:otherwise>
                                  </xsl:choose>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <!-- Descuentos -->
                          <xsl:if test="./@descuento&gt;0.00">
                            <fo:table-row>
                              <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.0mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0.1mm" padding-bottom="0px" padding-left="0px" padding-right="2px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="5" text-align="right">
                                <fo:block/>
                              </fo:table-cell>
                              <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0.1mm" padding-bottom="0px" padding-left="0px" padding-right="2px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right" number-columns-spanned="4">
                                <fo:block>
                                  <fo:inline color="#000000" font-size="7.5pt">Descuento</fo:inline>
                                  <xsl:if test="./cf2:Addenda/bf2:AddendaBuzonFiscal/bf2:CFD/@porcentajeDescuento">
                                    <fo:inline color="#000000" font-size="7.5pt">
                                      <xsl:value-of select="concat(' del ', ./cf2:Addenda/bf2:AddendaBuzonFiscal/bf2:CFD/@porcentajeDescuento, '% ' )"/>
                                    </fo:inline>
                                    <xsl:if test="./@motivoDescuento">
                                      <fo:inline color="#000000" font-size="7.5pt">por </fo:inline>
                                      <fo:inline color="#000000" font-size="7.5pt">
                                        <xsl:value-of select="./@motivoDescuento"/>
                                      </fo:inline>
                                    </xsl:if>
                                  </xsl:if>
                                  <fo:inline color="#000000" font-size="7.5pt">:</fo:inline>
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="solid" border-left-width="0mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="none" border-top-width="0.1mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right" number-columns-spanned="2">
                                <fo:block>
                                  <fo:inline color="#000000" font-size="7.5pt">
                                    <xsl:value-of select="./@descuento"/>
                                  </fo:inline>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                          </xsl:if>
                          <!-- Traslado de Impuestos -->
                          <xsl:if test="./Impuestos/Traslados/Traslado/@impuesto">
                            <xsl:for-each select="./Impuestos/Traslados/Traslado">
                              <fo:table-row>
                                <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.0mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0.1mm" padding-bottom="0px" padding-left="0px" padding-right="2px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="5" text-align="right">
                                  <fo:block/>
                                </fo:table-cell>
                                <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0.1mm" padding-bottom="0px" padding-left="0px" padding-right="2px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right" number-columns-spanned="4">
                                  <fo:block>
                                    <fo:inline color="#000000" font-size="7.5pt">
                                      <xsl:value-of select="./@impuesto"/>
                                    </fo:inline>
                                    <fo:inline color="#000000" font-size="7.5pt"> 

																<xsl:value-of select="./@tasa"/>

															</fo:inline>
                                    <fo:inline color="#000000" font-size="7.5pt">%</fo:inline>
                                    <fo:inline color="#000000" font-size="7.5pt">

																 Trasladado:

															</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="solid" border-left-width="0mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="none" border-top-width="0.1mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right" number-columns-spanned="2">
                                  <fo:block>
                                    <fo:inline color="#000000" font-size="7.5pt">
                                      <xsl:value-of select="format-number(./@importe, '###,##0.00' )"/>
                                    </fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </xsl:for-each>
                          </xsl:if>
                          <!--Retenciones Impuesto-->
                          <xsl:if test="./Impuestos/Retenciones/Retencion/@impuesto">
                            <xsl:for-each select="./Impuestos/Retenciones/Retencion">
                              <fo:table-row>
                                <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.0mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0.1mm" padding-bottom="0px" padding-left="0px" padding-right="2px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="5" text-align="right">
                                  <fo:block/>
                                </fo:table-cell>
                                <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0.1mm" padding-bottom="0px" padding-left="0px" padding-right="2px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right" number-columns-spanned="4">
                                  <fo:block>
                                    <fo:inline color="#000000" font-size="7.5pt"><xsl:value-of select="./@impuesto"/> Retenido

                                                                        </fo:inline>
                                    <fo:inline color="#000000" font-size="7.5pt">:</fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="solid" border-left-width="0mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="none" border-top-width="0.1mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right" number-columns-spanned="2">
                                  <fo:block>
                                    <fo:inline color="#000000" font-size="7.5pt">
                                      <xsl:value-of select="format-number(./@importe, '###,##0.00' )"/>
                                    </fo:inline>
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </xsl:for-each>
                          </xsl:if>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.0mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0.1mm" padding-bottom="0px" padding-left="0px" padding-right="2px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="5" text-align="right">
                              <fo:block>
                                <fo:inline color="#525252" font-size="8.3pt"> </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-left-width="0mm" border-right-color="#999999" border-right-style="none" border-right-width="0mm" border-top-color="#999999" border-top-style="none" border-top-width="0.1mm" padding-bottom="0px" padding-left="0px" padding-right="2px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right" number-columns-spanned="4">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="bold">Total a pagar:</fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="solid" border-left-width="0mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="none" border-top-width="0.1mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right" number-columns-spanned="2">
                              <fo:block>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="bold">
                                  <xsl:if test="./@total">
                                    <xsl:value-of select="format-number( ./@total, '###,##0.00' )"/>
                                  </xsl:if>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="solid" border-top-width="0.1mm" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="2px" padding-left="2px" padding-right="0px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="11" display-align="center" text-align="start">
                              <fo:block>
                                <fo:inline font-size="8.3pt" font-weight="bold" color="#000000">Importe con letra: </fo:inline>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">
                                  <xsl:value-of select="./cf2:Addenda/bf2:AddendaBuzonFiscal/bf2:CFD/@totalConLetra"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="solid" border-left-width="0.1mm" border-right-color="#999999" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="none" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="2px" padding-left="2px" padding-right="0px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="11" display-align="center" text-align="start">
                              <fo:block>
                                <fo:inline font-size="8.3pt" font-weight="bold" color="#000000">Observaciones: </fo:inline>
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="normal">
                                  <xsl:value-of select="./cf2:Addenda/bf2:AddendaBuzonFiscal/bf2:CFD/@observaciones"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-left-width="0.1mm" border-right-color="#999999" border-right-style="none" border-right-width="0.1mm" border-top-color="#999999" border-top-style="none" border-top-width="0px" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="2px" padding-left="2px" padding-right="2px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="11" display-align="center" text-align="start">
                              <fo:block>
                                <fo:inline font-size="8.3pt" font-weight="bold" country="#000000">Cadena Original:</fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="solid" border-width="0.1mm" padding-top="2mm" padding-right="2mm" padding-bottom="2mm" padding-left="2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="11" text-align="justify">
                              <fo:block line-height="8.7pt">
                                <fo:inline color="#000000" font-size="7.5pt">
                                  <xsl:call-template name="Wrap">
                                    <xsl:with-param name="largo" select="110"/>
                                    <xsl:with-param name="valor">
                                      <xsl:call-template name="cadenaOriginal"/>
                                    </xsl:with-param>
                                  </xsl:call-template>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-left-width="0.1mm" border-right-color="#999999" border-right-style="none" border-right-width="0.1mm" border-top-color="#999999" border-top-style="none" border-top-width="0px" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="3px" padding-left="2px" padding-right="2px" padding-top="5px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="11" display-align="center" text-align="start">
                              <fo:block>
                                <fo:inline font-size="8.3pt" font-weight="bold" color="#000000">Sello Digital Sector Primario:</fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="solid" border-width="0.1mm" line-height="9.3pt" padding-top="2mm" padding-right="2mm" padding-bottom="2mm" padding-left="2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="11" text-align="justify">
                              <fo:block line-height="8.7pt">
                                <fo:inline color="#000000" font-size="7.5pt">
                                  <xsl:call-template name="Wrap">
                                    <xsl:with-param name="largo" select="110"/>
                                    <xsl:with-param name="valor" select="./@sello"/>
                                  </xsl:call-template>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <xsl:if test="./cf2:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@selloDelPSGECFD">
                            <fo:table-row>
                              <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0.0mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="2px" padding-left="2px" padding-right="2px" padding-top="5px" border-style="none" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="11" display-align="center" text-align="start">
                                <fo:block>
                                  <fo:inline font-size="8.3pt" font-weight="bold"> Sello Digital de Buzón Fiscal:</fo:inline>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                              <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="solid" border-right-color="#999999" border-right-style="solid" border-top-color="#999999" border-top-style="solid" border-width="0.1mm" line-height="9.3pt" padding-top="2mm" padding-right="2mm" padding-bottom="2mm" padding-left="2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="11" text-align="justify">
                                <fo:block line-height="8.7pt">
                                  <fo:inline color="#000000" font-size="7.5pt">
                                    <xsl:call-template name="Wrap">
                                      <xsl:with-param name="largo" select="110"/>
                                      <xsl:with-param name="valor" select="./cf2:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@selloDelPSGECFD"/>
                                    </xsl:call-template>
                                  </fo:inline>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                          </xsl:if>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-right-color="#999999" border-right-style="none" border-top-color="#999999" border-top-style="none" border-width="0.1mm" line-height="9.3pt" padding-top="2mm" padding-right="2px" padding-bottom="0mm" padding-left="2px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="11" text-align="justify">
                              <fo:block line-height="8.0pt">
                                <fo:inline color="#000000" font-size="7.0pt">

                                                            Este documento es una impresión de un </fo:inline>
                                <fo:inline color="#B6571E" font-size="7.0pt" font-weight="bold">Comprobante Fiscal Digital para el Sector Primario</fo:inline>
                                <fo:inline color="#000000" font-size="7.0pt" font-weight="normal"> generado a nombre de un productor por un Proveedor Autorizado de Comprobantes Fiscales Digitales. </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-right-color="#999999" border-right-style="none" border-top-color="#999999" border-top-style="none" border-width="0.1mm" line-height="9.3pt" padding-top="2mm" padding-right="2mm" padding-bottom="0mm" padding-left="2px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="11" text-align="justify">
                              <fo:block>
                                <fo:inline color="#000000" font-size="8.3pt" font-weight="bold">

                                                           Proveedor Autorizado de Comprobantes Fiscales Digitales:	 </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-right-color="#999999" border-right-style="none" border-top-color="#999999" border-top-style="none" border-width="0.1mm" line-height="9.3pt" padding-top="5px" padding-right="0px" padding-bottom="0mm" padding-left="0px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="3" text-align="left">
                              <fo:block line-height="8.0pt">
                                <fo:inline color="#000000" font-size="7.0pt">

                                                            Razón Social: <xsl:value-of select="./cf2:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@nombre"/></fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-right-color="#999999" border-right-style="none" border-top-color="#999999" border-top-style="none" border-width="0.1mm" line-height="9.3pt" padding-top="5px" padding-right="0px" padding-bottom="0mm" padding-left="0px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="8" text-align="left">
                              <fo:block line-height="8.0pt">
                                <fo:inline color="#000000" font-size="7.0pt">

                                                           RFC: <xsl:value-of select="./cf2:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@rfc"/>

                                                       </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-right-color="#999999" border-right-style="none" border-top-color="#999999" border-top-style="none" border-width="0.1mm" line-height="9.3pt" padding-top="0px" padding-right="0px" padding-bottom="0mm" padding-left="0px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="3" text-align="left">
                              <fo:block line-height="8.0pt">
                                <fo:inline color="#000000" font-size="7.0pt">

                                                            Número de Certificado: <xsl:value-of select="./cf2:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@noCertificado"/></fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-right-color="#999999" border-right-style="none" border-top-color="#999999" border-top-style="none" border-width="0.1mm" line-height="9.3pt" padding-top="0px" padding-right="0px" padding-bottom="0mm" padding-left="0px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="8" text-align="left">
                              <fo:block line-height="8.0pt">
                                <fo:inline color="#000000" font-size="7.0pt">

                                                          Número y Año de Aprobación: 

													 <xsl:value-of select="./cf2:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@noAutorizacion"/> / 2007

														 </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#999999" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#999999" border-left-style="none" border-right-color="#999999" border-right-style="none" border-top-color="#999999" border-top-style="none" border-width="0.1mm" line-height="9.3pt" padding-top="0px" padding-right="5px" padding-bottom="5px" padding-left="0px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="11" text-align="left">
                              <fo:block line-height="8.0pt">
                                <fo:inline color="#000000" font-size="7.0pt">

                                                          Fecha de Publicación de Autorización: 

														 <xsl:call-template name="formateaFechasinHora"><xsl:with-param name="sep" select="'/'"/><xsl:with-param name="valor" select="./cf2:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@fechaAutorizacion"/></xsl:call-template>

														 </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" background-color="#E2E2E2" line-height="9.0pt" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="11" display-align="center" text-align="justify">
                              <fo:block line-height="8.5pt" padding="2px">
                                <fo:inline color="#000000" font-size="7.5pt" font-weight="bold">

																		IMPORTANTE:</fo:inline>
                                <fo:inline color="#000000" font-size="7.0pt">

																		Los productores del sector primario que opten por este esquema de comprobación están sujetos a un límite de ingresos acumulados en el año, equivalente a 40 veces el Salario Mínimo General de la zona correspondiente elevado al año, de conformidad con lo dispuesto por la Regla I.2.5.1 de la Resolución Miscelánea Fiscal para 2008.</fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                        </fo:table-body>
                      </fo:table>
                      <fo:page-number left="3mm" font-size="6.0pt" font-weight="bold" padding-top="30pt"/>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </fo:table-body>
            </fo:table>
          </fo:block>
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
  <!--

		####################

		TEMPLATES AUXILIARES

		####################

-->
  <!-- Template para hacer la funcionalidad de Wrap del texto, segun el largo enviado -->
  <xsl:template name="Wrap">
    <xsl:param name="largo"/>
    <xsl:param name="valor"/>
    <xsl:if test="$valor">
      <xsl:choose>
        <xsl:when test="string-length($valor) &lt;= number( $largo )">
          <fo:block>
            <fo:inline color="#000000" font-family="Courier" font-size="8px" line-height="11px">
              <xsl:value-of select="$valor"/>
            </fo:inline>
          </fo:block>
        </xsl:when>
        <xsl:otherwise>
          <fo:block>
            <fo:inline color="#000000" font-family="Courier" font-size="8px" line-height="11px">
              <xsl:value-of select="substring( $valor, 1, number($largo) )"/>
            </fo:inline>
          </fo:block>
          <xsl:call-template name="Wrap">
            <xsl:with-param name="largo" select="$largo"/>
            <xsl:with-param name="valor" select="substring( $valor, number($largo)+1 )"/>
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>
  <!-- Template para dar a la Fecha el formato: dd/mm/aaaa hh:mi:ss -->
  <xsl:template name="formateaFecha">
    <xsl:param name="sep"/>
    <xsl:param name="valor"/>
    <xsl:if test="$valor">
      <xsl:value-of select="concat( substring( $valor, 9, 2), $sep, substring( $valor, 6, 2), $sep, substring( $valor, 1, 4), ' ','a las ', ' ',substring( $valor, 12, 8)  )"/>
    </xsl:if>
  </xsl:template>
  <!-- Template para dar a la Fecha el formato: dd/mm/aaaa-->
  <xsl:template name="formateaFechasinHora">
    <xsl:param name="sep"/>
    <xsl:param name="valor"/>
    <xsl:if test="$valor">
      <xsl:value-of select="concat( substring( $valor, 9, 2), $sep, substring( $valor, 6, 2), $sep, substring( $valor, 1, 4)  )"/>
    </xsl:if>
  </xsl:template>
  <!-- Conjunto de Templates para formar la Cadena Original -->
  <xsl:template name="cadenaOriginal">|<xsl:call-template name="Comprobante"/>||</xsl:template>
  <xsl:template name="Comprobante">
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@version"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@serie"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@folio"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@fecha"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@noAprobacion"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@anoAprobacion"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@tipoDeComprobante"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@formaDePago"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@condicionesDePago"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@subTotal"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@descuento"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@total"/>
    </xsl:call-template>
    <xsl:call-template name="Emisor"/>
    <xsl:call-template name="Receptor"/>
    <xsl:for-each select="./cf2:Conceptos/cf2:Concepto">
      <xsl:call-template name="Concepto"/>
    </xsl:for-each>
    <xsl:for-each select="./Impuestos/Retenciones/*">
      <xsl:call-template name="Retenidos"/>
    </xsl:for-each>
    <xsl:for-each select="./Impuestos/Traslados/*">
      <xsl:call-template name="Trasladados"/>
    </xsl:for-each>
    <xsl:if test="./cf2:Complemento/ecc:EstadoDeCuentaCombustible/@total">
      <xsl:call-template name="ComplementoECC">
        <xsl:with-param name="Nodo" select="./cf2:Complemento/ecc:EstadoDeCuentaCombustible"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="./cf2:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@rfc">
      <xsl:call-template name="ComplementoPSGECFD">
        <xsl:with-param name="Nodo" select="./cf2:Complemento/psgecfd:PrestadoresDeServiciosDeCFD"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template name="Emisor">
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./cf2:Emisor/@rfc"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./cf2:Emisor/@nombre"/>
    </xsl:call-template>
    <xsl:call-template name="DomicilioFiscal">
      <xsl:with-param name="Nodo" select="./cf2:Emisor/cf2:DomicilioFiscal"/>
    </xsl:call-template>
    <xsl:if test="./cf2:Emisor/ExpedidoEn/@pais">
      <xsl:call-template name="Domicilio">
        <xsl:with-param name="Nodo" select="./cf2:Emisor/ExpedidoEn"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template name="Receptor">
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./cf2:Receptor/@rfc"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./cf2:Receptor/@nombre"/>
    </xsl:call-template>
    <xsl:call-template name="Domicilio">
      <xsl:with-param name="Nodo" select="./cf2:Receptor/cf2:Domicilio"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="Retenidos">
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@impuesto"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@importe"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="Trasladados">
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@impuesto"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@tasa"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@importe"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="Concepto">
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@cantidad"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@unidad"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@noIdentificacion"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@descripcion"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@valorUnitario"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@importe"/>
    </xsl:call-template>
    <xsl:if test="./InformacionAduanera/@numero">
      <xsl:call-template name="InformacionAduanera">
        <xsl:with-param name="Nodo" select="./InformacionAduanera"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="./CuentaPredial/@numero">
      <xsl:call-template name="CuentaPredial">
        <xsl:with-param name="Nodo" select="./CuentaPredial"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <xsl:template name="InformacionAduanera">
    <xsl:param name="Nodo"/>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@numero"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@fecha"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@aduana"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="CuentaPredial">
    <xsl:param name="Nodo"/>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@numero"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="ComplementoECC">
    <xsl:param name="Nodo"/>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@tipoOperacion"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@numeroDeCuenta"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="$Nodo/@subTotal"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@total"/>
    </xsl:call-template>
    <xsl:for-each select="$Nodo/ecc:Conceptos/*">
      <xsl:call-template name="ConceptoECC"/>
    </xsl:for-each>
  </xsl:template>
  <xsl:template name="ConceptoECC">
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@identificador"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@fecha"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@rfc"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@claveEstacion"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@cantidad"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@nombreCombustible"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@folioOperacion"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@valorUnitario"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@importe"/>
    </xsl:call-template>
    <xsl:for-each select="./ecc:Traslados/*">
      <xsl:call-template name="Trasladados"/>
    </xsl:for-each>
  </xsl:template>
  <xsl:template name="ComplementoPSGECFD">
    <xsl:param name="Nodo"/>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@nombre"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@rfc"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@noCertificado"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@fechaAutorizacion"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@noAutorizacion"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="Requerido"><xsl:param name="valor"/>|<xsl:call-template name="ManejaEspacios"><xsl:with-param name="s" select="$valor"/></xsl:call-template></xsl:template>
  <xsl:template name="Opcional">
    <xsl:param name="valor"/>
    <xsl:if test="$valor">|<xsl:call-template name="ManejaEspacios"><xsl:with-param name="s" select="$valor"/></xsl:call-template></xsl:if>
  </xsl:template>
  <xsl:template name="ManejaEspacios">
    <xsl:param name="s"/>
    <xsl:value-of select="normalize-space(string($s))"/>
  </xsl:template>
  <xsl:template name="DomicilioFiscal">
    <xsl:param name="Nodo"/>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@calle"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="$Nodo/@noExterior"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="$Nodo/@noInterior"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="$Nodo/@colonia"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="$Nodo/@localidad"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="$Nodo/@referencia"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@municipio"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@estado"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@pais"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@codigoPostal"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="Domicilio">
    <xsl:param name="Nodo"/>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@calle"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="$Nodo/@noExterior"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="$Nodo/@noInterior"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="$Nodo/@colonia"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="$Nodo/@localidad"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="$Nodo/@referencia"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@municipio"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@estado"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@pais"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="$Nodo/@codigoPostal"/>
    </xsl:call-template>
  </xsl:template>
</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c) 2004-2007. Progress Software Corporation. All rights reserved.

<metaInformation>

<scenarios ><scenario default="yes" name="AAA010101AAA_FAC_6_20080211.xml" userelativepaths="yes" externalpreview="no" url="AAA010101AAA_FAC_6_20080211.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="no" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bSchemaAware" value="false"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bWarnings" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="iErrorHandling" value="fatal"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no" ><SourceSchema srcSchemaPath="AAA010101AAA_FAC_6_20080211.xml" srcSchemaRoot="Comprobante" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/></MapperInfo><MapperBlockPosition><template match="/Comprobante"><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[1]/fo:table-cell/fo:block/fo:inline/xsl:choose" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[1]/fo:table-cell/fo:block/fo:inline/xsl:choose/xsl:when/xsl:value-of" x="253" y="74"/><block path="" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[1]/fo:table-cell/fo:block/fo:inline/xsl:choose/xsl:when[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[1]/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[2]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[1]/fo:table-cell[1]/xsl:for-each" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[1]/fo:table-cell[1]/xsl:for-each/xsl:if/=[0]" x="0" y="112"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[1]/fo:table-cell[1]/xsl:for-each/xsl:if" x="13" y="114"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[1]/fo:table-cell[1]/xsl:for-each/xsl:if/fo:block/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[1]/fo:table-cell[1]/xsl:if/substring-before[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[1]/fo:table-cell[1]/xsl:if/substring-before[0]/substring-after[0]" x="161" y="66"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[1]/fo:table-cell[1]/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[1]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[2]/fo:table-cell/fo:block/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[2]/fo:table-cell[1]/xsl:for-each" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[2]/fo:table-cell[1]/xsl:for-each/xsl:if/=[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[2]/fo:table-cell[1]/xsl:for-each/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[2]/fo:table-cell[1]/xsl:for-each/xsl:if/fo:block/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[2]/fo:table-cell[1]/xsl:if/substring-before[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[2]/fo:table-cell[1]/xsl:if/substring-before[0]/substring-after[0]" x="161" y="66"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[2]/fo:table-cell[1]/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[2]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[2]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[1]/xsl:value-of/substring-after[0]" x="207" y="68"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[4]/fo:table-cell/fo:block/fo:inline/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell/fo:block/fo:inline[1]/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/fo:block/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/fo:block[1]/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/fo:block[1]/xsl:if/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/fo:block[1]/xsl:if/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/fo:block[1]/xsl:if/fo:inline/xsl:if/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/fo:block[1]/xsl:if/fo:inline/xsl:if/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/fo:block[1]/xsl:if/fo:inline/xsl:if/xsl:if[1]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/fo:block[1]/xsl:if/fo:inline/xsl:if/xsl:if[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block/fo:inline/xsl:if[1]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block/fo:inline/xsl:if[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[1]/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[1]/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[1]/fo:inline/xsl:if[1]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[1]/fo:inline/xsl:if[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[1]/fo:inline/xsl:if[2]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[1]/fo:inline/xsl:if[2]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[1]/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/fo:block[2]/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/fo:block[2]/xsl:if/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/fo:block[2]/xsl:if[1]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[5]/fo:table-cell[1]/fo:block[2]/xsl:if[1]/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block/fo:inline/xsl:if[1]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block/fo:inline/xsl:if[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block/fo:inline/xsl:if[2]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block/fo:inline/xsl:if[2]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block[1]/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block[1]/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block[1]/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block[1]/fo:inline/xsl:if[1]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block[1]/fo:inline/xsl:if[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block[2]/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block[2]/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block[2]/fo:inline/xsl:if[1]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block[2]/fo:inline/xsl:if[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[6]/fo:table-cell/fo:block[2]/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[8]/fo:table-cell/fo:block/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[8]/fo:table-cell/fo:block/xsl:if/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[8]/fo:table-cell/fo:block/xsl:if[1]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[8]/fo:table-cell/fo:block/xsl:if[1]/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[9]/fo:table-cell/fo:block/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[9]/fo:table-cell/fo:block/xsl:if/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[9]/fo:table-cell/fo:block/xsl:if[1]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[9]/fo:table-cell/fo:block/xsl:if[1]/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[17]/fo:table-cell[1]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[17]/fo:table-cell[1]/fo:block/fo:inline/xsl:if/xsl:call-template" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[17]/fo:table-cell[3]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[21]/fo:table-cell[1]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[25]/fo:table-cell[1]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[25]/fo:table-cell[3]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[25]/fo:table-cell[3]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[25]/fo:table-cell[3]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[29]/fo:table-cell[1]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[29]/fo:table-cell[1]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[29]/fo:table-cell[3]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[29]/fo:table-cell[3]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[33]/fo:table-cell[1]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[33]/fo:table-cell[1]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[33]/fo:table-cell[3]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[33]/fo:table-cell[3]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[33]/fo:table-cell[3]/fo:block/fo:inline/xsl:if[1]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[33]/fo:table-cell[3]/fo:block/fo:inline/xsl:if[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[37]/fo:table-cell[1]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[37]/fo:table-cell[1]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[37]/fo:table-cell[3]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[37]/fo:table-cell[3]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[41]/fo:table-cell[1]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[41]/fo:table-cell[1]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[41]/fo:table-cell[3]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[41]/fo:table-cell[3]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[45]/fo:table-cell[1]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[45]/fo:table-cell[1]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[45]/fo:table-cell[3]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[45]/fo:table-cell[3]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[49]/fo:table-cell[1]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[49]/fo:table-cell[1]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[49]/fo:table-cell[3]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[53]/fo:table-cell[1]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[53]/fo:table-cell[3]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[53]/fo:table-cell[3]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[57]/fo:table-cell[1]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[57]/fo:table-cell[1]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[57]/fo:table-cell[3]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[57]/fo:table-cell[3]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[61]/fo:table-cell[1]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[61]/fo:table-cell[1]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[61]/fo:table-cell[3]/fo:block/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[61]/fo:table-cell[3]/fo:block/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell/xsl:for-each" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell/xsl:for-each/xsl:if/=[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell/xsl:for-each/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell/xsl:if/substring-before[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell/xsl:if/substring-before[0]/substring-after[0]" x="161" y="66"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[1]/xsl:for-each" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[1]/xsl:for-each/xsl:if/=[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[1]/xsl:for-each/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[1]/xsl:for-each/xsl:if/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[1]/xsl:if/substring-before[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[1]/xsl:if/substring-before[0]/substring-after[0]" x="161" y="66"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[1]/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[1]/xsl:if/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[1]/xsl:if/fo:block/fo:inline/xsl:value-of/substring-after[0]" x="207" y="68"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[2]/xsl:for-each" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[2]/xsl:for-each/xsl:if/=[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[2]/xsl:for-each/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[2]/xsl:if/substring-before[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[2]/xsl:if/substring-before[0]/substring-after[0]" x="161" y="66"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[2]/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[3]/xsl:for-each" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[3]/xsl:for-each/xsl:if/=[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[3]/xsl:for-each/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[3]/xsl:for-each/xsl:if/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[3]/xsl:if/substring-before[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[3]/xsl:if/substring-before[0]/substring-after[0]" x="161" y="66"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[3]/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[3]/xsl:if/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[65]/fo:table-cell[3]/xsl:if/fo:block/fo:inline/xsl:value-of/substring-after[0]" x="207" y="68"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/=[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/fo:block[1]/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/fo:block[2]/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/fo:block[2]/fo:inline/xsl:value-of[1]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/xsl:if/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/fo:block[3]/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/fo:block[3]/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/fo:block[3]/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/fo:block[4]/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/fo:block[4]/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/fo:block[4]/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/fo:block[4]/fo:inline/xsl:value-of[1]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/fo:block[4]/fo:inline/xsl:value-of[2]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/xsl:if[1]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell/xsl:if/xsl:if[1]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[1]/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[2]/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[2]/fo:inline/xsl:value-of[1]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/xsl:if/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[3]/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[3]/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[3]/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[4]/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[4]/fo:inline/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[4]/fo:inline/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[4]/fo:inline/xsl:value-of[1]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/fo:block[4]/fo:inline/xsl:value-of[2]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/xsl:if[1]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if/fo:table-row[5]/fo:table-cell[1]/xsl:if/xsl:if[1]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/fo:table-row/fo:table-cell/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/fo:table-row/fo:table-cell[1]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/fo:table-row/fo:table-cell[2]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/xsl:if/fo:block/fo:block/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/xsl:if[1]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/xsl:if[1]/xsl:for-each" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/xsl:if[1]/xsl:for-each/fo:block/fo:block/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/xsl:if[1]/xsl:for-each/fo:block[1]/fo:block/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/xsl:if[1]/xsl:for-each/fo:block[1]/fo:block[1]/fo:inline[1]/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/xsl:if[1]/xsl:for-each/fo:block[1]/fo:block[1]/fo:inline[1]/xsl:if/xsl:call-template" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/fo:table-row/fo:table-cell[4]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/fo:table-row/fo:table-cell[5]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/xsl:if/xsl:for-each" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/xsl:if/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/xsl:if/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/fo:inline[2]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/xsl:if/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/fo:block/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/xsl:if/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/fo:block/fo:block/fo:inline[2]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/xsl:if/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/xsl:if/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/xsl:if/xsl:for-each" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/xsl:if/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/xsl:if/xsl:for-each/fo:block/fo:block/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/xsl:if/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/xsl:if/xsl:for-each/fo:block[1]/fo:block/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/xsl:if/xsl:for-each/fo:table-row/fo:table-cell[3]/fo:block/xsl:if/xsl:for-each/fo:block[1]/fo:block[1]/fo:inline[1]/xsl:call-template" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/xsl:if/xsl:for-each/fo:table-row/fo:table-cell[4]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[70]/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:for-each/xsl:if/xsl:for-each/fo:table-row/fo:table-cell[5]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[71]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose" x="243" y="0"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[71]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose/=[0]" x="197" y="0"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[71]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose/xsl:when/xsl:for-each" x="193" y="14"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[71]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose/xsl:when/xsl:for-each/xsl:if/=[0]" x="177" y="42"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[71]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose/xsl:when/xsl:for-each/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[71]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose/xsl:when/xsl:for-each/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[71]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose/xsl:otherwise/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[71]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose/xsl:otherwise/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[1]/>[0]" x="247" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[1]" x="293" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[1]/fo:table-row/fo:table-cell[1]/fo:block/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[1]/fo:table-row/fo:table-cell[1]/fo:block/xsl:if/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[1]/fo:table-row/fo:table-cell[1]/fo:block/xsl:if/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[1]/fo:table-row/fo:table-cell[1]/fo:block/xsl:if/xsl:if/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[1]/fo:table-row/fo:table-cell[2]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]" x="193" y="14"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose" x="143" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose/=[0]" x="97" y="38"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose/xsl:when/xsl:for-each" x="213" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose/xsl:when/xsl:for-each/fo:table-row/fo:table-cell[1]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose/xsl:when/xsl:for-each/fo:table-row/fo:table-cell[2]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose/xsl:otherwise/xsl:for-each" x="93" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose/xsl:otherwise/xsl:for-each/fo:table-row/fo:table-cell[1]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose/xsl:otherwise/xsl:for-each/fo:table-row/fo:table-cell[1]/fo:block/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose/xsl:otherwise/xsl:for-each/fo:table-row/fo:table-cell[2]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose[1]" x="53" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose[1]/=[0]" x="7" y="68"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose[1]/xsl:when/fo:table-row/fo:table-cell[2]/fo:block/fo:inline/xsl:for-each" x="193" y="14"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose[1]/xsl:when/fo:table-row/fo:table-cell[2]/fo:block/fo:inline/xsl:for-each/xsl:if/=[0]" x="177" y="42"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose[1]/xsl:when/fo:table-row/fo:table-cell[2]/fo:block/fo:inline/xsl:for-each/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose[1]/xsl:when/fo:table-row/fo:table-cell[2]/fo:block/fo:inline/xsl:for-each/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose[1]/xsl:otherwise/xsl:if" x="143" y="84"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose[1]/xsl:otherwise/xsl:if/xsl:if" x="13" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[2]/xsl:choose[1]/xsl:otherwise/xsl:if/xsl:if/fo:table-row/fo:table-cell[2]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[3]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[3]/xsl:for-each" x="253" y="34"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[3]/xsl:for-each/fo:table-row/fo:table-cell[1]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[3]/xsl:for-each/fo:table-row/fo:table-cell[1]/fo:block/fo:inline[1]/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[3]/xsl:for-each/fo:table-row/fo:table-cell[1]/fo:block/fo:inline[1]/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[3]/xsl:for-each/fo:table-row/fo:table-cell[2]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[4]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[4]/xsl:for-each" x="293" y="34"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[4]/xsl:for-each/fo:table-row/fo:table-cell[1]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[4]/xsl:for-each/fo:table-row/fo:table-cell[1]/fo:block/fo:inline[1]/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[4]/xsl:for-each/fo:table-row/fo:table-cell[1]/fo:block/fo:inline[1]/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[4]/xsl:for-each/fo:table-row/fo:table-cell[2]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose" x="33" y="14"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose/=[0]" x="0" y="8"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose/xsl:when/xsl:for-each" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose/xsl:when/xsl:for-each/xsl:if/=[0]" x="47" y="32"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose/xsl:when/xsl:for-each/xsl:if" x="93" y="34"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose/xsl:when/xsl:for-each/xsl:if/fo:table-row/fo:table-cell[2]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose/xsl:otherwise/xsl:if" x="253" y="114"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose/xsl:otherwise/xsl:if/fo:table-row/fo:table-cell[2]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[72]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose" x="283" y="0"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[72]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose/=[0]" x="237" y="0"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[72]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose/xsl:when/xsl:for-each" x="193" y="14"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[72]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose/xsl:when/xsl:for-each/xsl:if/=[0]" x="177" y="42"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[72]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose/xsl:when/xsl:for-each/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[72]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose/xsl:when/xsl:for-each/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[72]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose/xsl:otherwise/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[72]/fo:table-cell[2]/fo:block/fo:inline/xsl:choose/xsl:otherwise/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[73]/fo:table-cell[1]/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/substring-before[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/substring-before[0]/substring-after[0]" x="161" y="66"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[3]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[3]/xsl:value-of/substring-before[0]" x="207" y="68"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[3]/xsl:value-of/substring-before[0]/substring-after[0]" x="161" y="62"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[5]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[5]/xsl:value-of/substring-before[0]" x="207" y="68"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[5]/xsl:value-of/substring-before[0]/substring-after[0]" x="161" y="62"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[7]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[7]/xsl:value-of/substring-before[0]" x="207" y="68"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[7]/xsl:value-of/substring-before[0]/substring-after[0]" x="161" y="62"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[9]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[9]/xsl:value-of/substring-before[0]" x="207" y="68"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[9]/xsl:value-of/substring-before[0]/substring-after[0]" x="161" y="62"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[11]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/xsl:if/fo:block/fo:inline[11]/xsl:value-of/substring-after[0]" x="207" y="68"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each/xsl:if/=[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each/xsl:if/fo:inline[1]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each[1]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each[1]/xsl:if/=[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each[1]/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each[1]/xsl:if/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each[1]/xsl:if/fo:inline[2]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each[2]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each[2]/xsl:if/=[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each[2]/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each[2]/xsl:if/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each[2]/xsl:if/fo:inline[2]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each[3]" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each[3]/xsl:if/=[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each[3]/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block/xsl:for-each[3]/xsl:if/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block[1]/xsl:choose" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block[1]/xsl:choose/substring-before[0]" x="207" y="68"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block[1]/xsl:choose/substring-before[0]/substring-after[0]" x="161" y="62"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block[1]/xsl:choose/xsl:when/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block[1]/xsl:choose/xsl:when/fo:inline/xsl:value-of/substring-after[0]" x="207" y="68"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block[1]/xsl:choose/xsl:otherwise/xsl:if/=[0]" x="207" y="72"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block[1]/xsl:choose/xsl:otherwise/xsl:if/=[0]/substring-before[0]" x="161" y="66"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block[1]/xsl:choose/xsl:otherwise/xsl:if/=[0]/substring-before[0]/substring-after[0]" x="115" y="60"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block[1]/xsl:choose/xsl:otherwise/xsl:if" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[74]/fo:table-cell[1]/fo:block[1]/xsl:choose/xsl:otherwise/xsl:if/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[77]/fo:table-cell/fo:block/fo:inline/xsl:call-template" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/fo:table-row[80]/fo:table-cell/fo:block/fo:inline/xsl:call-template" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[5]" x="293" y="114"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[5]/fo:table-row[2]/fo:table-cell/fo:block/fo:inline/xsl:call-template" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[6]" x="213" y="114"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[6]/xsl:for-each" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[6]/xsl:for-each/xsl:if/=[0]" x="47" y="112"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[6]/xsl:for-each/xsl:if/=[0]/substring[0]" x="1" y="106"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[6]/xsl:for-each/xsl:if" x="93" y="114"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:if[6]/xsl:for-each/xsl:if/fo:table-row/fo:table-cell/fo:block/fo:inline/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]" x="53" y="114"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:when/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[2]/xsl:choose" x="123" y="0"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:when/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[2]/xsl:choose/=[0]" x="77" y="0"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:when/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[2]/xsl:choose/xsl:when/xsl:for-each" x="193" y="14"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:when/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[2]/xsl:choose/xsl:when/xsl:for-each/xsl:if/=[0]" x="177" y="42"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:when/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[2]/xsl:choose/xsl:when/xsl:for-each/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:when/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[2]/xsl:choose/xsl:when/xsl:for-each/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:when/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[2]/xsl:choose/xsl:otherwise/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:when/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[2]/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:when/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[2]/xsl:value-of[1]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:when/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[2]/xsl:value-of[2]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:when/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[2]/xsl:value-of[3]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:when/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[2]/xsl:value-of[4]" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:when/fo:table-row[1]/fo:table-cell/fo:block/fo:inline[2]/xsl:call-template" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:otherwise/fo:table-row/fo:table-cell/fo:block/fo:inline[2]/xsl:choose" x="83" y="0"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:otherwise/fo:table-row/fo:table-cell/fo:block/fo:inline[2]/xsl:choose/=[0]" x="37" y="0"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:otherwise/fo:table-row/fo:table-cell/fo:block/fo:inline[2]/xsl:choose/xsl:when/xsl:for-each" x="193" y="14"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:otherwise/fo:table-row/fo:table-cell/fo:block/fo:inline[2]/xsl:choose/xsl:when/xsl:for-each/xsl:if/=[0]" x="177" y="42"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:otherwise/fo:table-row/fo:table-cell/fo:block/fo:inline[2]/xsl:choose/xsl:when/xsl:for-each/xsl:if" x="223" y="44"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:otherwise/fo:table-row/fo:table-cell/fo:block/fo:inline[2]/xsl:choose/xsl:when/xsl:for-each/xsl:if/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:otherwise/fo:table-row/fo:table-cell/fo:block/fo:inline[2]/xsl:choose/xsl:otherwise/xsl:value-of" x="253" y="74"/><block path="fo:root/fo:page-sequence/fo:flow/fo:block/fo:table/fo:table-body/fo:table-row/fo:table-cell/fo:block/fo:table/fo:table-body/xsl:choose[1]/xsl:otherwise/fo:table-row/fo:table-cell/fo:block/fo:inline[2]/xsl:value-of" x="253" y="74"/></template></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>

</metaInformation>

-->
