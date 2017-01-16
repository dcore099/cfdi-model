<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:jaxb="http://java.sun.com/xml/ns/jaxb" xmlns:xjc="http://java.sun.com/xml/ns/jaxb/xjc" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cfd="http://www.sat.gob.mx/cfd/2" xmlns:ecc="http://www.sat.gob.mx/ecc" xmlns:psgecfd="http://www.sat.gob.mx/psgecfd" xmlns:addbf2="http://www.buzonfiscal.com/ns/addenda/bf/2" xmlns:implocal="http://www.sat.gob.mx/implocal" xmlns:detallista="http://www.sat.gob.mx/detallista">
	<xsl:variable name="fo:layout-master-set">
		<fo:layout-master-set>
			<fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.1in" margin-right="0.1in">
				<fo:region-body margin-top="0.1in" margin-bottom="0.5in"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
	</xsl:variable>
	<xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html"/>
	<xsl:template match="/cfd:Comprobante">
		<fo:root>
			<xsl:copy-of select="$fo:layout-master-set"/>
			<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
				<fo:flow flow-name="xsl-region-body">
					<fo:block background-color="white">
						<fo:table start-indent="((8.5in - 0.1in - 0.1in) - 170mm) div 2" end-indent="((8.5in - 0.1in - 0.1in) - 170mm) div 2" border-bottom-color="#AAC2CE" border-left-color="#AAC2CE" border-right-color="#AAC2CE" border-top-color="#AAC2CE" height="792px" padding="15" text-align="center" width="612px" space-before.optimum="0pt" space-after.optimum="0pt" table-layout="fixed">
							<fo:table-column/>
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
													<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@vigente='false'">
														<fo:table-row border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm">
															<fo:table-cell background-color="#666666" border-bottom-color="#FFFFFF" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#FFFFFF" border-top-style="solid" border-top-width="0.1mm" font-style="normal" height="4.5mm" padding-top="1.2mm" number-columns-spanned="10" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline color="#FFFFFF" font-size="7.5pt" font-weight="bold">COMPROBANTE CANCELADO </fo:inline>
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
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="1mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="10px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="7" display-align="center" text-align="start">
															<fo:block>
																<fo:inline color="#000000" font-size="7.5pt" font-weight="bold">
																	<xsl:choose>
																		<xsl:when test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:TipoDocumento/@descripcion">
																			<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:TipoDocumento/@descripcion"/>
																		</xsl:when>
																		<xsl:when test="./@tipoDeComprobante">
		Comprobante de <xsl:value-of select="./@tipoDeComprobante"/>
																		</xsl:when>
																		<xsl:otherwise>
		Folio
	</xsl:otherwise>
																	</xsl:choose>
																</fo:inline>
																<fo:inline color="#295067" font-size="7.5pt">
																	<fo:inline color="#B6571E" font-size="8.3pt" font-weight="bold">
&#160;<xsl:value-of select="./@serie"/>
																	</fo:inline>
																</fo:inline>
																<fo:inline color="#B6571E" font-size="8.3pt" font-weight="bold">
																	<xsl:value-of select="./@folio"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" font-size="9px" font-style="normal" font-weight="bold" height="1mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="10px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" text-align="left">
															<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
																<xsl:if test="./@atributo='ClaveTransportista'">
																	<fo:block>
																		<fo:inline font-size="7.5pt">Clave Transportista&#160;</fo:inline>
																		<fo:inline color="#B6571E" font-size="8.3pt">
																			<xsl:value-of select="./@valor "/>
																		</fo:inline>
																	</fo:block>
																</xsl:if>
															</xsl:for-each>
															<xsl:if test="substring-before( substring-after(  ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*CLAVE*' ), '*') ">
																<fo:block>
																	<fo:inline font-size="7.5pt">Clave Transportista&#160;</fo:inline>
																	<fo:inline color="#B6571E" font-size="8.3pt">
																		<xsl:value-of select="substring-before( substring-after(  ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*CLAVE*' ), '*') "/>
																	</fo:inline>
																</fo:block>
															</xsl:if>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" font-size="9px" font-style="normal" height="1mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="0px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="7" display-align="center" text-align="start">
															<fo:block>
																<fo:inline font-size="7.5pt">Certificado Digital </fo:inline>
																<fo:inline color="#B6571E" font-size="8.3pt">
																	<xsl:value-of select="./@noCertificado"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" font-size="9px" font-style="normal" height="1mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="0px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" text-align="left">
															<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
																<xsl:if test="./@atributo='NoConvenioPemex'">
																	<fo:block>
																		<fo:inline font-size="7.5pt">No. Convenio&#160;</fo:inline>
																		<fo:inline color="#B6571E" font-size="8.3pt">
																			<xsl:value-of select="./@valor "/>
																		</fo:inline>
																	</fo:block>
																</xsl:if>
															</xsl:for-each>
															<xsl:if test="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*CONVENIO*' ), '*') ">
																<fo:block>
																	<fo:inline font-size="7.5pt">No. Convenio&#160;</fo:inline>
																	<fo:inline color="#B6571E" font-size="8.3pt">
																		<xsl:value-of select="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*CONVENIO*' ), '*') "/>
																	</fo:inline>
																</fo:block>
															</xsl:if>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="8px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="7" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="0px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="7" display-align="center" text-align="start">
															<fo:block>
																<fo:inline color="#295067" font-size="7.5pt">
																	<fo:inline color="#295067" font-size="7.5pt" font-weight="bold">
																		<xsl:value-of select="./cfd:Emisor/@nombre"/>
																	</fo:inline>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" font-size="9px" font-style="normal" height="1mm" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" number-columns-spanned="3" number-rows-spanned="9" text-align="center">
															<fo:block>
																<fo:external-graphic content-height="80px" content-width="195px" height="80pt" width="195pt" space-before.optimum="0pt" space-after.optimum="0pt">
																	<xsl:attribute name="src">url('<xsl:text disable-output-escaping="yes">userstyle/RFC000000XXX_logo.jpg</xsl:text>')</xsl:attribute>
																</fo:external-graphic>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="0px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="4" display-align="center" text-align="start">
															<fo:block>
																<fo:inline color="#295067" font-size="7.5pt" font-weight="bold">R.F.C. </fo:inline>
																<fo:inline color="#295067" font-size="7.5pt">
																	<fo:inline color="#295067" font-size="7.5pt" font-weight="bold">
																		<xsl:value-of select="./cfd:Emisor/@rfc"/>
																	</fo:inline>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="0px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" vertical-align="top" number-rows-spanned="3">
															<fo:block>
																<xsl:if test="./cfd:Emisor/ExpedidoEn/@calle">
																	<fo:inline color="#295067" font-size="7.5pt" font-style="italic">Expedido en</fo:inline>
																</xsl:if>
															</fo:block>
															<fo:block>
																<xsl:if test="./cfd:Emisor/ExpedidoEn/@calle">
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:if test="./cfd:Emisor/cfd:ExpedidoEn/@calle">
																			<xsl:value-of select="./cfd:Emisor/cfd:ExpedidoEn/@calle"/>
																			<xsl:if test="./cfd:Emisor/cfd:ExpedidoEn/@noExterior"> No. <xsl:value-of select="./cfd:Emisor/cfd:ExpedidoEn/@noExterior"/>&#160;</xsl:if>
																			<xsl:if test="./cfd:Emisor/cfd:ExpedidoEn/@noInterior">&#160;-&#160;<xsl:value-of select="concat( ./cfd:Emisor/cfd:ExpedidoEn/@noInterior, ' ' )"/>
																			</xsl:if>
																		</xsl:if>
																	</fo:inline>
																</xsl:if>
															</fo:block>
															<xsl:if test="./cfd:Emisor/cfd:ExpedidoEn/@calle">
																<fo:block>
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:if test="./cfd:Emisor/cfd:ExpedidoEn/@colonia">
																			<xsl:value-of select="./cfd:Emisor/cfd:ExpedidoEn/@colonia"/>&#160;</xsl:if>
																		<xsl:if test="./cfd:Emisor/cfd:ExpedidoEn/@codigoPostal">C.P. <xsl:value-of select="./cfd:Emisor/cfd:ExpedidoEn/@codigoPostal"/>
																		</xsl:if>
																	</fo:inline>
																</fo:block>
																<fo:block>
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:if test="./cfd:Emisor/cfd:ExpedidoEn/@localidad">
																			<xsl:value-of select="./cfd:Emisor/cfd:ExpedidoEn/@localidad"/>
																		</xsl:if>
																		<xsl:if test="./cfd:Emisor/cfd:ExpedidoEn/@municipio">
																			<xsl:value-of select="concat( ./cfd:Emisor/cfd:ExpedidoEn/@municipio, ', ' )"/>
																		</xsl:if>
																		<xsl:if test="./cfd:Emisor/cfd:ExpedidoEn/@estado">
																			<xsl:value-of select="concat( ./cfd:Emisor/cfd:ExpedidoEn/@estado, ' ' )"/>
																		</xsl:if>
																		<xsl:value-of select="./cfd:Emisor/cfd:ExpedidoEn/@pais"/>
																	</fo:inline>
																</fo:block>
															</xsl:if>
															<fo:block>
																<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:ExpedidoEn/@telefono">
																	<fo:inline color="#295067" font-size="7.5pt">Tel. </fo:inline>
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:ExpedidoEn/@telefono"/>
																	</fo:inline>
																</xsl:if>
																<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:ExpedidoEn/@email">
																	<fo:inline color="#295067" font-size="7.5pt">&#160;&#160;&#160; e-Mail:</fo:inline>
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:ExpedidoEn/@email"/>
																	</fo:inline>
																</xsl:if>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="0px" text-align="left" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="4">
															<fo:block>
																<fo:inline color="#295067" font-size="7.5pt">
																	<xsl:value-of select="./cfd:Emisor/cfd:DomicilioFiscal/@calle"/>
																	<xsl:if test="./cfd:Emisor/cfd:DomicilioFiscal/@noExterior">&#160; No. <xsl:value-of select="./cfd:Emisor/cfd:DomicilioFiscal/@noExterior"/>
																	</xsl:if>
																	<xsl:if test="./cfd:Emisor/cfd:DomicilioFiscal/@noInterior">&#160;-&#160;<xsl:value-of select="./cfd:Emisor/cfd:DomicilioFiscal/@noInterior"/>
																	</xsl:if>
																	<xsl:if test="./cfd:Emisor/cfd:DomicilioFiscal/@referencia">&#160;<xsl:value-of select="./cfd:Emisor/cfd:DomicilioFiscal/@referencia"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
															<fo:block>
																<fo:inline color="#295067" font-size="7.5pt">
																	<xsl:if test="./cfd:Emisor/cfd:DomicilioFiscal/@colonia">
																		<xsl:value-of select="./cfd:Emisor/cfd:DomicilioFiscal/@colonia"/>&#160;</xsl:if>
C.P. <xsl:value-of select="./cfd:Emisor/cfd:DomicilioFiscal/@codigoPostal"/>&#160;
<xsl:if test="./cfd:Emisor/cfd:DomicilioFiscal/@localidad">
																		<xsl:value-of select="./cfd:Emisor/cfd:DomicilioFiscal/@localidad"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
															<fo:block>
																<fo:inline color="#295067" font-size="7.5pt">
																	<xsl:if test="./cfd:Emisor/cfd:DomicilioFiscal/@municipio">
																		<xsl:value-of select="concat( ./cfd:Emisor/cfd:DomicilioFiscal/@municipio, ', ' )"/>
																	</xsl:if>
																	<xsl:if test="./cfd:Emisor/cfd:DomicilioFiscal/@estado">
																		<xsl:value-of select="concat( ./cfd:Emisor/cfd:DomicilioFiscal/@estado, ' ' )"/>
																	</xsl:if>
																	<xsl:value-of select="./cfd:Emisor/cfd:DomicilioFiscal/@pais"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="0px" text-align="left" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="7">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="0px" text-align="left" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="4">
															<fo:block>
																<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Emisor/@telefono">
																	<fo:inline color="#295067" font-size="7.5pt">Tel. </fo:inline>
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Emisor/@telefono"/>
																	</fo:inline>
																</xsl:if>
																<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Emisor/@fax">
																	<fo:inline color="#295067" font-size="7.5pt">   Fax. </fo:inline>
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Emisor/@fax"/>
																	</fo:inline>
																</xsl:if>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#295067" font-size="9px" font-style="normal" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="0px" text-align="left" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="7">
															<fo:block>
																<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Emisor/@emailComercial">
																	<fo:inline color="#295067" font-size="7.5pt">e-Mail: </fo:inline>
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Emisor/@emailComercial"/>&#160;&#160;&#160;&#160; 
                                                                        </fo:inline>
																</xsl:if>
																<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Emisor/@web">
																	<fo:inline color="#295067" font-size="7.5pt">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Emisor/@web"/>
																	</fo:inline>
																</xsl:if>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="3mm" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="4" display-align="center" text-align="start">
															<fo:block>
																<fo:inline color="#295067" font-size="8.3pt">	
																		&#160;
																		</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="6" display-align="center" text-align="right">
															<fo:block>
																<fo:inline color="#295067" font-size="8.3pt">	
																			&#160;
																		</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="0.3mm" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#aac2ce" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="0.3mm" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="white" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="0px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#dfe5e7" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block>
																<fo:inline padding-top="0.8mm" background-color="#DFE5E7" background-repeat="no-repeat" font-size="8.3pt" font-weight="bold">Cliente:</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="0.3mm" border-style="solid" border-width="1pt" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#999999" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="0.3mm" border-style="solid" border-width="1pt" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#ffffff" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Fecha de Emisión:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
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
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">R.F.C.:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfd:Receptor/@rfc"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
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
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#FFFFFF" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Nombre o Razón Social:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="8" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfd:Receptor/@nombre"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
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
																	<xsl:value-of select="./cfd:Receptor/cfd:Domicilio/@calle"/>
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
																	<xsl:value-of select="./cfd:Receptor/cfd:Domicilio/@noExterior"/>
																	<xsl:if test="./cfd:Receptor/cfd:Domicilio/@noInterior">&#160;-&#160;
																			<xsl:value-of select="./cfd:Receptor/cfd:Domicilio/@noInterior"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
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
																	<xsl:if test="./cfd:Receptor/cfd:Domicilio/@referencia">
																		<xsl:value-of select="./cfd:Receptor/cfd:Domicilio/@referencia"/>
																	</xsl:if>
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
																	<xsl:if test="./cfd:Receptor/cfd:Domicilio/@colonia">
																		<xsl:value-of select="./cfd:Receptor/cfd:Domicilio/@colonia"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
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
																	<xsl:if test="./cfd:Receptor/cfd:Domicilio/@codigoPostal">
																		<xsl:value-of select="./cfd:Receptor/cfd:Domicilio/@codigoPostal"/>
																	</xsl:if>
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
																	<xsl:if test="./cfd:Receptor/cfd:Domicilio/@localidad">
																		<xsl:value-of select="./cfd:Receptor/cfd:Domicilio/@localidad"/>,&#160;
																		</xsl:if>
																	<xsl:if test="./cfd:Receptor/cfd:Domicilio/@municipio">
																		<xsl:value-of select="./cfd:Receptor/cfd:Domicilio/@municipio"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
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
																	<xsl:if test="./cfd:Receptor/cfd:Domicilio/@estado">
																		<xsl:value-of select="./cfd:Receptor/cfd:Domicilio/@estado"/>
																	</xsl:if>
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
																	<xsl:if test="./cfd:Receptor/cfd:Domicilio/@pais">
																		<xsl:value-of select="./cfd:Receptor/cfd:Domicilio/@pais"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
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
																	<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Receptor/@telefono">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Receptor/@telefono"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt"> e-Mail:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Receptor/@email">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Receptor/@email"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
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
																<fo:inline color="#525252" font-size="8.3pt">No. de Cliente:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Receptor/@noCliente">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Receptor/@noCliente"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt"> No. de Proveedor:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0.1mm" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Receptor/@noProveedor">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Receptor/@noProveedor"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
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
																<fo:inline color="#525252" font-size="8.3pt"> No. de Orden:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@noOrden">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@noOrden"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Forma de Pago:</fo:inline>
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
																<fo:inline color="#525252" font-size="8.3pt">  Método de Pago:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./@metodoDePago"/>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt"> Condiciones de Pago:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:if test="./@condicionesDePago">
																		<xsl:value-of select="./@condicionesDePago"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
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
																<fo:inline color="#525252" font-size="8.3pt">  Agente de Ventas:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@agenteVentas">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@agenteVentas"/>
																	</xsl:if>
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
																	<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@comprador">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@comprador"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
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
																<fo:inline color="#525252" font-size="8.3pt">  Moneda:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@tipoMoneda">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@tipoMoneda"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#525252" font-size="8.3pt">Tipo de Cambio:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-bottom-width="0px" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@tipoCambio">
																		<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@tipoCambio"/>
																	</xsl:if>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
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
															<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
																<xsl:if test="./@atributo='NoRelacionPemex'">
																	<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">No. de Relación:</fo:inline>
																	</fo:block>
																</xsl:if>
															</xsl:for-each>
															<xsl:if test="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*RELACION*' ), '*') ">
																<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																	<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">No. de Relación:</fo:inline>
																</fo:block>
															</xsl:if>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
																<xsl:if test="./@atributo='NoRelacionPemex'">
																	<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																		<fo:inline color="#295067" font-size="8.3pt">
																			<xsl:value-of select="./@valor "/>
																		</fo:inline>
																	</fo:block>
																</xsl:if>
															</xsl:for-each>
															<xsl:if test="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*RELACION*' ), '*') ">
																<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																	<fo:inline color="#295067" font-size="8.3pt">
																		<xsl:value-of select="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*RELACION*' ), '*') "/>
																	</fo:inline>
																</fo:block>
															</xsl:if>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="none" border-right-width="0px" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="2" display-align="center" text-align="start">
															<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
																<xsl:if test="./@atributo='NoCedulaPemex'">
																	<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																		<fo:inline color="#525252" font-size="8.3pt">No. de Cédula:</fo:inline>
																	</fo:block>
																</xsl:if>
															</xsl:for-each>
															<xsl:if test="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*CEDULA*' ), '*') ">
																<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																	<fo:inline color="#525252" font-size="8.3pt">No. de Cédula:</fo:inline>
																</fo:block>
															</xsl:if>
														</fo:table-cell>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="3" display-align="center" text-align="start" background-color="#F2F2F2">
															<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
																<xsl:if test="./@atributo='NoCedulaPemex'">
																	<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																		<fo:inline color="#295067" font-size="8.3pt">
																			<xsl:value-of select="./@valor "/>
																		</fo:inline>
																	</fo:block>
																</xsl:if>
															</xsl:for-each>
															<xsl:if test="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*CEDULA*' ), '*') ">
																<fo:block height="0.2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="1px">
																	<fo:inline color="#295067" font-size="8.3pt">
																		<xsl:value-of select="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*CEDULA*' ), '*') "/>
																	</fo:inline>
																</fo:block>
															</xsl:if>
														</fo:table-cell>
													</fo:table-row>
													<xsl:if test="./@tipoDeComprobante='traslado'">
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
																<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@nombre">
																	<fo:block height="0.5mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="5px">
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@rfc"/>
																		</fo:inline>
																	</fo:block>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@nombre"/>
																		</fo:inline>
																	</fo:block>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@calle"/>&#160;<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@numero"/>
																		</fo:inline>
																	</fo:block>
																	<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@referencia">
																		<fo:block>
																			<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																				<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@referencia"/>
																			</fo:inline>
																		</fo:block>
																	</xsl:if>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@colonia"/>
																			<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@codigoPostal">
																		C.P.&#160;<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@codigoPostal"/>
																			</xsl:if>
																		</fo:inline>
																	</fo:block>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@municipio"/>
																			<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@ciudad">
																				&#160;<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@ciudad"/>
																			</xsl:if>
																				&#160;<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@estado"/>
																				&#160;<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@pais"/>
																		</fo:inline>
																	</fo:block>
																	<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@claveIdentificacion">
																		<fo:block>
																			<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																		Clave de Identificación:&#160;<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Remitente/@claveIdentificacion"/>
																			</fo:inline>
																		</fo:block>
																	</xsl:if>
																</xsl:if>
															</fo:table-cell>
															<fo:table-cell background-repeat="no-repeat" border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="none" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="center" number-columns-spanned="5" text-align="start">
																<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@nombre">
																	<fo:block height="0.5mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="5px">
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@rfc"/>
																		</fo:inline>
																	</fo:block>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@nombre"/>
																		</fo:inline>
																	</fo:block>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@calle"/>&#160;<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@numero"/>
																		</fo:inline>
																	</fo:block>
																	<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@referencia">
																		<fo:block>
																			<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																				<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@referencia"/>
																			</fo:inline>
																		</fo:block>
																	</xsl:if>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@colonia"/>
																			<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@codigoPostal">
																		C.P.&#160;<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@codigoPostal"/>
																			</xsl:if>
																		</fo:inline>
																	</fo:block>
																	<fo:block>
																		<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@municipio"/>
																			<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@ciudad">
																				&#160;<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@ciudad"/>
																			</xsl:if>
																				&#160;<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@estado"/>
																				&#160;<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@pais"/>
																		</fo:inline>
																	</fo:block>
																	<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@claveIdentificacion">
																		<fo:block>
																			<fo:inline background-repeat="no-repeat" color="#525252" font-size="8.3pt">
																		Clave de Identificación:&#160;<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Destino/@claveIdentificacion"/>
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
																<fo:table border-bottom-color="#AAC2CE" border-left-color="#AAC2CE" border-right-color="#AAC2CE" border-top-color="#AAC2CE" padding="0" width="200mm" space-before.optimum="1pt" space-after.optimum="2pt" table-layout="fixed">
																	<fo:table-column column-width="20mm"/>
																	<fo:table-column column-width="15mm"/>
																	<fo:table-column column-width="15mm"/>
																	<fo:table-column column-width="65mm"/>
																	<fo:table-column column-width="30mm"/>
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
																					<fo:inline background-color="#F2F2F2" color="#525252" font-size="8.3pt" font-weight="bold">Cant.</fo:inline>
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" color="#525252" font-size="9px" font-style="normal" font-weight="bold" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="#F2F2F2" display-align="before" text-align="center">
																				<fo:block>
																					<fo:inline background-color="#F2F2F2" color="#525252" font-size="8.3pt" font-weight="bold">Medida</fo:inline>
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
																		<xsl:for-each select="./cfd:Conceptos/cfd:Concepto">
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
																				<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" height="2mm" padding-bottom="0px" padding-left="5px" padding-right="0px" padding-top="5px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" text-align="start">
																					<fo:block>
																						<fo:inline color="#295067" font-size="8.3pt">
																							<xsl:value-of select="./@descripcion"/>
																						</fo:inline>
																						<xsl:if test="./cfd:CuentaPredial/@numero">
																							<fo:block space-before.optimum="0pt" space-after.optimum="0pt">
																								<fo:block border-bottom-color="#295067" border-left-color="#295067" border-right-color="#295067" border-top-color="#295067" color="#295067" font-size="9px" font-style="normal">
																									<fo:inline color="#295067" font-size="8.3pt">&#160;Cuenta Predial: </fo:inline>
																									<fo:inline color="#295067" font-size="8.3pt">
																										<xsl:value-of select="./CuentaPredial/@numero"/>
																									</fo:inline>
																								</fo:block>
																							</fo:block>
																						</xsl:if>
																						<xsl:if test="./cfd:InformacionAduanera/@aduana">
																							<xsl:for-each select="./cfd:InformacionAduanera">
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
																										<fo:inline color="#295067" font-size="8.3pt">No. de Pedimento: </fo:inline>
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
																			<xsl:if test="./cfd:Parte/@cantidad">
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
																				<xsl:for-each select="./cfd:Parte">
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
																								<xsl:if test="./cfd:InformacionAduanera/@aduana">
																									<xsl:for-each select="./cfd:InformacionAduanera">
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
																												<fo:inline color="#295067" font-size="8.3pt">No de Pedimento: </fo:inline>
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
																		</xsl:for-each>
																	</fo:table-body>
																</fo:table>
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
																		<xsl:when test="./@version='1.0'">
																			<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
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
													<xsl:if test="./@descuento>=0.00">
														<fo:table-row>
															<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="9" text-align="right" display-align="center">
																<fo:block>
																	<fo:inline color="#525252" font-size="8.3pt">Descuento </fo:inline>
																	<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@porcentajeDescuento">
																		<fo:inline color="#525252" font-size="8.3pt">
																			<xsl:value-of select="concat(' del ', ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@porcentajeDescuento, '% ' )"/>
																		</fo:inline>
																		<xsl:if test="./@motivoDescuento">
																			<fo:inline color="#525252" font-size="8.3pt">por </fo:inline>
																			<fo:inline color="#525252" font-size="8.3pt">
																				<xsl:value-of select="./@motivoDescuento"/>
																			</fo:inline>
																		</xsl:if>
																	</xsl:if>
																	<fo:inline color="#525252" font-size="8.3pt">: </fo:inline>
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
													<xsl:if test="./cfd:Impuestos/cfd:Traslados/cfd:Traslado/@impuesto">
														<xsl:choose>
															<xsl:when test="./@version='1.0'">
																<xsl:for-each select="./cfd:Impuestos/cfd:Traslados/cfd:Traslado">
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
																 &#160;:
															</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#295067" font-size="8.3pt">
																					<xsl:value-of select="format-number(./@importe, '###,##0.00' )"/>
																				</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<xsl:for-each select="./cfd:Impuestos/cfd:Traslados/cfd:Traslado">
																	<fo:table-row>
																		<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="9" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#525252" font-size="8.3pt">
																					<xsl:value-of select="./@impuesto"/>
																				</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">&#160;
																<xsl:value-of select="./@tasa"/>
																				</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">%</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">
																: </fo:inline>
																			</fo:block>
																		</fo:table-cell>
																		<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#295067" font-size="8.3pt">
																					<xsl:value-of select="format-number(./@importe, '###,##0.00' )"/>
																				</fo:inline>
																			</fo:block>
																		</fo:table-cell>
																	</fo:table-row>
																</xsl:for-each>
															</xsl:otherwise>
														</xsl:choose>
													</xsl:if>
													<!-- Retenciones en Addenda -->
													<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Retenciones/addbf2:Retencion/@impuesto">
														<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Retenciones/addbf2:Retencion">
															<fo:table-row>
																<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="outset" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="9" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#525252" font-size="8.3pt">
																			<xsl:value-of select="./@impuesto"/> Retenido:
                                                               </fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="none" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#295067" font-size="8.3pt">
																			<xsl:value-of select="format-number(./@importe, '###,##0.00' )"/>
																		</fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:for-each>
													</xsl:if>
													<!--Retenciones Impuesto-->
													<xsl:if test="./cfd:Impuestos/cfd:Retenciones/cfd:Retencion/@impuesto">
														<xsl:for-each select="./cfd:Impuestos/cfd:Retenciones/cfd:Retencion">
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
																			<xsl:value-of select="format-number(./@importe, '###,##0.00' )"/>
																		</fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:for-each>
													</xsl:if>
													<xsl:choose>
														<xsl:when test="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*VALORI*' ), '*')">
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
																			<xsl:choose>
																				<xsl:when test="./@version='1.0'">
																					<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
																						<xsl:if test="./@atributo = 'total'">
																							<xsl:value-of select="format-number(./@valor, '###,##0.00' )"/>
																						</xsl:if>
																					</xsl:for-each>
																				</xsl:when>
																				<xsl:otherwise>
																					<xsl:if test="./@total">
																						<xsl:value-of select="format-number( ./@total, '###,##0.00' )"/>
																					</xsl:if>
																				</xsl:otherwise>
																			</xsl:choose>
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
																			<xsl:value-of select="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*NOMI*' ), '*')"/>:</fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																	<fo:block>
																		<fo:inline color="#295067" font-size="8.3pt" font-weight="normal">
																			<xsl:value-of select="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*VALORI*' ), '*')"/>
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
																			<xsl:value-of select="format-number(./@total - number(substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*VALORI*' ), '*')), '###,##0.00' )"/>
																		</fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:when>
														<xsl:otherwise>
															<xsl:if test="./cfd:Complemento/implocal:ImpuestosLocales">
																<fo:table-row>
																	<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="9" text-align="right" display-align="center">
																		<fo:block>
																			<fo:inline color="#525252" font-size="8.3pt" font-weight="bold">Total : </fo:inline>
																		</fo:block>
																	</fo:table-cell>
																	<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="5px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" text-align="right" display-align="center">
																		<fo:block>
																			<fo:inline color="#295067" font-size="8.3pt" font-weight="bold">
																				<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
																					<xsl:if test="./@atributo = 'T*TOTAL'">
																						<xsl:value-of select="format-number(./@valor, '###,##0.00' )"/>
																					</xsl:if>
																				</xsl:for-each>
																			</fo:inline>
																		</fo:block>
																	</fo:table-cell>
																</fo:table-row>
																<xsl:for-each select="./cfd:Complemento/implocal:ImpuestosLocales/implocal:TrasladosLocales">
																	<fo:table-row>
																		<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="9" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#525252" font-size="8.3pt">
																					<xsl:value-of select="./@ImpLocTrasladado"/>
																				</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">&#160;
																<xsl:value-of select="./@TasadeTraslado"/>
																				</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">%</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">
															:
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
																<xsl:for-each select="./cfd:Complemento/implocal:ImpuestosLocales/implocal:RetencionesLocales">
																	<fo:table-row>
																		<fo:table-cell border-bottom-color="#ffffff" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0mm" color="#525252" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="9" text-align="right" display-align="center">
																			<fo:block>
																				<fo:inline color="#525252" font-size="8.3pt">
																					<xsl:value-of select="./@ImpLocRetenido"/>
																				</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">&#160;
																<xsl:value-of select="./@TasadeRetencion"/>
																				</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">%</fo:inline>
																				<fo:inline color="#525252" font-size="8.3pt">
																&#160;Retenido :
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
															</xsl:if>
															<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
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
																				<xsl:when test="./@version='1.0'">
																					<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
																						<xsl:if test="./@atributo = 'total'">
																							<xsl:value-of select="format-number(./@valor, '###,##0.00' )"/>
																						</xsl:if>
																					</xsl:for-each>
																				</xsl:when>
																				<xsl:otherwise>
																					<xsl:if test="./@total">
																						<xsl:value-of select="format-number( ./@total, '###,##0.00' )"/>
																					</xsl:if>
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
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="8" display-align="center" text-align="start">
															<fo:block>
																<fo:inline color="#295067" font-size="8.3pt">
																	<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@totalConLetra"/>
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
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0px" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" color="#295067" font-size="9px" font-style="normal" padding-bottom="3px" padding-left="0px" padding-right="0px" padding-top="3px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="8" display-align="center" text-align="start">
															<xsl:if test="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*CLAVE*' ), '*')">
																<fo:block>
																	<fo:inline color="#295067" font-size="9.0pt">	ADDENDA:&#160;</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																		<xsl:value-of select="substring-before( substring-after(  ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*CLAVE*' ), '*') "/>
																	</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																		<xsl:value-of select="substring(substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*RELACION*' ), '*'),1,4) "/>
																	</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																		<xsl:value-of select="substring(substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*RELACION*' ), '*'),6,5) "/>
																	</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																		<xsl:value-of select="substring(substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*CEDULA*' ), '*'),1,1) "/>
																	</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																		<xsl:value-of select="substring(substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*CEDULA*' ), '*'),3,3) "/>
																	</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																	<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																		<xsl:value-of select="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*CONVENIO*' ), '*') "/>
																	</fo:inline>
																</fo:block>
															</xsl:if>
															<fo:block>
																<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
																	<xsl:if test="./@atributo='ClaveTransportista'">
																		<fo:inline color="#295067" font-size="9.0pt">	ADDENDA:&#160;</fo:inline>
																		<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																			<xsl:value-of select="./@valor"/>
																		</fo:inline>
																		<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">|</fo:inline>
																	</xsl:if>
																</xsl:for-each>
																<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
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
																<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
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
																<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
																	<xsl:if test="./@atributo='NoConvenioPemex'">
																		<fo:inline color="#295067" font-size="9.0pt" font-weight="bold">
																			<xsl:value-of select="./@valor"/>
																		</fo:inline>
																	</xsl:if>
																</xsl:for-each>
															</fo:block>
															<fo:block>
																<xsl:choose>
																	<xsl:when test="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*OBSERVACIONES*' ), '*')">
																		<fo:inline color="#295067" font-size="8.3pt">
																			<xsl:value-of select="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*OBSERVACIONES*' ), '*')"/>
																		</fo:inline>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:if test="substring-before( substring-after( ./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones, '*CONVENIO*' ), '*') = ''">
																			<fo:inline color="#295067" font-size="8.3pt">
																				<xsl:value-of select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:CFD/@observaciones"/>&#160;
																					</fo:inline>
																		</xsl:if>
																	</xsl:otherwise>
																</xsl:choose>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="8px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" width="576px" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="1px" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block>
																<fo:inline font-size="8.3pt" font-weight="bold">Cadena Original:</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<xsl:call-template name="WrapCO">
														<xsl:with-param name="largo" select="110"/>
														<xsl:with-param name="corrida" select="1"/>
														<xsl:with-param name="valor">
															<xsl:call-template name="cadenaOriginal"/>
														</xsl:with-param>
													</xsl:call-template>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="8px" border-width="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="1px" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block>
																<fo:inline font-size="8.3pt" font-weight="bold">Sello Digital del Contribuyente:</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell background-color="#F2F2F2" border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.1mm" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="solid" border-width="0.1mm" color="#295067" font-size="8.3pt" font-style="normal" line-height="9.3pt" padding-top="2mm" padding-right="2mm" padding-bottom="2mm" padding-left="2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="10" text-align="justify">
															<fo:block>
																<fo:inline color="#295067" font-size="8.3pt" line-height="9.3pt">
																	<xsl:call-template name="Wrap">
																		<xsl:with-param name="largo" select="110"/>
																		<xsl:with-param name="valor" select="./@sello"/>
																	</xsl:call-template>
																</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<xsl:if test="./cfd:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@selloDelPSGECFD">
														<fo:table-row>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="none" font-size="9px" font-style="normal" height="8px" border-style="solid" border-width="0.1mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
																<fo:block/>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="solid" border-bottom-width="0.0mm" border-left-color="#AAC2CE" border-left-style="solid" border-left-width="0.1mm" border-right-color="#AAC2CE" border-right-style="solid" border-right-width="0.1mm" border-top-color="#AAC2CE" border-top-style="solid" border-top-width="0px" font-size="9px" font-style="normal" font-weight="bold" height="2mm" padding-bottom="3px" padding-left="5px" padding-right="0px" padding-top="1px" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" number-columns-spanned="10" display-align="center" text-align="start">
																<fo:block>
																	<fo:inline font-size="8.3pt" font-weight="bold"> Sello Digital de Buzón Fiscal:</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell background-color="#F2F2F2" border-bottom-color="#AAC2CE" border-bottom-style="solid" border-left-color="#AAC2CE" border-left-style="solid" border-right-color="#AAC2CE" border-right-style="solid" border-top-color="#AAC2CE" border-top-style="solid" border-width="0.1mm" color="#295067" font-size="8.3pt" font-style="normal" line-height="9.3pt" padding-top="2mm" padding-right="2mm" padding-bottom="2mm" padding-left="2mm" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" display-align="before" number-columns-spanned="10" text-align="justify">
																<fo:block>
																	<fo:inline color="#295067" font-size="8.3pt" line-height="9.3pt">
																		<xsl:call-template name="Wrap">
																			<xsl:with-param name="largo" select="110"/>
																			<xsl:with-param name="valor" select="./cfd:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@selloDelPSGECFD"/>
																		</xsl:call-template>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:if>
													<xsl:if test="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra/@valor">
														<fo:table-row>
															<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="solid" font-size="8.3pt" font-style="normal" height="0.1mm" line-height="9.0pt" border-width="1pt" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="white" number-columns-spanned="10" display-align="center" text-align="start">
																<fo:block/>
															</fo:table-cell>
														</fo:table-row>
														<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
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
													</xsl:if>
													<xsl:choose>
														<xsl:when test="./cfd:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@selloDelPSGECFD">
															<fo:table-row>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="solid" font-size="8.3pt" font-style="normal" height="0.2mm" line-height="9.0pt" border-width="1pt" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="white" number-columns-spanned="10" display-align="center" text-align="start">
																	<fo:block/>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="8.3pt" font-style="normal" height="0.1mm" line-height="9.0pt" border-width="1pt" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="white" number-columns-spanned="10" display-align="center" text-align="justify">
																	<fo:block>
																		<fo:inline font-size="6.0pt" font-weight="normal"> 
  Este documento es una impresión de un 											
                                                           </fo:inline>
																		<fo:inline font-size="6.0pt" font-weight="normal" color="#B6571E"> Comprobante Fiscal Digital,</fo:inline>
																		<fo:inline font-size="6.0pt" font-weight="normal"> con Año y Número de Autorización de uso de Folios del contribuyente:  
													<xsl:choose>
																				<xsl:when test="./@version='1.0'">
																					<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
																						<xsl:if test="./@atributo='anoAprobacion'">
																							<xsl:value-of select="./@valor"/>
																						</xsl:if>
																					</xsl:for-each>
																				</xsl:when>
																				<xsl:otherwise>
																					<xsl:value-of select="./@anoAprobacion"/>
																				</xsl:otherwise>
																			</xsl:choose>-<xsl:value-of select="./@noAprobacion"/> y ha sido generado mediante el servicio de facturación electrónica Buzón Fiscal de la empresa <xsl:value-of select="./cfd:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@nombre"/> con RFC: <xsl:value-of select="./cfd:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@rfc"/>, cuyo Certificado de Sello Digital es el número <xsl:value-of select="./cfd:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@noCertificado"/>  y está autorizado por el SAT como Proveedor de Servicios mediante Oficio Número: <xsl:value-of select="./cfd:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@noAutorizacion"/>, publicado electrónicamente en la página del SAT el
												<xsl:call-template name="formateaFechasinHora">
																				<xsl:with-param name="sep" select="'/'"/>
																				<xsl:with-param name="valor" select="./cfd:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@fechaAutorizacion"/>
																			</xsl:call-template> y notificado el día 12/07/2007.	
													 </fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:when>
														<xsl:otherwise>
															<fo:table-row>
																<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="solid" font-size="8.3pt" font-style="normal" height="0.5mm" line-height="9.0pt" border-style="solid" border-width="0.1mm" border-color="white" padding-start="0pt" padding-top="2mm" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="white" number-columns-spanned="10" display-align="center" text-align="start">
																	<fo:block>
																		<fo:inline font-size="6.0pt" font-weight="normal"> 
													Este documento es una impresión de un </fo:inline>
																		<fo:inline font-size="6.0pt" font-weight="normal" color="#B6571E">Comprobante Fiscal Digital</fo:inline>, 
													<fo:inline font-size="6.0pt" font-weight="normal"> con Año y Número de Autorización de uso de Folios del contribuyente:  
													<xsl:choose>
																				<xsl:when test="./@version='1.0'">
																					<xsl:for-each select="./cfd:Addenda/addbf2:AddendaBuzonFiscal/addbf2:Extra">
																						<xsl:if test="./@atributo='anoAprobacion'">
																							<xsl:value-of select="./@valor"/>
																						</xsl:if>
																					</xsl:for-each>
																				</xsl:when>
																				<xsl:otherwise>
																					<xsl:value-of select="./@anoAprobacion"/>
																				</xsl:otherwise>
																			</xsl:choose>-<xsl:value-of select="./@noAprobacion"/>.													
													</fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:otherwise>
													</xsl:choose>
													<fo:table-row>
														<fo:table-cell border-bottom-color="#AAC2CE" border-bottom-style="none" border-left-color="#AAC2CE" border-left-style="none" border-right-color="#AAC2CE" border-right-style="none" border-top-color="#AAC2CE" border-top-style="none" font-size="8.3pt" font-style="normal" height="0.5mm" line-height="9.0pt" border-style="solid" border-width="1pt" border-color="white" padding-start="0pt" padding-end="0pt" padding-before="0pt" padding-after="0pt" background-color="white" number-columns-spanned="10" display-align="center" text-align="start">
															<fo:block/>
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
        <xsl:for-each select="./cfd:Conceptos/cfd:Concepto">
            <xsl:call-template name="Concepto"/>
        </xsl:for-each>
        <xsl:for-each select="./cfd:Impuestos/cfd:Retenciones/*">
            <xsl:call-template name="Retenidos"/>
        </xsl:for-each>
        <xsl:call-template name="Opcional">
            <xsl:with-param name="valor" select="./cfd:Impuestos/@totalImpuestosRetenidos"/>
        </xsl:call-template>
        <xsl:for-each select="./cfd:Impuestos/cfd:Traslados/*">
            <xsl:call-template name="Trasladados"/>
        </xsl:for-each>
        <xsl:call-template name="Opcional">
            <xsl:with-param name="valor" select="./cfd:Impuestos/@totalImpuestosTrasladados"/>
        </xsl:call-template>
        <xsl:if test="./cfd:Complemento/ecc:EstadoDeCuentaCombustible/@total">
            <xsl:call-template name="ComplementoECC">
                <xsl:with-param name="Nodo" select="./cfd:Complemento/ecc:EstadoDeCuentaCombustible"/>
            </xsl:call-template>
        </xsl:if>
        <xsl:if test="./cfd:Complemento/psgecfd:PrestadoresDeServiciosDeCFD/@rfc">
            <xsl:call-template name="ComplementoPSGECFD">
                <xsl:with-param name="Nodo" select="./cfd:Complemento/psgecfd:PrestadoresDeServiciosDeCFD"/>
            </xsl:call-template>
        </xsl:if>
        <xsl:if test="./cfd:Complemento/implocal:ImpuestosLocales">
            <xsl:call-template name="ImpuestosLocales">
                <xsl:with-param name="Nodo" select="./cfd:Complemento/implocal:ImpuestosLocales"/>
            </xsl:call-template>
        </xsl:if>
        <xsl:if test="./cfd:Complemento/detallista:detallista">
            <xsl:call-template name="Detallista">
                <xsl:with-param name="Nodo" select="./cfd:Complemento/detallista:detallista"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    <xsl:template name="Emisor">
        <xsl:call-template name="Requerido">
            <xsl:with-param name="valor" select="./cfd:Emisor/@rfc"/>
        </xsl:call-template>
        <xsl:call-template name="Requerido">
            <xsl:with-param name="valor" select="./cfd:Emisor/@nombre"/>
        </xsl:call-template>
        <xsl:call-template name="DomicilioFiscal">
            <xsl:with-param name="Nodo" select="./cfd:Emisor/cfd:DomicilioFiscal"/>
        </xsl:call-template>
        <xsl:if test="./cfd:Emisor/cfd:ExpedidoEn/@pais">
            <xsl:call-template name="Domicilio">
                <xsl:with-param name="Nodo" select="./cfd:Emisor/cfd:ExpedidoEn"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    <xsl:template name="Receptor">
        <xsl:call-template name="Opcional">
            <xsl:with-param name="valor" select="./cfd:Receptor/@rfc"/>
        </xsl:call-template>
        <xsl:call-template name="Requerido">
            <xsl:with-param name="valor" select="./cfd:Receptor/@nombre"/>
        </xsl:call-template>
        <xsl:call-template name="Domicilio">
            <xsl:with-param name="Nodo" select="./cfd:Receptor/cfd:Domicilio"/>
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
        <xsl:if test="./cfd:InformacionAduanera/@numero">
            <xsl:call-template name="InformacionAduanera">
                <xsl:with-param name="Nodo" select="./cfd:InformacionAduanera"/>
            </xsl:call-template>
        </xsl:if>
        <xsl:if test="./cfd:CuentaPredial/@numero">
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
    <xsl:template name="ImpuestosLocales">
        <xsl:param name="Nodo"/>
        <!--Iniciamos el tratamiento de los atributos de ImpuestosLocales -->
        <xsl:call-template name="Requerido">
            <xsl:with-param name="valor" select="$Nodo/@version"/>
        </xsl:call-template>
        <xsl:call-template name="Requerido">
            <xsl:with-param name="valor" select="$Nodo/@TotaldeRetenciones"/>
        </xsl:call-template>
        <xsl:call-template name="Requerido">
            <xsl:with-param name="valor" select="$Nodo/@TotaldeTraslados"/>
        </xsl:call-template>
        <xsl:for-each select="./cfd:Complemento/implocal:ImpuestosLocales/implocal:RetencionesLocales">
        
            <xsl:call-template name="Requerido">
                <xsl:with-param name="valor" select="./@ImpLocRetenido"/>
            </xsl:call-template>
            <xsl:call-template name="Requerido">
                <xsl:with-param name="valor" select="./@TasadeRetencion"/>
            </xsl:call-template>
            <xsl:call-template name="Requerido">
                <xsl:with-param name="valor" select="./@Importe"/>
            </xsl:call-template>
        </xsl:for-each>
        <xsl:for-each select="./cfd:Complemento/implocal:ImpuestosLocales/implocal:TrasladosLocales">
            <xsl:call-template name="Requerido">
                <xsl:with-param name="valor" select="./@ImpLocTrasladado"/>
            </xsl:call-template>
            <xsl:call-template name="Requerido">
                <xsl:with-param name="valor" select="./@TasadeTraslado"/>
            </xsl:call-template>
            <xsl:call-template name="Requerido">
                <xsl:with-param name="valor" select="./@Importe"/>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>
    <xsl:template name="Detallista">
        <!-- Iniciamos el tratamiento de los atributos del sector detallista -->
        <xsl:param name="Nodo"/>
        <xsl:call-template name="Requerido">
            <xsl:with-param name="valor" select="$Nodo/@documentStructureVersion"/>
        </xsl:call-template>
        <xsl:for-each select="./cfd:Complemento/detallista:detallista/detallista:orderIdentification/detallista:referenceIdentification">
            <xsl:call-template name="Requerido">
                <xsl:with-param name="valor" select="."/>
            </xsl:call-template>
        </xsl:for-each>
        <xsl:call-template name="Opcional">
            <xsl:with-param name="valor" select="./cfd:Complemento/detallista:detallista/detallista:orderIdentification/detallista:ReferenceDate"/>
        </xsl:call-template>
        <xsl:call-template name="Requerido">
            <xsl:with-param name="valor" select="./cfd:Complemento/detallista:detallista/detallista:buyer/detallista:gln"/>
        </xsl:call-template>
        <xsl:call-template name="Requerido">
            <xsl:with-param name="valor" select="./cfd:Complemento/detallista:detallista/detallista:seller/detallista:gln"/>
        </xsl:call-template>
        <xsl:call-template name="Requerido">
            <xsl:with-param name="valor" select="./cfd:Complemento/detallista:detallista/detallista:seller/detallista:alternatePartyIdentification"/>
        </xsl:call-template>
        <xsl:call-template name="Requerido">
            <xsl:with-param name="valor" select="./cfd:Complemento/detallista:detallista/detallista:totalAmount/detallista:Amount"/>
        </xsl:call-template>
        <xsl:for-each select="./cfd:Complemento/detallista:detallista/detallista:TotalAllowanceCharge/detallista:specialServicesType">
            <xsl:call-template name="Opcional">
                <xsl:with-param name="valor" select="."/>
            </xsl:call-template>
        </xsl:for-each>
        <xsl:for-each select="./cfd:Complemento/detallista:detallista/detallista:TotalAllowanceCharge/detallista:Amount">
            <xsl:call-template name="Opcional">
                <xsl:with-param name="valor" select="."/>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>
    <xsl:template name="Requerido">
        <xsl:param name="valor"/>|<xsl:call-template name="ManejaEspacios">
            <xsl:with-param name="s" select="$valor"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="Opcional">
        <xsl:param name="valor"/>
        <xsl:if test="$valor">|<xsl:call-template name="ManejaEspacios">
                <xsl:with-param name="s" select="$valor"/>
            </xsl:call-template>
        </xsl:if>
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
        <xsl:call-template name="Opcional">
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
        <xsl:call-template name="Opcional">
            <xsl:with-param name="valor" select="$Nodo/@municipio"/>
        </xsl:call-template>
        <xsl:call-template name="Opcional">
            <xsl:with-param name="valor" select="$Nodo/@estado"/>
        </xsl:call-template>
        <xsl:call-template name="Requerido">
            <xsl:with-param name="valor" select="$Nodo/@pais"/>
        </xsl:call-template>
        <xsl:call-template name="Opcional">
            <xsl:with-param name="valor" select="$Nodo/@codigoPostal"/>
        </xsl:call-template>
    </xsl:template>
</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c) 2004-2007. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="firmado_demo.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="no" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bSchemaAware" value="false"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bWarnings" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="iErrorHandling" value="fatal"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->
