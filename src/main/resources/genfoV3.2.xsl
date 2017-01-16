<?xml version="1.0" encoding="UTF-8"?>
<!-- Genérica -->
<xsl:stylesheet version="3.2" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ventavehiculos="http://www.sat.gob.mx/ventavehiculos" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:jaxb="http://java.sun.com/xml/ns/jaxb" xmlns:xjc="http://java.sun.com/xml/ns/jaxb/xjc" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cfd="http://www.sat.gob.mx/cfd/2" xmlns:ecc="http://www.sat.gob.mx/ecc" xmlns:psgecfd="http://www.sat.gob.mx/psgecfd" xmlns:bfa2="http://www.buzonfiscal.com/ns/addenda/bf/2" xmlns:implocal="http://www.sat.gob.mx/implocal" xmlns:ecb="http://www.sat.gob.mx/ecb" xmlns:detallista="http://www.sat.gob.mx/detallista" xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xmlns:pfic="http://www.sat.gob.mx/pfic" xmlns:leyendasFisc="http://www.sat.gob.mx/leyendasFiscales" xmlns:iedu="http://www.sat.gob.mx/iedu" xmlns:donat="http://www.sat.gob.mx/donat" xmlns:terceros="http://www.sat.gob.mx/terceros" xmlns:divisas="http://www.sat.gob.mx/divisas" xmlns:tpe="http://www.sat.gob.mx/TuristaPasajeroExtranjero" xmlns:ns18="http://www.buzonfiscal.com/ns/xsd/bf/remision/52">
	<xsl:variable name="fo:layout-master-set">
		<fo:layout-master-set>
			<fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.1in" margin-right="0.1in">
				<fo:region-body margin-top="0.1in" margin-bottom="0.6in"/>
				<fo:region-after extent="0.5in" margin-left="0.2in" margin-right="0.1in"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
	</xsl:variable>
	<xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html"/>
	<xsl:template match="/cfdi:Comprobante">
		<fo:root>
			<xsl:copy-of select="$fo:layout-master-set"/>
			<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
				<fo:static-content flow-name="xsl-region-after">
					<fo:block text-align="center">
						<fo:table font-family="arial , helvetica , sans-serif" font-size="7pt" width="570px" border-spacing="0">
							<fo:table-column column-width="570px" />
							<fo:table-body start-indent="0pt">
								<fo:table-row>
									<fo:table-cell line-height="9.0pt" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-top="2mm" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center">
										<fo:block>
											<fo:inline font-size="6.0pt" font-weight="normal"> Este documento es una representacion impresa de un </fo:inline><fo:inline font-size="6.0pt" font-weight="normal" color="#B6571E">CFDI </fo:inline>
										</fo:block>
										<fo:block font-size="6.0pt">
											Hoja <fo:page-number font-weight="normal"/>  de <fo:page-number-citation ref-id="SV_RefID_PageTotal"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<fo:block background-color="white">
						<fo:table start-indent="((8.5in - 0.1in - 0.1in) - 170mm) div 2" end-indent="((8.5in - 0.1in - 0.1in) - 170mm) div 2" border-bottom-color="#AAC2CE" border-left-color="#AAC2CE" border-right-color="#AAC2CE" border-top-color="#AAC2CE" height="792px" padding="15" text-align="center" width="612px" space-before.optimum="0pt" space-after.optimum="0pt" table-layout="fixed">
							<fo:table-column column-width="560px"/>
							<fo:table-body>
								<fo:table-row border-bottom-color="#AAC2CE" border-left-color="#AAC2CE" border-right-color="#AAC2CE" border-top-color="#AAC2CE">
									<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" padding-bottom="15px" padding-left="15px" padding-right="15px" padding-top="15px" border-style="solid" border-width="1pt" border-color="white" padding-start="15pt" padding-end="15pt" padding-before="15pt" padding-after="15pt" display-align="before" text-align="start">
										<fo:block>
											<fo:table start-indent="((8.5in - 0.1in - 0.1in) - 582px) div 2" end-indent="((8.5in - 0.1in - 0.1in) - 582px) div 2" border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" padding="0" text-align="center" width="200mm" space-before.optimum="1pt" space-after.optimum="2pt" table-layout="fixed">
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-body>
													<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@vigente='false'">
														<fo:table-row border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm">
															<fo:table-cell background-color="#666666" border-bottom-color="#FFFFFF" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm" font-style="normal" height="4.5mm" padding-top="1.2mm" number-columns-spanned="10" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline color="#FFFFFF" font-size="7.5pt" font-weight="bold">COMPROBANTE CANCELADO
												</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px">
															<fo:table-cell background-color="#FFFFFF" border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height=".1mm" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="center">
																<fo:block/>
															</fo:table-cell>
														</fo:table-row>
													</xsl:if>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="0px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="4" display-align="center" text-align="start">
															<fo:block>
																<fo:inline color="#000000" font-size="7.5pt" font-weight="bold">
																	<xsl:choose>
																		<xsl:when test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:TipoDocumento/@descripcion">
																			<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:TipoDocumento/@descripcion"/>
																		</xsl:when>
																		<xsl:when test="./@tipoDeComprobante"> 
																			Comprobante de <xsl:value-of select="./@tipoDeComprobante"/>
																		</xsl:when>
																		<xsl:otherwise> Folio </xsl:otherwise>
																	</xsl:choose>
																</fo:inline>
																<fo:inline color="#295067" font-size="7.5pt">
																	<fo:inline color="#B6571E" font-size="8.3pt" font-weight="bold"> &#160;<xsl:value-of select="./@serie"/>
																	</fo:inline>
																</fo:inline>
																<fo:inline color="#B6571E" font-size="8.3pt" font-weight="bold">
																	<xsl:value-of select="./@folio"/>
																</fo:inline>
															</fo:block>
															<xsl:for-each select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Extra">
																<xsl:if test="./@atributo='ClaveTransportista'">
																	<fo:block>
																		<fo:inline font-size="7.5pt">Clave
																			Transportista&#160;</fo:inline>
																		<fo:inline color="#B6571E" font-size="8.3pt">
																			<xsl:value-of select="./@valor "/>
																		</fo:inline>
																	</fo:block>
																</xsl:if>
															</xsl:for-each>
															<xsl:if test="substring-before( substring-after(  ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*CLAVE*' ), '*') ">
																<fo:block>
																	<fo:inline font-size="7.5pt">Clave
																		Transportista&#160;</fo:inline>
																	<fo:inline color="#B6571E" font-size="8.3pt">
																		<xsl:value-of select="substring-before( substring-after(  ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*CLAVE*' ), '*') "/>
																	</fo:inline>
																</fo:block>
															</xsl:if>
															<fo:block>
																<fo:inline font-size="7.5pt">Certificado Digital </fo:inline>
																<fo:inline color="#B6571E" font-size="8.3pt">
																	<xsl:value-of select="./@noCertificado"/>
																</fo:inline>
															</fo:block>
															<fo:block>
																<fo:inline font-size="7.5pt">Folio Fiscal </fo:inline>
																<fo:inline color="#B6571E" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Complemento/tfd:TimbreFiscalDigital/@UUID"/>
																</fo:inline>
															</fo:block>
															<xsl:for-each select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Extra">
																<xsl:if test="./@atributo='NoConvenioPemex'">
																	<fo:block>
																		<fo:inline font-size="7.5pt">No.
																			Convenio&#160;</fo:inline>
																		<fo:inline color="#B6571E" font-size="8.3pt">
																			<xsl:value-of select="./@valor "/>
																		</fo:inline>
																	</fo:block>
																</xsl:if>
															</xsl:for-each>
															<xsl:if test="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*CONVENIO*' ), '*') ">
																<fo:block>
																	<fo:inline font-size="7.5pt">No.
																		Convenio&#160;</fo:inline>
																	<fo:inline color="#B6571E" font-size="8.3pt">
																		<xsl:value-of select="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*CONVENIO*' ), '*') "/>
																	</fo:inline>
																</fo:block>
															</xsl:if>
															<fo:block>&#160;</fo:block>
															<fo:block>
																<fo:inline color="#295067" font-size="7.5pt">
																	<xsl:if test="./cfdi:Emisor/@nombre">
																		<fo:inline color="#295067" font-size="7.5pt" font-weight="bold">
																			<xsl:value-of select="./cfdi:Emisor/@nombre"/>
																		</fo:inline>
																	</xsl:if>
																</fo:inline>
															</fo:block>
															<fo:block>
																<fo:inline color="#295067" font-size="7.5pt" font-weight="bold">R.F.C. </fo:inline>
																<fo:inline color="#295067" font-size="7.5pt">
																	<fo:inline color="#295067" font-size="7.5pt" font-weight="bold">
																		<xsl:value-of select="./cfdi:Emisor/@rfc"/>
																	</fo:inline>
																</fo:inline>
															</fo:block>
															<xsl:for-each select="./cfdi:Emisor/cfdi:RegimenFiscal">
																<fo:block font-size="7.5pt">
																	<xsl:value-of select="./@Regimen"/>
																</fo:block>
															</xsl:for-each>
															<fo:block>
																<fo:inline color="#295067" font-size="7.5pt">
																	<xsl:value-of select="./cfdi:Emisor/cfdi:DomicilioFiscal/@calle"/>
																	<xsl:if test="./cfdi:Emisor/cfdi:DomicilioFiscal/@noExterior">&#160; No. <xsl:value-of select="./cfdi:Emisor/cfdi:DomicilioFiscal/@noExterior"/>
																	</xsl:if>
																	<xsl:if test="./cfdi:Emisor/cfdi:DomicilioFiscal/@noInterior">&#160;-&#160;<xsl:value-of select="./cfdi:Emisor/cfdi:DomicilioFiscal/@noInterior"/>
																	</xsl:if>
																	<xsl:if test="./cfdi:Emisor/cfdi:DomicilioFiscal/@referencia">&#160;<xsl:value-of select="./cfdi:Emisor/cfdi:DomicilioFiscal/@referencia"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
															<fo:block>
																<fo:inline color="#295067" font-size="7.5pt">
																	<xsl:if test="./cfdi:Emisor/cfdi:DomicilioFiscal/@colonia">
																		<xsl:value-of select="./cfdi:Emisor/cfdi:DomicilioFiscal/@colonia"/>&#160;</xsl:if> C.P. <xsl:value-of select="./cfdi:Emisor/cfdi:DomicilioFiscal/@codigoPostal"/>&#160; <xsl:if test="./cfdi:Emisor/cfdi:DomicilioFiscal/@localidad">
																			<xsl:value-of select="./cfdi:Emisor/cfdi:DomicilioFiscal/@localidad"/>
																		</xsl:if>
																</fo:inline>
															</fo:block>
															<fo:block>
																<fo:inline color="#295067" font-size="7.5pt">
																	<xsl:if test="./cfdi:Emisor/cfdi:DomicilioFiscal/@municipio">
																		<xsl:value-of select="concat( ./cfdi:Emisor/cfdi:DomicilioFiscal/@municipio, ', ' )"/>
																	</xsl:if>
																	<xsl:if test="./cfdi:Emisor/cfdi:DomicilioFiscal/@estado">
																		<xsl:value-of select="concat( ./cfdi:Emisor/cfdi:DomicilioFiscal/@estado, ' ' )"/>
																	</xsl:if>
																	<xsl:value-of select="./cfdi:Emisor/cfdi:DomicilioFiscal/@pais"/>
																</fo:inline>
															</fo:block>
															<fo:block>
																<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Emisor/@telefono">
																	<fo:inline color="#295067" font-size="7.5pt">Tel. </fo:inline>
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Emisor/@telefono"/>
																	</fo:inline>
																</xsl:if>
																<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Emisor/@fax">
																	<fo:inline color="#295067" font-size="7.5pt">   Fax. </fo:inline>
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Emisor/@fax"/>
																	</fo:inline>
																</xsl:if>
															</fo:block>
															<fo:block>
																<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Emisor/@emailComercial">
																	<fo:inline color="#295067" font-size="7.5pt">e-Mail: </fo:inline>
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Emisor/@emailComercial"/>&#160;&#160;&#160;&#160; </fo:inline>
																</xsl:if>
																<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Emisor/@web">
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Emisor/@web"/>
																	</fo:inline>
																</xsl:if>
															</fo:block>
															<fo:block>
																<fo:inline color="#295067" font-size="7.5pt">
																	Lugar de expedición:&#160;<xsl:value-of select="./@LugarExpedicion"/> 
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="0px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" vertical-align="top">
															<fo:block>
																<xsl:if test="./cfdi:Emisor/cfdi:ExpedidoEn/@calle">
																	<fo:inline color="#295067" font-size="7.5pt" font-style="italic">Expedido en</fo:inline>
																</xsl:if>
															</fo:block>
															<fo:block>
																<xsl:if test="./cfdi:Emisor/cfdi:ExpedidoEn/@calle">
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:if test="./cfdi:Emisor/cfdi:ExpedidoEn/@calle">
																			<xsl:value-of select="./cfdi:Emisor/cfdi:ExpedidoEn/@calle"/>
																			<xsl:if test="./cfdi:Emisor/cfdi:ExpedidoEn/@noExterior">
																				No. <xsl:value-of select="./cfdi:Emisor/cfdi:ExpedidoEn/@noExterior"/>&#160;</xsl:if>
																			<xsl:if test="./cfdi:Emisor/cfdi:ExpedidoEn/@noInterior">&#160;-&#160;<xsl:value-of select="concat( ./cfdi:Emisor/cfdi:ExpedidoEn/@noInterior, ' ' )"/>
																			</xsl:if>
																		</xsl:if>
																	</fo:inline>
																</xsl:if>
															</fo:block>
															<xsl:if test="./cfdi:Emisor/cfdi:ExpedidoEn/@calle">
																<fo:block>
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:if test="./cfdi:Emisor/cfdi:ExpedidoEn/@colonia">
																			<xsl:value-of select="./cfdi:Emisor/cfdi:ExpedidoEn/@colonia"/>&#160;</xsl:if>
																		<xsl:if test="./cfdi:Emisor/cfdi:ExpedidoEn/@codigoPostal">C.P. <xsl:value-of select="./cfdi:Emisor/cfdi:ExpedidoEn/@codigoPostal"/>
																		</xsl:if>
																	</fo:inline>
																</fo:block>
																<fo:block>
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:if test="./cfdi:Emisor/cfdi:ExpedidoEn/@localidad">
																			<xsl:value-of select="./cfdi:Emisor/cfdi:ExpedidoEn/@localidad"/>
																		</xsl:if>
																		<xsl:if test="./cfdi:Emisor/cfdi:ExpedidoEn/@municipio">
																			<xsl:value-of select="concat( ./cfdi:Emisor/cfdi:ExpedidoEn/@municipio, ', ' )"/>
																		</xsl:if>
																		<xsl:if test="./cfdi:Emisor/cfdi:ExpedidoEn/@estado">
																			<xsl:value-of select="concat( ./cfdi:Emisor/cfdi:ExpedidoEn/@estado, ' ' )"/>
																		</xsl:if>
																		<xsl:value-of select="./cfdi:Emisor/cfdi:ExpedidoEn/@pais"/>
																	</fo:inline>
																</fo:block>
															</xsl:if>
															<fo:block>
																<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:ExpedidoEn/@telefono">
																	<fo:inline color="#295067" font-size="7.5pt">Tel. </fo:inline>
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:ExpedidoEn/@telefono"/>
																	</fo:inline>
																</xsl:if>
																<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:ExpedidoEn/@email">
																	<fo:inline color="#295067" font-size="7.5pt">&#160;&#160;&#160; e-Mail:</fo:inline>
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:ExpedidoEn/@email"/>
																	</fo:inline>
																</xsl:if>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" font-size="9px" font-style="normal" height="1mm" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" number-columns-spanned="3" text-align="center">
															<fo:block><fo:external-graphic src="userstyle/nuevo_logo.jpg" content-height="36mm" content-width="58mm" height="36mm" width="58mm" space-before.optimum="0pt" space-after.optimum="0pt"/></fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="8px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="7" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="0px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#dfe5e7" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block>
																<fo:inline padding-top="1mm" background-color="#DFE5E7" background-repeat="no-repeat" font-size="8.3pt" font-weight="bold">Cliente:</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0.1mm" font-size="9px" font-style="normal" height="0.1mm" border-style="solid" border-width="0.2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#999999" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0.1mm" font-size="9px" font-style="normal" height="0.2mm" border-style="solid" border-width="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#ffffff" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Fecha
												de Emisión:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:if test="./@fecha">
																		<xsl:call-template name="formateaFecha">
																			<xsl:with-param name="sep" select="'/'"/>
																			<xsl:with-param name="valor" select="./@fecha"/>
																		</xsl:call-template>
																	</xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">R.F.C.:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Receptor/@rfc"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#FFFFFF" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Nombre o Razón Social:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="8" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Receptor/@nombre"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													
													<xsl:if test="./cfdi:Receptor/cfdi:Domicilio/@calle or ./cfdi:Receptor/cfdi:Domicilio/@noExterior">
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>													
													
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Calle:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Receptor/cfdi:Domicilio/@calle"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Número:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Receptor/cfdi:Domicilio/@noExterior"/>
																	<xsl:if test="./cfdi:Receptor/cfdi:Domicilio/@noInterior">&#160;-&#160; <xsl:value-of select="./cfdi:Receptor/cfdi:Domicilio/@noInterior"/></xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													</xsl:if>
													
													<xsl:if test="./cfdi:Receptor/cfdi:Domicilio/@referencia or ./cfdi:Receptor/cfdi:Domicilio/@colonia">
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Referencia:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Receptor/cfdi:Domicilio/@referencia"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Colonia:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">																	
																	<xsl:value-of select="./cfdi:Receptor/cfdi:Domicilio/@colonia"/>																	
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													</xsl:if>
													
													<xsl:if test="./cfdi:Receptor/cfdi:Domicilio/@codigoPostal or ./cfdi:Receptor/cfdi:Domicilio/@municipio">
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>													
													
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Código Postal:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Receptor/cfdi:Domicilio/@codigoPostal"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Municipio:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:if test="./cfdi:Receptor/cfdi:Domicilio/@localidad">
																		<xsl:value-of select="./cfdi:Receptor/cfdi:Domicilio/@localidad"/>,&#160; </xsl:if>
																		<xsl:value-of select="./cfdi:Receptor/cfdi:Domicilio/@municipio"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													</xsl:if>
													
													<xsl:if test="./cfdi:Receptor/cfdi:Domicilio/@estado or ./cfdi:Receptor/cfdi:Domicilio/@pais">
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>													
													
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Estado:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Receptor/cfdi:Domicilio/@estado"/>																	
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">País:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Receptor/cfdi:Domicilio/@pais"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													</xsl:if>
													
													<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Receptor/@telefono or ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Receptor/@email">
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>													
													
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Teléfono:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Receptor/@telefono"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">
												e-Mail:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Receptor/@email"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													</xsl:if>
													
													<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Receptor/@noCliente or ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Receptor/@noProveedor">
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.2mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>													
													
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">No.
												de Cliente:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">																	
																	<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Receptor/@noCliente"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt"> No.
												de Proveedor:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Receptor/@noProveedor"/>																	
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													</xsl:if>
													
													<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@noOrden or ./@formaDePago">
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt"> No.
												de Orden:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@noOrden"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Forma
												de Pago:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./@formaDePago"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													</xsl:if>
													
													<xsl:if test="./@metodoDePago or ./@NumCtaPago">
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Método de pago:&#160;</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./@metodoDePago"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Número de cuenta:&#160;</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./@NumCtaPago"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													</xsl:if>
													
													<xsl:if test="./@condicionesDePago">
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">
													Condiciones de Pago:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="8" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">																	
																	<xsl:value-of select="./@condicionesDePago"/>																	
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													</xsl:if>
													
													<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@agenteVentas or ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@comprador">
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>													
													
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">
												Agente de Ventas:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">																	
																	<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@agenteVentas"/>																	
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Comprador:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@comprador"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													</xsl:if>
													
													<xsl:if test="./@Moneda or ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@tipoMoneda or ./@TipoCambio or ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@tipoCambio">
														<fo:table-row>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
																<fo:block/>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
																<fo:block/>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
																<fo:block/>
															</fo:table-cell>
														</fo:table-row>
														
														<fo:table-row>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
																<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																	<fo:inline color="#525252" font-size="8.3pt">
																		Moneda:</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
																<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																	<fo:inline color="#295067" font-size="8.3pt">
																		<xsl:choose>
																			<xsl:when test="./@Moneda">	<xsl:value-of select="./@Moneda"/></xsl:when>
																			<xsl:otherwise><xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@tipoMoneda"/></xsl:otherwise>
																		</xsl:choose>	
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
																<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																	<fo:inline color="#525252" font-size="8.3pt">Tipo
																		de Cambio:</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
																<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																	<fo:inline color="#295067" font-size="8.3pt">
																		<xsl:choose>
																			<xsl:when test="./@TipoCambio">	<xsl:value-of select="./@TipoCambio"/></xsl:when>
																			<xsl:otherwise><xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@tipoCambio"/></xsl:otherwise>
																		</xsl:choose>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:if>
													
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<xsl:for-each select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Extra">
																<xsl:if test="./@atributo='NoRelacionPemex'">
																	<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">No. de
												Relación:</fo:inline>
																	</fo:block>
																</xsl:if>
															</xsl:for-each>
															<xsl:if test="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*RELACION*' ), '*') ">
																<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																	<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">No. de
												Relación:</fo:inline>
																</fo:block>
															</xsl:if>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<xsl:for-each select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Extra">
																<xsl:if test="./@atributo='NoRelacionPemex'">
																	<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																		<fo:inline color="#295067" font-size="8.3pt">
																			<xsl:value-of select="./@valor "/>
																		</fo:inline>
																	</fo:block>
																</xsl:if>
															</xsl:for-each>
															<xsl:if test="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*RELACION*' ), '*') ">
																<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																	<fo:inline color="#295067" font-size="8.3pt">
																		<xsl:value-of select="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*RELACION*' ), '*') "/>
																	</fo:inline>
																</fo:block>
															</xsl:if>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<xsl:for-each select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Extra">
																<xsl:if test="./@atributo='NoCedulaPemex'">
																	<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																		<fo:inline color="#525252" font-size="8.3pt">No.
												de Cédula:</fo:inline>
																	</fo:block>
																</xsl:if>
															</xsl:for-each>
															<xsl:if test="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*CEDULA*' ), '*') ">
																<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																	<fo:inline color="#525252" font-size="8.3pt">No.
												de Cédula:</fo:inline>
																</fo:block>
															</xsl:if>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<xsl:for-each select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Extra">
																<xsl:if test="./@atributo='NoCedulaPemex'">
																	<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																		<fo:inline color="#295067" font-size="8.3pt">
																			<xsl:value-of select="./@valor "/>
																		</fo:inline>
																	</fo:block>
																</xsl:if>
															</xsl:for-each>
															<xsl:if test="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*CEDULA*' ), '*') ">
																<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																	<fo:inline color="#295067" font-size="8.3pt">
																		<xsl:value-of select="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*CEDULA*' ), '*') "/>
																	</fo:inline>
																</fo:block>
															</xsl:if>
														</fo:table-cell>
													</fo:table-row>
													<xsl:if test="./@tipoDeComprobante='traslado' or ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:TipoDocumento/@nombreCorto='NCA'">
														<fo:table-row>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm " font-size="9px" font-style="normal" height="2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" background-color="#FFFFFF" display-align="center" text-align="start">
																<fo:block/>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-repeat="no-repeat" border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="0.2mm" border-style="solid" border-width="0pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="5" display-align="center" text-align="start">
																<fo:block/>
															</fo:table-cell>
															<fo:table-cell background-repeat="no-repeat" border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="0.2mm" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="5" display-align="center" text-align="start">
																<fo:block/>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-repeat="no-repeat" border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="0.2mm" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#aac2ce" number-columns-spanned="10" display-align="center" text-align="start">
																<fo:block/>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-repeat="no-repeat" border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="0.2mm" border-style="solid" border-width="1pt" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="white" number-columns-spanned="10" display-align="center" text-align="start">
																<fo:block/>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-repeat="no-repeat" border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#dfe5e7" number-columns-spanned="5" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline background-color="#DFE5E7" background-repeat="no-repeat" font-size="8.3pt" font-weight="bold">Origen:</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell background-repeat="no-repeat" border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="0px" border-style="solid" border-width="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#dfe5e7" number-columns-spanned="5" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline background-color="#DFE5E7" background-repeat="no-repeat" font-size="8.3pt" font-weight="bold">Destino:</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-repeat="no-repeat" border-bottom-color="#AAC2CE" border-bottom-style="solid" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#525252" font-size="9px" font-style="normal" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="5" display-align="center" text-align="start">
																<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@nombre">
																	<fo:block height="0.5mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="5px">
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@rfc"/>
																		</fo:inline>
																	</fo:block>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@nombre"/>
																		</fo:inline>
																	</fo:block>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@calle"/>&#160;<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@numero"/>
																		</fo:inline>
																	</fo:block>
																	<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@referencia">
																		<fo:block>
																			<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																				<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@referencia"/>
																			</fo:inline>
																		</fo:block>
																	</xsl:if>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@colonia"/>
																			<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@codigoPostal"> C.P.&#160;<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@codigoPostal"/>
																			</xsl:if>
																		</fo:inline>
																	</fo:block>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@municipio"/>
																			<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@ciudad"> &#160;<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@ciudad"/>
																			</xsl:if> &#160;<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@estado"/> &#160;<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@pais"/>
																		</fo:inline>
																	</fo:block>
																	<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@claveIdentificacion">
																		<fo:block>
																			<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt"> Clave de
												Identificación:&#160;<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Remitente/@claveIdentificacion"/>
																			</fo:inline>
																		</fo:block>
																	</xsl:if>
																</xsl:if>
															</fo:table-cell>
															<fo:table-cell background-repeat="no-repeat" border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" number-columns-spanned="5" text-align="start">
																<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@nombre">
																	<fo:block height="0.5mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="5px">
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@rfc"/>
																		</fo:inline>
																	</fo:block>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@nombre"/>
																		</fo:inline>
																	</fo:block>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@calle"/>&#160;<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@numero"/>
																		</fo:inline>
																	</fo:block>
																	<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@referencia">
																		<fo:block>
																			<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																				<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@referencia"/>
																			</fo:inline>
																		</fo:block>
																	</xsl:if>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@colonia"/>
																			<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@codigoPostal"> C.P.&#160;<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@codigoPostal"/>
																			</xsl:if>
																		</fo:inline>
																	</fo:block>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@municipio"/>
																			<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@ciudad"> &#160;<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@ciudad"/>
																			</xsl:if> &#160;<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@estado"/> &#160;<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@pais"/>
																		</fo:inline>
																	</fo:block>
																	<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@claveIdentificacion">
																		<fo:block>
																			<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt"> Clave de
												Identificación:&#160;<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Destino/@claveIdentificacion"/>
																			</fo:inline>
																		</fo:block>
																	</xsl:if>
																</xsl:if>
															</fo:table-cell>
														</fo:table-row>
													</xsl:if>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" font-size="9px" font-style="normal" height="2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start" background-color="#FFFFFF">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" font-size="9px" font-style="normal" height="0.2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start" background-color="#AAC2CE">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row border-top-color="#AAC2CE" border-top-style="none" border-top-width="0mm">
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="0px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#dfe5e7" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block>
																<fo:inline padding-top="0.8mm" background-color="#DFE5E7" background-repeat="no-repeat" font-size="8.3pt" font-weight="bold">Conceptos:</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="solid" border-top-width="0.1mm" font-size="9px" font-style="normal" height=".1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" text-align="center" display-align="center">
															<fo:block>
																<!--inicio-->
																<fo:table border-bottom-color="#AAC2CE" border-left-color="#AAC2CE" border-right-color="#AAC2CE" border-top-color="#AAC2CE" padding="0" width="200mm" space-before.optimum="1pt" space-after.optimum="2pt" table-layout="fixed">
																	<fo:table-column column-width="15mm"/>
																	<fo:table-column column-width="15mm"/>
																	<fo:table-column column-width="27mm"/>
																	<fo:table-column column-width="63mm"/>
																	<fo:table-column column-width="25mm"/>
																	<fo:table-column column-width="25mm"/>
																	<fo:table-body>
																		<fo:table-row>
																			<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#525252" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#F2F2F2" display-align="before" text-align="center">
																				<fo:block>
																					<fo:inline background-color="#F2F2F2" color="#525252" font-size="8.3pt" font-weight="bold">Clave</fo:inline>
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#F2F2F2" display-align="before" text-align="center">
																				<fo:block>
																					<fo:inline background-color="#F2F2F2" color="#525252" font-size="8.3pt" font-weight="bold">Cantidad</fo:inline>
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#525252" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#F2F2F2" display-align="before" text-align="center">
																				<fo:block>
																					<fo:inline background-color="#F2F2F2" color="#525252" font-size="8.3pt" font-weight="bold">Unidad de Medida</fo:inline>
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" width="250px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#F2F2F2" display-align="before" text-align="center">
																				<fo:block>
																					<fo:inline background-color="#F2F2F2" color="#525252" font-size="8.3pt" font-weight="bold">Descripción</fo:inline>
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#525252" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#F2F2F2" display-align="before" text-align="center">
																				<fo:block>
																					<fo:inline background-color="#F2F2F2" color="#525252" font-size="8.3pt" font-weight="bold">Precio Unidad</fo:inline>
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#F2F2F2" display-align="before" text-align="center">
																				<fo:block>
																					<fo:inline background-color="#F2F2F2" color="#525252" font-size="8.3pt" font-weight="bold">Importe</fo:inline>
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row>
																		<fo:table-row border-bottom-color="#AAC2CE" border-left-color="#AAC2CE" border-right-color="#AAC2CE" border-top-color="#AAC2CE">
																			<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="0.1mm" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#aac2ce" number-columns-spanned="6" display-align="center" text-align="start">
																				<fo:block/>
																			</fo:table-cell>
																		</fo:table-row>
																		<xsl:for-each select="./cfdi:Conceptos/cfdi:Concepto">
																			<fo:table-row>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="5px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																					<fo:block>
																						<fo:inline color="#295067" font-size="8.3pt">
																							<xsl:value-of select="./@noIdentificacion"/>
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																					<fo:block>
																						<fo:inline color="#295067" font-size="8.3pt">
																							<xsl:value-of select="./@cantidad"/>
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="5px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																					<fo:block>
																						<fo:inline color="#295067" font-size="8.3pt">
																							<xsl:value-of select="./@unidad"/>
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="0px" padding-right="0px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="start">
																					<fo:block>
																						<!--Tabla con Version3.2-->
																						<fo:table border-left-color="#AAC2CE" border-right-color="#AAC2CE" border-top-color="#AAC2CE" padding="0" width="220px" space-before.optimum="1pt" space-after.optimum="2pt" table-layout="fixed">
																							<fo:table-column column-width="20mm"/>
																							<fo:table-column column-width="20mm"/>
																							<fo:table-body>
																								<fo:table-row>
																									<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="0px" padding-top="5px" padding-right="0px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="start" number-columns-spanned="2">
																										<fo:block>
																											<fo:inline color="#295067" font-size="8.3pt">
																												<xsl:value-of select="./@descripcion"/>
																											</fo:inline>
																											<xsl:if test="./cfdi:CuentaPredial/@numero">
																												<fo:block space-before.optimum="0pt" space-after.optimum="0pt">
																													<fo:block border-bottom-color="#295067" border-left-color="#295067" border-right-color="#295067" border-top-color="#295067" color="#295067" font-size="9px" font-style="normal">
																														<fo:inline color="#295067" font-size="8.3pt">&#160;Cuenta Predial: </fo:inline>
																														<fo:inline color="#295067" font-size="8.3pt">
																															<xsl:value-of select="./cfdi:CuentaPredial/@numero"/>
																														</fo:inline>
																													</fo:block>
																												</fo:block>
																											</xsl:if>
																											<xsl:if test="./cfdi:InformacionAduanera">
																												<xsl:for-each select="./cfdi:InformacionAduanera">
																													<fo:block space-before.optimum="0pt" space-after.optimum="0pt">
																														<fo:block border-bottom-color="#295067" border-left-color="#295067" border-right-color="#295067" border-top-color="#295067" color="#295067" font-size="9px" font-style="normal">
																															<fo:inline color="#295067" font-size="8.3pt">Aduana: </fo:inline>
																															<fo:inline color="#295067" font-size="8.3pt">
																																<xsl:value-of select="./@aduana"/>
																															</fo:inline>
																														</fo:block>
																													</fo:block>
																													<fo:block space-before.optimum="0pt" space-after.optimum="0pt">
																														<fo:block border-bottom-color="#295067" border-left-color="#295067" border-right-color="#295067" border-top-color="#295067" color="#295067" font-size="9px" font-style="normal">
																															<fo:inline color="#295067" font-size="8.3pt">No.
																							de Pedimento: </fo:inline>
																															<fo:inline color="#295067" font-size="8.3pt">
																																<xsl:value-of select="./@numero"/>
																															</fo:inline>
																														</fo:block>
																														<fo:block border-bottom-color="#295067" border-left-color="#295067" border-right-color="#295067" border-top-color="#295067" color="#295067" font-size="9px" font-style="normal">
																															<fo:inline color="#295067" font-size="8.3pt">Fecha: </fo:inline>
																															<fo:inline color="#295067" font-size="8.3pt">
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
																										</fo:block>
																										
																										
																									</fo:table-cell>
																								</fo:table-row>
																								<!--Para escuelas-->
																								<xsl:for-each select="./cfdi:ComplementoConcepto/iedu:instEducativas">
																									<fo:table-row>
																										<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="0px" padding-right="0px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="start" number-columns-spanned="2">
																											<fo:block>
																												<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">
																			Alumno:&#160;</fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@nombreAlumno"/>
																												</fo:inline>
																											</fo:block>
																										</fo:table-cell>
																									</fo:table-row>
																									<fo:table-row>
																										<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="0px" padding-right="0px" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="start" number-columns-spanned="2">
																											<fo:block>
																												<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">Num. de Autorización de la Institución:&#160;</fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@autRVOE"/>
																												</fo:inline>
																											</fo:block>
																										</fo:table-cell>
																									</fo:table-row>
																									<fo:table-row>
																										<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="0px" padding-right="0px" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="start" number-columns-spanned="2">
																											<fo:block>
																												<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">C.U.R.P.:&#160;</fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@CURP"/>
																												</fo:inline>
																											</fo:block>
																										</fo:table-cell>
																									</fo:table-row>
																									<fo:table-row>
																										<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0.1mm" border-top-color="#AAC2CE" color="#295067" font-size="9px" font-style="normal" padding-bottom="0px" padding-right="0px" border-width="1pt" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="start" number-columns-spanned="2">
																											<fo:block>
																												<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">Nivel Educativo:&#160;</fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@nivelEducativo"/>
																												</fo:inline>
																											</fo:block>
																										</fo:table-cell>
																									</fo:table-row>
																								</xsl:for-each>
																								<!--Fin de dato escuela-->
																								<!--Hombre-Camion-->
																								<xsl:for-each select="./cfdi:ComplementoConcepto/pfic:PFintegranteCoordinado">
																									<fo:table-row>
																										<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start">
																											<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																												<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">Clave Vehicular:&#160;</fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@ClaveVehicular"/>
																												</fo:inline>
																											</fo:block>
																										</fo:table-cell>
																										<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="4" display-align="center" text-align="start">
																											<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																												<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">No.Placa: &#160;</fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@Placa"/>&#160;
																			</fo:inline>
																											</fo:block>
																										</fo:table-cell>
																									</fo:table-row>
																								</xsl:for-each>
																								<!-- Compra de Vehiculos extranjeros-->
																								<xsl:for-each select="./cfdi:ComplementoConcepto/ventavehiculos:VentaVehiculos">
																									<fo:table-row>
																										<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
																											<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																												<fo:inline color="#295067" font-size="8.3pt">Clave Vehicular &#160;</fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@ClaveVehicular"/>
																												</fo:inline>
																											</fo:block>
																											<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																												<fo:inline color="#295067" font-size="8.3pt">Versión &#160;</fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@version"/>
																												</fo:inline>
																											</fo:block>
																										</fo:table-cell>
																									</fo:table-row>
																								</xsl:for-each>
																								<!--Pasajeros Extranjeros-->
																								<xsl:for-each select="./cfdi:ComplementoConcepto/tpe:TuristaPasajeroExtranjero/tpe:datosTransito">
																									<fo:table-row>
																										<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
																											<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																												<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">Empresa de Transporte:&#160;</fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@EmpresaTransporte"/>
																												</fo:inline>
																											</fo:block>
																										</fo:table-cell>
																									</fo:table-row>
																									<fo:table-row>
																										<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
																											<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																												<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">Nacionalidad:&#160;</fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@Nacionalidad"/>
																												</fo:inline>
																											</fo:block>
																										</fo:table-cell>
																									</fo:table-row>
																									<fo:table-row>
																										<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
																											<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																												<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">Num. de Id:&#160;</fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@NumeroId"/>
																												</fo:inline>
																											</fo:block>
																										</fo:table-cell>
																									</fo:table-row>
																									<fo:table-row>
																										<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" number-columns-spanned="2" text-align="start">
																											<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																												<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">Vía:&#160;</fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@Via"/>
																												</fo:inline>
																											</fo:block>
																										</fo:table-cell>
																									</fo:table-row>
																									<fo:table-row>
																										<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" number-columns-spanned="2" text-align="start">
																											<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																												<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">Tipo de Id:&#160;</fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@TipoId"/>
																												</fo:inline>
																											</fo:block>
																										</fo:table-cell>
																									</fo:table-row>
																								</xsl:for-each>
																							</fo:table-body>
																						</fo:table>
																						<!-- Fin de la tabla con Version3.2-->
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="5px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right">
																					<fo:block>
																						<fo:inline color="#295067" font-size="8.3pt">
																							<xsl:value-of select="format-number(./@valorUnitario, '###,##0.00' )"/>
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="5px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right">
																					<fo:block>
																						<fo:inline color="#295067" font-size="8.3pt">
																							<xsl:choose>
																								<xsl:when test="contains(./@importe,'.')">
																									<xsl:call-template name="ImpCon2dec"/>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:value-of select="format-number(./@importe, '###,##0.00')"/>
																								</xsl:otherwise>
																							</xsl:choose>
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																			<xsl:if test="./cfdi:Parte/@cantidad">
																				<fo:table-row border-bottom-color="#AAC2CE" border-left-color="#AAC2CE" border-right-color="#AAC2CE" border-top-color="#AAC2CE">
																					<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="5px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																						<fo:block/>
																					</fo:table-cell>
																					<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																						<fo:block>
																							<fo:inline color="#295067" font-size="8.3pt"> </fo:inline>
																						</fo:block>
																					</fo:table-cell>
																					<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																						<fo:block>
																							<fo:inline color="#295067" font-size="8.3pt"> </fo:inline>
																						</fo:block>
																					</fo:table-cell>
																					<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="1mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="start">
																						<fo:block>
																							<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">Partes</fo:inline>
																						</fo:block>
																					</fo:table-cell>
																					<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="5px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right">
																						<fo:block>
																							<fo:inline color="#295067" font-size="8.3pt"> </fo:inline>
																						</fo:block>
																					</fo:table-cell>
																					<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="1mm" padding-bottom="0px" padding-left="0px" padding-right="5px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right">
																						<fo:block>
																							<fo:inline color="#295067" font-size="8.3pt"> </fo:inline>
																						</fo:block>
																					</fo:table-cell>
																				</fo:table-row>
																				<xsl:for-each select="./cfdi:Parte">
																					<fo:table-row border-bottom-color="#AAC2CE" border-left-color="#AAC2CE" border-right-color="#AAC2CE" border-top-color="#AAC2CE">
																						<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="5px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																							<fo:block>
																								<fo:inline color="#295067" font-size="8.3pt"> </fo:inline>
																							</fo:block>
																						</fo:table-cell>
																						<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																							<fo:block>
																								<fo:inline color="#295067" font-size="8.3pt"> </fo:inline>
																							</fo:block>
																						</fo:table-cell>
																						<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																							<fo:block>
																								<fo:inline color="#295067" font-size="8.3pt"> </fo:inline>
																							</fo:block>
																						</fo:table-cell>
																						<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="start">
																							<fo:block>
																								<fo:inline color="#295067" font-size="8.3pt">
																									<xsl:value-of select="./@cantidad"/>
																								</fo:inline>
																								<fo:inline color="#295067" font-size="8.3pt">  </fo:inline>
																								<fo:inline color="#295067" font-size="8.3pt">
																									<xsl:value-of select="./@unidad"/>
																								</fo:inline>
																								<fo:inline color="#295067" font-size="8.3pt">&#160;</fo:inline>
																								<fo:block space-before.optimum="0pt" space-after.optimum="0pt">
																									<fo:block border-bottom-color="#295067" border-left-color="#295067" border-right-color="#295067" border-top-color="#295067" color="#295067" font-size="9px" font-style="normal">
																										<fo:inline color="#295067" font-size="8.3pt">
																											<xsl:value-of select="./@noIdentificacion"/>
																										</fo:inline>
																										<fo:inline color="#295067" font-size="8.3pt">  </fo:inline>
																										<fo:inline color="#295067" font-size="8.3pt">
																											<xsl:value-of select="./@descripcion"/>
																										</fo:inline>
																									</fo:block>
																								</fo:block>
																								<xsl:if test="./cfdi:InformacionAduanera">
																									<xsl:for-each select="./cfdi:InformacionAduanera">
																										<fo:block space-before.optimum="0pt" space-after.optimum="0pt">
																											<fo:block border-bottom-color="#295067" border-left-color="#295067" border-right-color="#295067" border-top-color="#295067" color="#295067" font-size="9px" font-style="normal">
																												<fo:inline color="#295067" font-size="8.3pt">Aduana: </fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@aduana"/>
																												</fo:inline>
																											</fo:block>
																										</fo:block>
																										<fo:block space-before.optimum="0pt" space-after.optimum="0pt">
																											<fo:block border-bottom-color="#295067" border-left-color="#295067" border-right-color="#295067" border-top-color="#295067" color="#295067" font-size="9px" font-style="normal">
																												<fo:inline color="#295067" font-size="8.3pt">No de
												Pedimento: </fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:value-of select="./@numero"/>
																												</fo:inline>
																											</fo:block>
																											<fo:block border-bottom-color="#295067" border-left-color="#295067" border-right-color="#295067" border-top-color="#295067" color="#295067" font-size="9px" font-style="normal">
																												<fo:inline color="#295067" font-size="8.3pt">Fecha: </fo:inline>
																												<fo:inline color="#295067" font-size="8.3pt">
																													<xsl:call-template name="formateaFechasinHora">
																														<xsl:with-param name="sep" select="'/'"/>
																														<xsl:with-param name="valor" select="./@fecha"/>
																													</xsl:call-template>
																												</fo:inline>
																											</fo:block>
																										</fo:block>
																									</xsl:for-each>
																								</xsl:if>
																							</fo:block>
																						</fo:table-cell>
																						<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="5px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right">
																							<fo:block>
																								<fo:inline color="#295067" font-size="8.3pt">
																									<xsl:value-of select="format-number(./@valorUnitario, '###,##0.00' )"/>
																								</fo:inline>
																							</fo:block>
																						</fo:table-cell>
																						<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="5px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right">
																							<fo:block>
																								<fo:inline color="#295067" font-size="8.3pt">
																									<xsl:value-of select="format-number(./@importe, '###,##0.00' )"/>
																								</fo:inline>
																							</fo:block>
																						</fo:table-cell>
																					</fo:table-row>
																				</xsl:for-each>
																			</xsl:if>
																			<xsl:choose>
																				<xsl:when test="./cfdi:ComplementoConcepto/ventavehiculos:VentaVehiculos/ventavehiculos:InformacionAduanera">
																			<fo:table-row border-bottom-color="#AAC2CE" border-left-color="#AAC2CE" border-right-color="#AAC2CE" border-top-color="#AAC2CE">
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="5px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																					<fo:block/>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																					<fo:block>
																						<fo:inline color="#295067" font-size="8.3pt"> </fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																					<fo:block>
																						<fo:inline color="#295067" font-size="8.3pt"> </fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="1mm" padding-bottom="0px" padding-left="3px" padding-right="0px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="start">
																					
																					<fo:block>
																						<fo:inline>
																							Aduana:&#160;</fo:inline>
																						<fo:inline font-size="8.3pt">
																							<xsl:value-of select="./cfdi:ComplementoConcepto/ventavehiculos:VentaVehiculos/ventavehiculos:InformacionAduanera/@aduana"/>
																						</fo:inline>
																					</fo:block>
																					<fo:block>
																						<fo:inline>
																							Numero:&#160;</fo:inline>
																						<fo:inline font-size="8.3pt">
																							<xsl:value-of select="./cfdi:ComplementoConcepto/ventavehiculos:VentaVehiculos/ventavehiculos:InformacionAduanera/@numero"/>
																						</fo:inline>
																					</fo:block>
																					<fo:block>
																						<fo:inline font-size="8.3pt">
																							Fecha:&#160;</fo:inline>
																						<fo:inline>
																							<xsl:value-of select="./cfdi:ComplementoConcepto/ventavehiculos:VentaVehiculos/ventavehiculos:InformacionAduanera/@fecha"/>
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="5px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right">
																					<fo:block>
																						<fo:inline color="#295067" font-size="8.3pt"> </fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="1mm" padding-bottom="0px" padding-left="0px" padding-right="5px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right">
																					<fo:block>
																						<fo:inline color="#295067" font-size="8.3pt"> </fo:inline>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																				</xsl:when>
																				<xsl:when test="./cfdi:ComplementoConcepto/ventavehiculos:VentaVehiculos/ventavehiculos:Parte">
																					<fo:table-row border-bottom-color="#AAC2CE" border-left-color="#AAC2CE" border-right-color="#AAC2CE" border-top-color="#AAC2CE">
																						<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="5px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																							<fo:block>
																								<fo:inline color="#295067" font-size="8.3pt"><xsl:value-of select="./cfdi:ComplementoConcepto/ventavehiculos:VentaVehiculos/ventavehiculos:Parte/@noIdentificacion"/></fo:inline>
																							</fo:block>
																						</fo:table-cell>
																						<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																							<fo:block>
																								<fo:inline color="#295067" font-size="8.3pt"><xsl:value-of select="./cfdi:ComplementoConcepto/ventavehiculos:VentaVehiculos/ventavehiculos:Parte/@cantidad"/></fo:inline>
																							</fo:block>
																						</fo:table-cell>
																						<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																							<fo:block>
																								<fo:inline color="#295067" font-size="8.3pt"><xsl:value-of select="./cfdi:ComplementoConcepto/ventavehiculos:VentaVehiculos/ventavehiculos:Parte/@unidad"/> </fo:inline>
																							</fo:block>
																						</fo:table-cell>
																						<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="1mm" padding-bottom="0px" padding-left="2px" padding-right="0px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="start">
																							<fo:block>
																								<fo:inline color="#295067" font-size="8.3pt"><xsl:value-of select="./cfdi:ComplementoConcepto/ventavehiculos:VentaVehiculos/ventavehiculos:Parte/@descripcion"/></fo:inline>
																							</fo:block>
																						</fo:table-cell>
																						<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="5px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right">
																							<fo:block>
																								<fo:inline color="#295067" font-size="8.3pt"><xsl:value-of select="format-number(./cfdi:ComplementoConcepto/ventavehiculos:VentaVehiculos/ventavehiculos:Parte/@valorUnitario, '###,##0.00####' )"/> </fo:inline>
																							</fo:block>
																						</fo:table-cell>
																						<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="1mm" padding-bottom="0px" padding-left="0px" padding-right="5px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right">
																							<fo:block>
																								<fo:inline color="#295067" font-size="8.3pt"><xsl:value-of select="format-number(./cfdi:ComplementoConcepto/ventavehiculos:VentaVehiculos/ventavehiculos:Parte/@importe, '###,##0.00####' )"/> </fo:inline>
																							</fo:block>
																						</fo:table-cell>
																					</fo:table-row>
																				</xsl:when>
																			</xsl:choose>
																		</xsl:for-each>
																	</fo:table-body>
																</fo:table>
																<!--Fin-->
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#525252" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="3px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right" number-columns-spanned="9">
															<fo:block>
																<fo:inline color="#525252" font-size="8.3pt" font-weight="normal">Subtotal :</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="0px" padding-right="5px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="right">
															<fo:block>
																<fo:inline color="#295067" font-size="8.3pt" font-weight="normal">
																	<xsl:choose>
								                                        <xsl:when test="contains(./@subTotal,'.')">
								                                            <xsl:call-template name="subtotal2dec"/>
								                                        </xsl:when>
								                                        <xsl:otherwise>
								                                            <xsl:value-of select="format-number(./@subTotal, '###,##0.00')"/>
								                                        </xsl:otherwise>
								                                    </xsl:choose>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<!-- Descuentos -->
													<xsl:if test="./@descuento>=0.00">
														<fo:table-row>
															<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="9" text-align="right" display-align="center">
																<fo:block>
																	<fo:inline color="#525252" font-size="8.3pt">Descuento </fo:inline>
																	<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@porcentajeDescuento">
																		<fo:inline color="#525252" font-size="8.3pt">
																			<xsl:value-of select="concat(' del ', ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@porcentajeDescuento, '% ' )"/>
																		</fo:inline>
																		<xsl:if test="./@motivoDescuento">
																			<fo:inline color="#525252" font-size="8.3pt">por </fo:inline>
																			<fo:inline color="#525252" font-size="8.3pt">
																				<xsl:value-of select="./@motivoDescuento"/>
																			</fo:inline>
																		</xsl:if>
																	</xsl:if>
																	<fo:inline color="#525252" font-size="8.3pt">:
												</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																<fo:block>
																	<fo:inline color="#295067" font-size="8.3pt">
																		<xsl:value-of select="./@descuento"/>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:if>
													<!-- Traslado de Impuestos -->
													<xsl:if test="./cfdi:Impuestos/cfdi:Traslados/cfdi:Traslado/@impuesto">
														<xsl:choose>
															<xsl:when test="./@version='1.0'">
																<xsl:for-each select="./cfdi:Impuestos/cfdi:Traslados/cfdi:Traslado">
																	<fo:table-row>
																		<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
																			<fo:block/>
																		</fo:table-cell>
																		<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="7" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#525252" font-size="8.3pt">
																					<xsl:value-of select="./@impuesto"/>
																				</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">
												&#160;: </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#295067" font-size="8.3pt">
																					<xsl:choose>
																						<xsl:when test="contains(./@importe,'.')">
																							<xsl:call-template name="Imp2dec"/>
																						</xsl:when>
																						<xsl:otherwise>
																							<xsl:value-of select="format-number(./@importe, '###,##0.00')"/>
																						</xsl:otherwise>
																					</xsl:choose>
																				</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<xsl:for-each select="./cfdi:Impuestos/cfdi:Traslados/cfdi:Traslado">
																	<fo:table-row>
																		<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="9" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#525252" font-size="8.3pt">
																					<xsl:value-of select="./@impuesto"/>
																				</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">&#160; <xsl:value-of select="./@tasa"/>
																				</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">%</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt"> :
												</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#295067" font-size="8.3pt">
																					<xsl:choose>
																						<xsl:when test="contains(./@importe,'.')">
																							<xsl:call-template name="Imp2dec"/>
																						</xsl:when>
																						<xsl:otherwise>
																							<xsl:value-of select="format-number(./@importe, '###,##0.00')"/>
																						</xsl:otherwise>
																					</xsl:choose>
																				</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																</xsl:for-each>
															</xsl:otherwise>
														</xsl:choose>
													</xsl:if>
													<!--Retenciones Impuesto-->
													<xsl:if test="./cfdi:Impuestos/cfdi:Retenciones/cfdi:Retencion/@impuesto">
														<xsl:for-each select="./cfdi:Impuestos/cfdi:Retenciones/cfdi:Retencion">
															<fo:table-row>
																<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="9" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./@impuesto"/> Retenido :
												</fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#295067" font-size="8.3pt">
																			<xsl:choose>
																				<xsl:when test="contains(./@importe,'.')">
																					<xsl:call-template name="Imp2dec"/>
																				</xsl:when>
																				<xsl:otherwise>
																					<xsl:value-of select="format-number(./@importe, '###,##0.00')"/>
																				</xsl:otherwise>
																			</xsl:choose>
																		</fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:for-each>
													</xsl:if>
													<xsl:choose>
														<xsl:when test="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*VALORI*' ), '*')">
															<fo:table-row>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#525252" font-size="8.3pt"> </fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="7" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#525252" font-size="8.3pt" font-weight="normal">Total:</fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#295067" font-size="8.3pt" font-weight="normal">
																			<xsl:if test="./@total">
																				<xsl:value-of select="format-number( ./@total, '###,##0.00' )"/>
																			</xsl:if>
																		</fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#525252" font-size="8.3pt"> </fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="7" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#525252" font-size="8.3pt" font-weight="normal">
																			<xsl:value-of select="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*NOMI*' ), '*')"/>:</fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#295067" font-size="8.3pt" font-weight="normal">
																			<xsl:value-of select="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*VALORI*' ), '*')"/>
																		</fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#525252" font-size="8.3pt"> </fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="7" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#525252" font-size="8.3pt" font-weight="bold">Total a pagar:</fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">
																			<xsl:value-of select="format-number(./@total - number(substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*VALORI*' ), '*')), '###,##0.00' )"/>
																		</fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:when>
														<xsl:otherwise>
															<xsl:if test="./cfdi:Complemento/implocal:ImpuestosLocales">
																<xsl:if test="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Extra/@atributo='T*TOTAL'">
																	<fo:table-row>
																		<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="9" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#525252" font-size="8.3pt" font-weight="bold">Total : </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">
																					<xsl:for-each select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Extra">
																						<xsl:if test="./@atributo = 'T*TOTAL'">
																							<xsl:value-of select="format-number(./@valor, '###,##0.00' )"/>
																						</xsl:if>
																					</xsl:for-each>
																				</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																</xsl:if>
																<xsl:for-each select="./cfdi:Complemento/implocal:ImpuestosLocales/implocal:TrasladosLocales">
																	<fo:table-row>
																		<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="9" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#525252" font-size="8.3pt">
																					<xsl:value-of select="./@ImpLocTrasladado"/>
																				</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">&#160; <xsl:value-of select="./@TasadeTraslado"/>
																				</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">%</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt"> :
												</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#295067" font-size="8.3pt">
																					<xsl:value-of select="format-number(./@Importe, '###,##0.00' )"/>
																				</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																</xsl:for-each>
																<xsl:for-each select="./cfdi:Complemento/implocal:ImpuestosLocales/implocal:RetencionesLocales">
																	<fo:table-row>
																		<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="9" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#525252" font-size="8.3pt">
																					<xsl:value-of select="./@ImpLocRetenido"/>
																				</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">&#160; <xsl:value-of select="./@TasadeRetencion"/>
																				</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">%</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">
												&#160;Retenido : </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#295067" font-size="8.3pt">
																					<xsl:value-of select="format-number(./@Importe, '###,##0.00' )"/>
																				</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																</xsl:for-each>
															</xsl:if>
															<xsl:for-each select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Extra">
																<xsl:if test="substring( ./@atributo, 1,2)='C*'">
																	<fo:table-row>
																		<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="9" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#525252" font-size="8.3pt" font-weight="bold">
																					<xsl:value-of select="substring( ./@atributo, 3)"/> : </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">
																					<xsl:value-of select="format-number(./@valor, '###,##0.00' )"/>
																				</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																</xsl:if>
															</xsl:for-each>
															<!-- CARGOS-->
															<fo:table-row>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="5" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#525252" font-size="8.3pt"> </fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="4" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#525252" font-size="8.3pt" font-weight="bold">Total a pagar : </fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">
																			<xsl:choose>
																				<xsl:when test="contains(./@total,'.')">
																					<xsl:call-template name="total2dec"/>
																				</xsl:when>
																				<xsl:otherwise>
																					<xsl:value-of select="format-number(./@total, '###,##0.00')"/>
																				</xsl:otherwise>
																			</xsl:choose>
																		</fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:otherwise>
													</xsl:choose>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block>
																<fo:inline font-size="8.3pt" font-weight="bold">Importe con letra:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" background-color="#F2F2F2" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="8" display-align="center" text-align="start">
															<fo:block>
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@totalConLetra"/>
																</fo:inline>
																<fo:inline color="#295067" font-size="8.3pt">&#160;</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start" vertical-align="top">
															<fo:block>
																<fo:inline font-size="8.3pt" font-weight="bold">Observaciones:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" background-color="#F2F2F2" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="8" display-align="center" text-align="start">
															<xsl:if test="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*CLAVE*' ), '*')">
																<fo:block>
																	<fo:inline color="#295067" font-size="9.0pt">
												ADDENDA:&#160;</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																		<xsl:value-of select="substring-before( substring-after(  ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*CLAVE*' ), '*') "/>
																	</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																		<xsl:value-of select="substring(substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*RELACION*' ), '*'),1,4) "/>
																	</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																		<xsl:value-of select="substring(substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*RELACION*' ), '*'),6,5) "/>
																	</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																		<xsl:value-of select="substring(substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*CEDULA*' ), '*'),1,1) "/>
																	</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																		<xsl:value-of select="substring(substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*CEDULA*' ), '*'),3,3) "/>
																	</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																		<xsl:value-of select="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*CONVENIO*' ), '*') "/>
																	</fo:inline>
																</fo:block>
															</xsl:if>
															<fo:block>
																<xsl:for-each select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Extra">
																	<xsl:if test="./@atributo='ClaveTransportista'">
																		<fo:inline color="#295067" font-size="9.0pt">
												ADDENDA:&#160;</fo:inline>
																		<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																			<xsl:value-of select="./@valor"/>
																		</fo:inline>
																		<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																	</xsl:if>
																</xsl:for-each>
																<xsl:for-each select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Extra">
																	<xsl:if test="./@atributo='NoRelacionPemex'">
																		<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																			<xsl:value-of select="substring-before(./@valor,'-')"/>
																		</fo:inline>
																		<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																		<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																			<xsl:value-of select="substring-after(./@valor, '-' )"/>
																		</fo:inline>
																		<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																	</xsl:if>
																</xsl:for-each>
																<xsl:for-each select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Extra">
																	<xsl:if test="./@atributo='NoCedulaPemex'">
																		<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																			<xsl:value-of select="substring-before(./@valor,'-')"/>
																		</fo:inline>
																		<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																		<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																			<xsl:value-of select="substring-after(./@valor, '-' )"/>
																		</fo:inline>
																		<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																	</xsl:if>
																</xsl:for-each>
																<xsl:for-each select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Extra">
																	<xsl:if test="./@atributo='NoConvenioPemex'">
																		<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																			<xsl:value-of select="./@valor"/>
																		</fo:inline>
																	</xsl:if>
																</xsl:for-each>
															</fo:block>
															<fo:block>
																<xsl:choose>
																	<xsl:when test="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*OBSERVACIONES*' ), '*')">
																		<fo:inline color="#295067" font-size="8.3pt">
																			<xsl:value-of select="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*OBSERVACIONES*' ), '*')"/>
																		</fo:inline>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:if test="substring-before( substring-after( ./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones, '*CONVENIO*' ), '*') = ''">
																			<fo:inline color="#295067" font-size="8.3pt">
																				<xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones"/>&#160; </fo:inline>
																		</xsl:if>
																	</xsl:otherwise>
																</xsl:choose>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<!--Donativos-->
													<xsl:for-each select="./cfdi:Complemento/donat:Donatarias">
														<fo:table-row>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline font-size="8.3pt" font-weight="bold">Donativos:&#160;</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" number-columns-spanned="8" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" background-color="#F2F2F2" text-align="start">
																<fo:block>
																	<fo:inline color="#295067" font-size="8.3pt">
																		<xsl:value-of select="./@leyenda"/>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
																<fo:block>
																	<fo:block>
																		<fo:inline font-size="8.3pt" font-weight="bold">Fecha de Autorización:</fo:inline>
																	</fo:block>
																	<fo:block padding-top="5px">
																		<fo:inline font-size="8.3pt" font-weight="bold">No.de Autorización:&#160;</fo:inline>
																	</fo:block>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" background-color="#F2F2F2" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" number-columns-spanned="8" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline color="#295067" font-size="8.3pt">
																		<xsl:value-of select="./@fechaAutorizacion"/>
																	</fo:inline>
																</fo:block>
																<fo:block padding-top="5px">
																	<fo:inline color="#295067" font-size="8.3pt">
																		<xsl:value-of select="./@noAutorizacion"/>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:for-each>
													<!--Fin de Donativos-->
													<!--Divisas-->
													<xsl:for-each select="./cfdi:Complemento/divisas:Divisas">
														<fo:table-row>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline font-size="8.3pt" font-weight="bold">Tipo de Operación:</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" background-color="#F2F2F2" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="8" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline color="#295067" font-size="8.3pt">
																		<xsl:value-of select="./@tipoOperacion"/>
																	</fo:inline>
																	<fo:inline color="#295067" font-size="8.3pt">&#160;</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:for-each>
													<!--Fin de Divisas-->
													<fo:table-row>
														<fo:table-cell number-columns-spanned="10">
															<fo:block>
																<fo:inline padding-top="0.8mm" background-color="#DFE5E7" background-repeat="no-repeat" font-size="8.3pt" font-weight="bold"/>&#160;
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<!--INICIO PARCIALIDADES-->
													<xsl:if test="./@FechaFolioFiscalOrig">
														<fo:table-row border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm">
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="0px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#dfe5e7" number-columns-spanned="10" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline padding-top="0.8mm" background-color="#DFE5E7" background-repeat="no-repeat" font-size="8.3pt" font-weight="bold">Parcialidades:</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0.1mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center">
																<fo:block>
																	<fo:table border-bottom-color="#AAC2CE" border-right-color="#AAC2CE" border-top-color="#AAC2CE" padding="0" width="200mm" space-before.optimum="1pt" space-after.optimum="2pt" table-layout="fixed">
																		<fo:table-column column-width="160px"/>
																		<fo:table-column column-width="70px"/>
																		<fo:table-column column-width="70px"/>
																		<fo:table-column column-width="140px"/>
																		<fo:table-column column-width="60px"/>
																		<fo:table-column column-width="60px"/>
																		<fo:table-body>
																			<fo:table-row>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="solid" color="#525252" font-size="9px" font-style="normal" padding-bottom="2px" padding-left="5px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#F2F2F2" text-align="center" font-weight="bold">
																					<fo:block>
																						<fo:inline background-color="#F2F2F2" color="#525252" font-size="7.3pt">Folio Original</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="solid" color="#525252" font-size="9px" font-style="normal" number-columns-spanned="2" padding-bottom="2px" padding-left="5px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#F2F2F2" text-align="center" font-weight="bold">
																					<fo:block>
																						<fo:inline background-color="#F2F2F2" color="#525252" font-size="7.3pt">Fecha Original</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="solid" color="#525252" font-size="9px" font-style="normal" padding-bottom="2px" padding-left="5px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#F2F2F2" display-align="before" text-align="center" font-weight="bold">
																					<fo:block>
																						<fo:inline background-color="#F2F2F2" color="#525252" font-size="7.3pt">Serie Original</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="2px" padding-left="5px" padding-right="0px" padding-top="2px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" number-columns-spanned="2" padding-after="0pt" background-color="#F2F2F2" text-align="center" font-weight="bold">
																					<fo:block>
																						<fo:inline background-color="#F2F2F2" color="#525252" font-size="7.3pt">Monto Original</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																			<fo:table-row>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="solid" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-left="5px" padding-top="3px" padding-bottom="3px" padding-right="0px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																					<fo:block>
																						<fo:inline color="#295067" font-size="8.3pt">
																							<xsl:value-of select="./@FolioFiscalOrig"/>
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" number-columns-spanned="2" padding-after="0pt" display-align="before" text-align="center">
																					<fo:block>
																						<fo:inline color="#295067" font-size="8.3pt">
																							<xsl:value-of select="./@FechaFolioFiscalOrig"/>
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="solid" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																					<fo:block>
																						<fo:inline color="#295067" font-size="8.3pt">
																							<xsl:value-of select="./@SerieFolioFiscalOrig"/>
																						</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="solid" color="#295067" font-size="9px" number-columns-spanned="2" font-style="normal" height="2mm" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="center">
																					<fo:block>
																						<fo:inline color="#295067" font-size="8.3pt">
																							<xsl:value-of select="./@MontoFolioFiscalOrig"/>&#160;
																		</fo:inline>
																					</fo:block>
																				</fo:table-cell>
																			</fo:table-row>
																		</fo:table-body>
																	</fo:table>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:if>
													<!--FIN Parcialidades-->
													<fo:table-row>
														<fo:table-cell number-columns-spanned="10">
															<fo:table font-size="8.5pt" width="565px" border-spacing="0" border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm">
																<fo:table-column column-width="107px"/>
																<fo:table-column column-width="187px"/>
																<fo:table-column column-width="144px"/>
																<fo:table-column column-width="122px"/>
																<fo:table-body start-indent="0pt">
																	<fo:table-row>
																		<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" font-size="9px" font-style="normal" height="0.2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="4" display-align="center" text-align="start" background-color="#AAC2CE">
																			<fo:block/>
																		</fo:table-cell>
																	</fo:table-row>
																	<fo:table-row border-top-color="#AAC2CE" border-top-style="none" border-top-width="0mm">
																		<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="0px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#dfe5e7" number-columns-spanned="4" display-align="center" text-align="start">
																			<fo:block>
																				<fo:inline padding-top="0.8mm" background-color="#DFE5E7" background-repeat="no-repeat" font-size="8.3pt" font-weight="bold">Información del Timbre Fiscal
												Digital</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																	<fo:table-row>
																		<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#999999" border-top-style="solid" border-top-width="0.1mm" font-size="9px" font-style="normal" height=".1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="4" display-align="center" text-align="start">
																			<fo:block/>
																		</fo:table-cell>
																	</fo:table-row>
																	<fo:table-row>
																		<fo:table-cell padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell text-align="center" padding-top="5px" display-align="center" border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.4mm" font-weight="bold">
																			<fo:block>
																				<fo:inline>Certificado Digital SAT</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell text-align="center" padding-top="5px" display-align="center" border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.4mm" font-weight="bold">
																			<fo:block>
																				<fo:inline>Fecha de Certificación</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																	<fo:table-row>
																		<fo:table-cell padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell text-align="center" padding="0" display-align="center" padding-top="3px">
																			<fo:block>
																				<fo:inline>
																					<xsl:value-of select="./cfdi:Complemento/tfd:TimbreFiscalDigital/@noCertificadoSAT"/>
																				</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell text-align="center" padding="0" display-align="center" padding-top="3px">
																			<fo:block>
																				<fo:inline>
																					<xsl:call-template name="formateaFecha">
																						<xsl:with-param name="sep" select="'/'"/>
																						<xsl:with-param name="valor" select="./cfdi:Complemento/tfd:TimbreFiscalDigital/@FechaTimbrado"/>
																					</xsl:call-template>
																				</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																	<fo:table-row height="5px" line-height="5px">
																		<fo:table-cell padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																	<fo:table-row>
																		<fo:table-cell number-rows-spanned="11" padding="0" display-align="center">
																			<xsl:choose>
																				<!-- Caso 2: RFC Receptor contiene & -->
																				<xsl:when test="contains(./cfdi:Receptor/@rfc, '&amp;')">
																					<fo:block>
																						<xsl:variable name="gonz">
																							<xsl:value-of select="concat(substring-before(./cfdi:Receptor/@rfc,'&amp;'),'%26',substring-after(./cfdi:Receptor/@rfc,'&amp;'))"/>
																						</xsl:variable>
																						<fo:external-graphic src="https://emisionz.conectorfiscal.mx/publico/qr/alonso.gif?uuid=?re={./cfdi:Emisor/@rfc}%26rr={$gonz}%26tt={./@total}%26id={./cfdi:Complemento/tfd:TimbreFiscalDigital/@UUID}" width="35mm" height="35mm"/>
																					</fo:block>
																				</xsl:when>
																				<!-- Caso 5: RFC Receptor contiene Ñ -->
																				<xsl:when test="contains(./cfdi:Receptor/@rfc, 'Ñ')">
																					<fo:block>
																						<xsl:variable name="gonz">
																							<xsl:value-of select="concat(substring-before(./cfdi:Receptor/@rfc,'Ñ'),'%D1;',substring-after(./cfdi:Receptor/@rfc,'Ñ'))"/>
																						</xsl:variable>
																						<fo:external-graphic src="https://emisionz.conectorfiscal.mx/publico/qr/alonso.gif?uuid=?re={./cfdi:Emisor/@rfc}%26rr={$gonz}%26tt={./@total}%26id={./cfdi:Complemento/tfd:TimbreFiscalDigital/@UUID}" width="35mm" height="35mm"/>
																					</fo:block>
																				</xsl:when>
																				<!-- Cualquier otro Caso: Generará el QR con los datos originales -->
																				<xsl:otherwise>
																					<fo:block>
																						<fo:external-graphic src="https://emisionz.conectorfiscal.mx/publico/qr/alonso.gif?uuid=?re={./cfdi:Emisor/@rfc}%26rr={./cfdi:Receptor/@rfc}%26tt={./@total}%26id={./cfdi:Complemento/tfd:TimbreFiscalDigital/@UUID}" width="35mm" height="35mm"/>
																					</fo:block>
																				</xsl:otherwise>
																			</xsl:choose>
																		</fo:table-cell>
																		<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="1px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start">
																			<fo:block>
																				<fo:inline font-size="8.3pt" font-weight="bold">Cadena Original del Timbre</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																	<xsl:call-template name="WrapCO">
																		<xsl:with-param name="largo" select="92"/>
																		<xsl:with-param name="corrida" select="1"/>
																		<xsl:with-param name="valor">
																			<xsl:call-template name="timbreFiscal"/>
																		</xsl:with-param>
																	</xsl:call-template>
																	<fo:table-row height="5px" line-height="5px">
																		<fo:table-cell border-left-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" padding="0" display-align="center">
																			<fo:block>
																				<fo:inline>&#160; </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell border-right-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																	<fo:table-row>
																		<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="3px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start">
																			<fo:block>
																				<fo:inline font-size="8.3pt" font-weight="bold">Sello Digital del Emisor</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																	<fo:table-row>
																		<fo:table-cell background-color="#F2F2F2" border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="solid" border-width="0.1mm" color="#295067" font-size="8.3pt" font-style="normal" line-height="9.3pt" padding-top="2mm" padding-right="2mm" padding-bottom="2mm" padding-left="2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="3" text-align="justify">
																			<fo:block>
																				<fo:inline color="#295067" font-size="8.3pt" line-height="9.3pt">
																					<xsl:call-template name="Wrap">
																						<xsl:with-param name="largo" select="92"/>
																						<xsl:with-param name="valor" select="./cfdi:Complemento/tfd:TimbreFiscalDigital/@selloCFD"/>
																					</xsl:call-template>
																				</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																	<fo:table-row height="5px" line-height="5px">
																		<fo:table-cell border-left-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" padding="0" display-align="center">
																			<fo:block>
																				<fo:inline>&#160; </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell border-right-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																	<fo:table-row>
																		<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="3px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start">
																			<fo:block>
																				<fo:inline>Sello Digital del SAT</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																	<fo:table-row>
																		<fo:table-cell background-color="#F2F2F2" border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="solid" border-width="0.1mm" color="#295067" font-size="8.3pt" font-style="normal" line-height="9.3pt" padding-top="2mm" padding-right="2mm" padding-bottom="2mm" padding-left="2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="3" text-align="justify">
																			<fo:block>
																				<fo:inline color="#295067" font-size="8.3pt" line-height="9.3pt">
																					<xsl:call-template name="Wrap">
																						<xsl:with-param name="largo" select="92"/>
																						<xsl:with-param name="valor" select="./cfdi:Complemento/tfd:TimbreFiscalDigital/@selloSAT"/>
																					</xsl:call-template>
																				</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																	<fo:table-row height="5px" line-height="5px">
																		<fo:table-cell padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell padding="0" display-align="center">
																			<fo:block>
																				<fo:inline> </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																</fo:table-body>
															</fo:table>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
											<fo:table start-indent="((8.5in - 0.1in - 0.1in) - 582px) div 2" end-indent="((8.5in - 0.1in - 0.1in) - 582px) div 2" border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" padding="0" text-align="center" width="200mm" space-before.optimum="1pt" space-after.optimum="2pt" table-layout="fixed">
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-column column-width="20mm"/>
												<fo:table-body>
													<xsl:for-each select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:Extra">
														<xsl:if test="substring( ./@atributo, 1,3)='Ley'">
															<fo:table-row>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="8.3pt" font-style="normal" line-height="9.0pt" border-width="1pt" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="white" number-columns-spanned="10" display-align="center" text-align="center">
																	<fo:block height="0.5mm" padding-bottom="0px" padding-left="0px" padding-right="0px" padding-top="3px">
																		<fo:inline font-size="6.0pt" font-weight="normal">
																			<xsl:value-of select="./@valor"/>
																		</fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:if>
													</xsl:for-each>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="8.3pt" font-style="normal" height="0.5mm" line-height="9.0pt" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="white" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block id="SV_RefID_PageTotal"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<!--
		####################
		TEMPLATES AUXILIARES
		####################
-->
	<!-- TEMPLATE IMPORTES CONCEPTOS A 2 DECIMALES SIN REDONDEO -->
    <xsl:template name="ImpCon2dec">
      <xsl:variable name="rdr">
        <xsl:value-of select="concat(substring-before(./@importe,'.'), '.', substring(substring-after(./@importe,'.'),1,2))"/>
      </xsl:variable>
      <xsl:value-of select="format-number($rdr, '###,##0.00####')"/>
    </xsl:template>
	<!-- TEMPLATE SUBTOTAL A 2 DECIMALES SIN REDONDEO -->
    <xsl:template name="subtotal2dec">
        <xsl:variable name="gabf">
            <xsl:value-of select="concat(substring-before(./@subTotal,'.'), '.', substring(substring-after(./@subTotal,'.'),1,2))"/>
        </xsl:variable>
        <xsl:value-of select="format-number($gabf, '###,##0.00####')"/>
    </xsl:template>
	<!-- TEMPLATE TOTAL A 2 DECIMALES SIN REDONDEO -->
	<xsl:template name="total2dec">
		<xsl:variable name="lincourt">
			<xsl:value-of select="concat(substring-before(./@total,'.'), '.', substring(substring-after(./@total,'.'),1,2))"/>
		</xsl:variable>
		<xsl:value-of select="format-number($lincourt, '###,##0.00####')"/>
	</xsl:template>
	<!-- TEMPLATE IMPUESTO A 2 DECIMALES SIN REDONDEO -->
	<xsl:template name="Imp2dec">
		<xsl:variable name="vampire">
			<xsl:value-of select="concat(substring-before(./@importe,'.'), '.', substring(substring-after(./@importe,'.'),1,2))"/>
		</xsl:variable>
		<xsl:value-of select="format-number($vampire, '###,##0.00####')"/>
	</xsl:template>
	<!-- Template para hacer la funcionalidad de Wrap del texto, segun el largo enviado -->
	<xsl:template name="Wrap">
		<xsl:param name="largo"/>
		<xsl:param name="valor"/>
		<xsl:if test="$valor">
			<xsl:choose>
				<xsl:when test="string-length($valor) &lt;= number( $largo )">
					<fo:block>
						<fo:inline color="#295067" font-family="Courier" font-size="8px" line-height="11px">
							<xsl:value-of select="$valor"/>
						</fo:inline>
					</fo:block>
				</xsl:when>
				<xsl:otherwise>
					<fo:block>
						<fo:inline color="#295067" font-family="Courier" font-size="8px" line-height="11px">
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
	<!-- Nuevo template para la cadena Original -->
	<xsl:template name="WrapCO">
		<xsl:param name="largo"/>
		<xsl:param name="corrida"/>
		<xsl:param name="valor"/>
		<xsl:if test="$valor">
			<xsl:choose>
				<xsl:when test="string-length($valor) &lt;= number( $largo )">
					<fo:table-row>
						<fo:table-cell background-color="#F2F2F2" border-bottom-color="#AAC2CE" border-bottom-style="solid" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-width="0.1mm" color="#295067" font-size="8.3pt" font-style="normal" line-height="9.3pt" padding-top="0mm" padding-right="2mm" padding-bottom="2mm" padding-left="2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="10" text-align="justify">
							<fo:block>
								<fo:inline color="#295067" font-size="8.3pt" line-height="9pt">
									<fo:block>
										<fo:inline color="#295067" font-family="Courier" font-size="8px" line-height="11px">
											<xsl:value-of select="$valor"/>
										</fo:inline>
									</fo:block>
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</xsl:when>
				<xsl:otherwise>
					<xsl:choose>
						<xsl:when test="$corrida = 1">
							<fo:table-row>
								<fo:table-cell background-color="#F2F2F2" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="solid" border-width="0.1mm" color="#295067" font-size="8.3pt" font-style="normal" line-height="9.3pt" padding-top="2mm" padding-right="2mm" padding-bottom="0mm" padding-left="2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="10" text-align="justify">
									<fo:block>
										<fo:inline color="#295067" font-size="8.3pt" line-height="9pt">
											<fo:block>
												<fo:inline color="#295067" font-family="Courier" font-size="8px" line-height="11px">
													<xsl:value-of select="substring( $valor, 1, number($largo) )"/>
												</fo:inline>
											</fo:block>
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:when>
						<xsl:otherwise>
							<fo:table-row>
								<fo:table-cell background-color="#F2F2F2" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-width="0.1mm" color="#295067" font-size="8.3pt" font-style="normal" line-height="9.3pt" padding-right="2mm" padding-bottom="0mm" padding-left="2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="10" text-align="justify">
									<fo:block>
										<fo:inline color="#295067" font-size="8.3pt" line-height="9pt">
											<fo:block>
												<fo:inline color="#295067" font-family="Courier" font-size="8px" line-height="11px">
													<xsl:value-of select="substring( $valor, 1, number($largo) )"/>
												</fo:inline>
											</fo:block>
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:otherwise>
					</xsl:choose>
					<xsl:call-template name="WrapCO">
						<xsl:with-param name="largo" select="$largo"/>
						<xsl:with-param name="corrida" select="number($corrida)+1"/>
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
			<xsl:value-of select="concat( substring( $valor, 9, 2), $sep, substring( $valor, 6, 2), $sep, substring( $valor, 1, 4), ' ', substring( $valor, 12, 8)  )"/>
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
	<!-- Conjunto de Templates para formar la Cadena del Timbre -->
	<xsl:template name="Requerido">
		<xsl:param name="valor"/>|<xsl:call-template name="ManejaEspacios">
			<xsl:with-param name="s" select="$valor"/>
		</xsl:call-template>
	</xsl:template>
	<!-- Normalizador de espacios en blanco -->
	<xsl:template name="ManejaEspacios">
		<xsl:param name="s"/>
		<xsl:value-of select="normalize-space(string($s))"/>
	</xsl:template>
	<!-- Aquí iniciamos el procesamiento de la cadena original con su | inicial y el terminador || -->
	<xsl:template name="timbreFiscal">|<xsl:call-template name="TimbreFiscalDigital"/>||</xsl:template>
	<!--  Aquí iniciamos el procesamiento de los datos incluidos en el comprobante -->
	<xsl:template name="TimbreFiscalDigital">
		<!-- Iniciamos el tratamiento de los atributos del Timbre-->
		<xsl:call-template name="Requerido">
			<xsl:with-param name="valor" select="/cfdi:Comprobante/cfdi:Complemento/tfd:TimbreFiscalDigital/@version"/>
		</xsl:call-template>
		<xsl:call-template name="Requerido">
			<xsl:with-param name="valor" select="/cfdi:Comprobante/cfdi:Complemento/tfd:TimbreFiscalDigital/@UUID"/>
		</xsl:call-template>
		<xsl:call-template name="Requerido">
			<xsl:with-param name="valor" select="/cfdi:Comprobante/cfdi:Complemento/tfd:TimbreFiscalDigital/@FechaTimbrado"/>
		</xsl:call-template>
		<xsl:call-template name="Requerido">
			<xsl:with-param name="valor" select="/cfdi:Comprobante/cfdi:Complemento/tfd:TimbreFiscalDigital/@selloCFD"/>
		</xsl:call-template>
		<xsl:call-template name="Requerido">
			<xsl:with-param name="valor" select="/cfdi:Comprobante/cfdi:Complemento/tfd:TimbreFiscalDigital/@noCertificadoSAT"/>
		</xsl:call-template>
	</xsl:template>
</xsl:stylesheet>
