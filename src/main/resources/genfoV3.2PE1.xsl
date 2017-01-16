<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.2" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ventavehiculos="http://www.sat.gob.mx/ventavehiculos" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:jaxb="http://java.sun.com/xml/ns/jaxb" xmlns:xjc="http://java.sun.com/xml/ns/jaxb/xjc" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cfd="http://www.sat.gob.mx/cfd/2" xmlns:ecc="http://www.sat.gob.mx/ecc" xmlns:psgecfd="http://www.sat.gob.mx/psgecfd" xmlns:bfa2="http://www.buzonfiscal.com/ns/addenda/bf/2" xmlns:implocal="http://www.sat.gob.mx/implocal" xmlns:ecb="http://www.sat.gob.mx/ecb" xmlns:detallista="http://www.sat.gob.mx/detallista" xmlns:cfdi="http://www.sat.gob.mx/cfd/3" xmlns:tfd="http://www.sat.gob.mx/TimbreFiscalDigital" xmlns:pfic="http://www.sat.gob.mx/pfic" xmlns:leyendasFisc="http://www.sat.gob.mx/leyendasFiscales" xmlns:iedu="http://www.sat.gob.mx/iedu" xmlns:donat="http://www.sat.gob.mx/donat" xmlns:terceros="http://www.sat.gob.mx/terceros" xmlns:divisas="http://www.sat.gob.mx/divisas" xmlns:tpe="http://www.sat.gob.mx/TuristaPasajeroExtranjero" xmlns:ns18="http://www.buzonfiscal.com/ns/xsd/bf/remision/52" xmlns:nomina="http://www.sat.gob.mx/nomina"
	xsi:schemaLocation="
	http://www.sat.gob.mx/cfd/3
	http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv32.xsd
	http://www.sat.gob.mx/nomina
	http://www.sat.gob.mx/sitio_internet/cfd/nomina/nomina11.xsd">
	<xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html"/>
	<xsl:template match="/cfdi:Comprobante">
		<fo:root>
			<fo:layout-master-set>
				<fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left=".3in" margin-right=".4in">
					<fo:region-body margin-top="0.5in" margin-bottom=".7in"/>
					<fo:region-after extent=".7in"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
				<fo:static-content flow-name="xsl-region-after">
					<fo:block text-align="center">
						<fo:inline font-size="6.0pt">
                            Hoja <fo:page-number font-weight="normal"/> / <fo:page-number-citation ref-id="SV_RefID_PageTotal"/>
						</fo:inline>
					</fo:block>
					<fo:block background-color="white" text-align="center">
						<fo:inline font-size="6.0pt" font-weight="normal"> Este documento es representación impresa de un<fo:inline font-size="6.0pt" font-weight="bold" color="#da271f"> CFDI </fo:inline>. </fo:inline>
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<fo:table font-family="arial , helvetica , sans-serif" font-size="7pt" table-layout="fixed" width="560" border-spacing="0">
							<fo:table-column column-width="105px" />
							<fo:table-column column-width="125px" />
							<fo:table-column column-width="190px" />
							<fo:table-column column-width="proportional-column-width(1)" />
							<fo:table-body start-indent="0pt">
								<fo:table-row>
									<fo:table-cell number-rows-spanned="2" padding="2px" display-align="before">
										<fo:block>&#160;</fo:block>
									</fo:table-cell>
									<fo:table-cell number-columns-spanned="2" padding="2px" display-align="center">
										<fo:block>
											<fo:block font-size="8pt" font-weight="bold" margin="0pt">
												<fo:inline><xsl:value-of select="./cfdi:Emisor/@nombre"/></fo:inline>
											</fo:block>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell number-rows-spanned="2" padding="0" display-align="before">
										<fo:block>
											<fo:block margin="0pt">
												<fo:table table-layout="fixed" width="140" border-spacing="0">
													<fo:table-column column-width="65px" />
													<fo:table-column column-width="75px" />
													<fo:table-body start-indent="0pt">
														<fo:table-row>
															<fo:table-cell padding="2px" display-align="center">
																<fo:block>
																	<fo:inline>Recibo Nómina</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2px" display-align="center">
																<fo:block>
																	<fo:inline><xsl:value-of select="./@serie"/> <xsl:value-of select="./@folio"/></fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell padding="2px" display-align="center">
																<fo:block>
																	<fo:inline>Fecha</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2px" display-align="center">
																<fo:block>
																	<fo:inline><xsl:call-template name="formateaFecha"><xsl:with-param name="sep" select="'/'"/><xsl:with-param name="valor" select="./@fecha"/></xsl:call-template></fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell padding="2px" display-align="center">
																<fo:block>
																	<fo:inline>No. Certificado</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2px" display-align="center">
																<fo:block>
																	<fo:inline><xsl:value-of select="./@noCertificado"/></fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:block>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:block margin="0pt">
												<fo:inline><xsl:value-of select="./cfdi:Emisor/cfdi:RegimenFiscal/@Regimen"/></fo:inline>
											</fo:block>
											<fo:block margin="0pt">
												<fo:inline><xsl:value-of select="./cfdi:Emisor/@rfc"/></fo:inline>
											</fo:block>
											<fo:block margin="0pt">
												<fo:inline>Registro Patronal: <xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@RegistroPatronal"/></fo:inline>
											</fo:block>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:block margin="0pt">
												<fo:inline>
													<xsl:value-of select="concat(./cfdi:Emisor/cfdi:DomicilioFiscal/@calle, ' ')"/>
													<xsl:value-of select="concat(./cfdi:Emisor/cfdi:DomicilioFiscal/@noExterior, ' ')"/>
													<xsl:if test="./cfdi:Emisor/cfdi:DomicilioFiscal/@noInterior"><xsl:value-of select="concat(./cfdi:Emisor/cfdi:DomicilioFiscal/@noInterior, ' ')"/></xsl:if>
													<xsl:if test="./cfdi:Emisor/cfdi:DomicilioFiscal/@colonia"><xsl:value-of select="concat(./cfdi:Emisor/cfdi:DomicilioFiscal/@colonia, ' ')"/></xsl:if>
												</fo:inline>
											</fo:block>
											<fo:block margin="0pt">
												<fo:inline>
													<xsl:if test="./cfdi:Emisor/cfdi:DomicilioFiscal/@municipio"><xsl:value-of select="concat(./cfdi:Emisor/cfdi:DomicilioFiscal/@municipio, ' ')"/></xsl:if>
													<xsl:if test="./cfdi:Emisor/cfdi:DomicilioFiscal/@estado"><xsl:value-of select="concat(./cfdi:Emisor/cfdi:DomicilioFiscal/@estado, ' ')"/></xsl:if>
													<xsl:if test="./cfdi:Emisor/cfdi:DomicilioFiscal/@pais"><xsl:value-of select="concat(./cfdi:Emisor/cfdi:DomicilioFiscal/@pais, ' ')"/></xsl:if>
												</fo:inline>
											</fo:block>
											<fo:block margin="0pt">
												<fo:inline>
													<xsl:if test="./cfdi:Emisor/cfdi:DomicilioFiscal/@codigoPostal"><xsl:value-of select="concat('C.P. ',./cfdi:Emisor/cfdi:DomicilioFiscal/@codigoPostal)"/></xsl:if>
												</fo:inline>
											</fo:block>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						
						<fo:table font-family="arial , helvetica , sans-serif" font-size="7pt" table-layout="fixed" width="560" border-spacing="0">
							<fo:table-column column-width="71px" />
							<fo:table-column column-width="121px" />
							<fo:table-column column-width="60px" />
							<fo:table-column column-width="120px" />
							<fo:table-column column-width="58px" />
							<fo:table-column column-width="130px" />
							<fo:table-body start-indent="0pt">
								<fo:table-row>
									<fo:table-cell number-columns-spanned="6" border-bottom="#000 1px solid" font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>DATOS DEL EMPLEADO</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>No. Empleado:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@NumEmpleado"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Nombre:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell number-columns-spanned="3" padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Receptor/@nombre"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>R.F.C.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Receptor/@rfc"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>CURP:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@CURP"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@NumSeguridadSocial"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Régimen:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@TipoRegimen"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Puesto:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@Puesto"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Departamento:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@Departamento"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="6" font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>&#160;</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="6" border-bottom="#000 1px solid" font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>INFORMACIÓN LABORAL</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Contrato:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@TipoContrato"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Jornada:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@TipoJornada"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Periodo:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@PeriodicidadPago"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Días pagados:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@NumDiasPagados"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Rel.Laboral:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@FechaInicioRelLaboral"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Antigüedad:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@Antiguedad"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Salario Base:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@SalarioBaseCotApor"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>&#160;</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline>&#160;</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Salario diario:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@SalarioDiarioIntegrado"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="6" font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>&#160;</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="6" border-bottom="#000 1px solid" padding="2px" display-align="center" font-weight="bold">
										<fo:block>
											<fo:inline>PAGO</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Fecha:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@FechaPago"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Fecha Inicio:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@FechaInicialPago"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline> Fecha Corte:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@FechaFinalPago"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>CLABE:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@CLABE"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Banco:</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline><xsl:value-of select="./cfdi:Complemento/nomina:Nomina/@Banco"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="6" padding="2px" display-align="center">
										<fo:block>
											<fo:inline> </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						
						<fo:table font-family="arial , helvetica , sans-serif" font-size="7pt" table-layout="fixed" width="560" border-spacing="0">
							<fo:table-column column-width="40px" />
							<fo:table-column column-width="45px" />
							<fo:table-column column-width="45px" />
							<fo:table-column column-width="270px" />
							<fo:table-column column-width="80px" />
							<fo:table-column column-width="80px" />
							<fo:table-body start-indent="0pt">
								<fo:table-row>
									<fo:table-cell font-weight="bold" text-align="center" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Clave</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" text-align="center" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Cantidad</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" text-align="center" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Unidad</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" text-align="center" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Descripción</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" text-align="center" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>V. Unitario</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell font-weight="bold" text-align="center" padding="2px" display-align="center">
										<fo:block>
											<fo:inline>Importe</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<xsl:for-each select="./cfdi:Conceptos/cfdi:Concepto">
									<fo:table-row>
										<fo:table-cell padding="2px" display-align="center" text-align="center">
											<fo:block>
												<fo:inline><xsl:value-of select="./@noIdentificacion"/></fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="2px" display-align="center" text-align="center">
											<fo:block>
												<fo:inline><xsl:value-of select="./@cantidad"/></fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="2px" display-align="center" text-align="center">
											<fo:block>
												<fo:inline><xsl:value-of select="./@unidad"/></fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="2px" display-align="center">
											<fo:block>
												<fo:inline><xsl:value-of select="./@descripcion"/></fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="2px" display-align="center" text-align="right">
											<fo:block>
												<fo:inline><xsl:value-of select="format-number(./@valorUnitario, '###,##0.00####')"/></fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="2px" display-align="center" text-align="right">
											<fo:block>
												<fo:inline><xsl:value-of select="format-number(./@importe, '###,##0.00####')"/></fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:for-each>
								<fo:table-row>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline> </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						
						<fo:table font-family="arial , helvetica , sans-serif" font-size="7pt" table-layout="fixed" width="560" border-spacing="0">
							<fo:table-column column-width="280px" />
							<fo:table-column column-width="280px" />
							<fo:table-body start-indent="0pt">
								<fo:table-row>
									<fo:table-cell padding="0" display-align="before" border-bottom="#000 1px solid">
										<fo:block>
											<fo:table font-family="arial , helvetica , sans-serif" font-size="6pt" table-layout="fixed" width="280" border-spacing="0">
												<fo:table-column column-width="30px" />
												<fo:table-column column-width="30px" />
												<fo:table-column column-width="100px" />
												<fo:table-column column-width="60px" />
												<fo:table-column column-width="60px" />
												<fo:table-body start-indent="0pt">
													<fo:table-row>
														<fo:table-cell number-columns-spanned="5" border-right="#000 1px solid" font-size="7pt" font-weight="bold" padding="2px" background-color="#cccccc" display-align="center" text-align="center">
															<fo:block>
																<fo:inline>PERCEPCIONES</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell font-weight="bold" padding="2px" display-align="center" text-align="center">
															<fo:block>
																<fo:inline>Tipo</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell font-weight="bold" padding="2px" display-align="center" text-align="center">
															<fo:block>
																<fo:inline>Clave</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell font-weight="bold" padding="2px" display-align="center" text-align="center">
															<fo:block>
																<fo:inline>Concepto</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell font-weight="bold" padding="2px" display-align="center" text-align="center">
															<fo:block>
																<fo:inline>Imp. Exento</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-right="#000 1px solid" font-weight="bold" padding="2px" display-align="center" text-align="center">
															<fo:block>
																<fo:inline>Imp. Gravado</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<xsl:for-each select="./cfdi:Complemento/nomina:Nomina/nomina:Percepciones/nomina:Percepcion">
														<fo:table-row>
															<fo:table-cell padding="2px" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline><xsl:value-of select="./@TipoPercepcion"/></fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2px" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline><xsl:value-of select="./@Clave"/></fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2px" display-align="center">
																<fo:block>
																	<fo:inline><xsl:value-of select="./@Concepto"/></fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2px" display-align="center" text-align="right">
																<fo:block>
																	<fo:inline><xsl:value-of select="format-number(./@ImporteExento, '###,##0.00####')"/></fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-right="#000 1px solid" padding="2px" display-align="center" text-align="right">
																<fo:block>
																	<fo:inline><xsl:value-of select="format-number(./@ImporteGravado, '###,##0.00####')"/></fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:for-each>
													<fo:table-row>
														<fo:table-cell padding="2px" display-align="center" text-align="center">
															<fo:block>
																<fo:inline>&#160;</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="2px" display-align="center" text-align="center">
															<fo:block>
																<fo:inline>&#160;</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="2px" display-align="center" font-weight="bold" text-align="right">
															<fo:block>
																<fo:inline>Neto:</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="2px" display-align="center" font-weight="bold" text-align="right">
															<fo:block>
																<fo:inline><xsl:value-of select="format-number(./cfdi:Complemento/nomina:Nomina/nomina:Percepciones/@TotalExento, '###,##0.00####')"/></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border-right="#000 1px solid" padding="2px" display-align="center" font-weight="bold" text-align="right">
															<fo:block>
																<fo:inline><xsl:value-of select="format-number(./cfdi:Complemento/nomina:Nomina/nomina:Percepciones/@TotalGravado, '###,##0.00####')"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="0" display-align="before" border-bottom="#000 1px solid">
										<fo:block>
											<fo:table font-family="arial , helvetica , sans-serif" font-size="6pt" table-layout="fixed" width="280" border-spacing="0">
												<fo:table-column column-width="30px" />
												<fo:table-column column-width="30px" />
												<fo:table-column column-width="100px" />
												<fo:table-column column-width="60px" />
												<fo:table-column column-width="60px" />
												<fo:table-body start-indent="0pt">
													<fo:table-row>
														<fo:table-cell number-columns-spanned="5" border-left="#000 1px solid" font-size="7pt" font-weight="bold" padding="2px" background-color="#cccccc" display-align="center" text-align="center">
															<fo:block>
																<fo:inline>DEDUCCIONES</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<fo:table-row>
														<fo:table-cell border-left="#000 1px solid" font-weight="bold" padding="2px" display-align="center" text-align="center">
															<fo:block>
																<fo:inline>Tipo</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell font-weight="bold" padding="2px" display-align="center" text-align="center">
															<fo:block>
																<fo:inline>Clave</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell font-weight="bold" padding="2px" display-align="center" text-align="center">
															<fo:block>
																<fo:inline>Concepto</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell font-weight="bold" padding="2px" display-align="center" text-align="center">
															<fo:block>
																<fo:inline>Imp. Exento</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell font-weight="bold" padding="2px" display-align="center" text-align="center">
															<fo:block>
																<fo:inline>Imp. Gravado</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<xsl:for-each select="./cfdi:Complemento/nomina:Nomina/nomina:Deducciones/nomina:Deduccion">
														<fo:table-row>
															<fo:table-cell border-left="#000 1px solid" padding="2px" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline><xsl:value-of select="./@TipoDeduccion"/></fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2px" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline><xsl:value-of select="./@Clave"/></fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2px" display-align="center">
																<fo:block>
																	<fo:inline><xsl:value-of select="./@Concepto"/></fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2px" display-align="center" text-align="right">
																<fo:block>
																	<fo:inline><xsl:value-of select="format-number(./@ImporteExento, '###,##0.00####')"/></fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2px" display-align="center" text-align="right">
																<fo:block>
																	<fo:inline><xsl:value-of select="format-number(./@ImporteGravado, '###,##0.00####')"/></fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:for-each>
													<xsl:if test="./cfdi:Complemento/nomina:Nomina/nomina:Deducciones/@TotalGravado">
														<fo:table-row>
															<fo:table-cell border-left="#000 1px solid" padding="2px" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline>&#160;</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2px" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline>&#160;</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2px" display-align="center" font-weight="bold" text-align="right">
																<fo:block>
																	<fo:inline>Neto:</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2px" display-align="center" font-weight="bold" text-align="right">
																<fo:block>
																	<fo:inline><xsl:value-of select="format-number(./cfdi:Complemento/nomina:Nomina/nomina:Deducciones/@TotalExento, '###,##0.00####')"/></fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2px" display-align="center" font-weight="bold" text-align="right">
																<fo:block>
																	<fo:inline><xsl:value-of select="format-number(./cfdi:Complemento/nomina:Nomina/nomina:Deducciones/@TotalGravado, '###,##0.00####')"/></fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:if>
												</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
								<xsl:if test="./cfdi:Complemento/nomina:Nomina/nomina:HorasExtras or ./cfdi:Complemento/nomina:Nomina/nomina:Incapacidades">
									<fo:table-row>
										<fo:table-cell padding="0" display-align="before" border-bottom="#000 1px solid">
											<fo:block>
												<fo:table font-family="arial , helvetica , sans-serif" font-size="6pt" table-layout="fixed" width="280" border-spacing="0">
													<fo:table-column column-width="30px" />
													<fo:table-column column-width="100px" />
													<fo:table-column column-width="100px" />
													<fo:table-column column-width="50px" />
													<fo:table-body start-indent="0pt">
														<fo:table-row>
															<fo:table-cell number-columns-spanned="5" border-right="#000 1px solid" font-size="7pt" font-weight="bold" padding="2px" background-color="#cccccc" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline>HORAS EXTRA</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell font-weight="bold" padding="2px" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline>Días</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell font-weight="bold" padding="2px" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline>Tipo</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell font-weight="bold" padding="2px" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline>Cantidad de Horas</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-right="#000 1px solid" font-weight="bold" padding="2px" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline>Importe</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<xsl:for-each select="./cfdi:Complemento/nomina:Nomina/nomina:HorasExtras/nomina:HorasExtra">
															<fo:table-row>
																<fo:table-cell padding="2px" display-align="center" text-align="center">
																	<fo:block>
																		<fo:inline><xsl:value-of select="./@Dias"/></fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell padding="2px" display-align="center" text-align="center">
																	<fo:block>
																		<fo:inline><xsl:value-of select="./@TipoHoras"/></fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell padding="2px" display-align="center" text-align="center">
																	<fo:block>
																		<fo:inline><xsl:value-of select="./@HorasExtra"/></fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell border-right="#000 1px solid" padding="2px" display-align="center" text-align="right">
																	<fo:block>
																		<fo:inline><xsl:value-of select="format-number(./@ImportePagado, '###,##0.00####')"/></fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:for-each>
													</fo:table-body>
												</fo:table>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="0" display-align="before" border-bottom="#000 1px solid">
											<fo:block>
												<fo:table font-family="arial , helvetica , sans-serif" font-size="6pt" table-layout="fixed" width="280" border-spacing="0">
													<fo:table-column column-width="30px" />
													<fo:table-column column-width="200px" />
													<fo:table-column column-width="50px" />
													<fo:table-body start-indent="0pt">
														<fo:table-row>
															<fo:table-cell number-columns-spanned="5" border-left="#000 1px solid" font-size="7pt" font-weight="bold" padding="2px" background-color="#cccccc" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline>INCAPACIDADES</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell border-left="#000 1px solid" font-weight="bold" padding="2px" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline>Días</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell font-weight="bold" padding="2px" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline>Tipo</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell font-weight="bold" padding="2px" display-align="center" text-align="center">
																<fo:block>
																	<fo:inline>Descuento</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<xsl:for-each select="./cfdi:Complemento/nomina:Nomina/nomina:Incapacidades/nomina:Incapacidad">
															<fo:table-row>
																<fo:table-cell border-left="#000 1px solid" padding="2px" display-align="center" text-align="center">
																	<fo:block>
																		<fo:inline><xsl:value-of select="./@DiasIncapacidad"/></fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell padding="2px" display-align="center" text-align="center">
																	<fo:block>
																		<fo:inline><xsl:value-of select="./@TipoIncapacidad"/></fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell padding="2px" display-align="center" text-align="right">
																	<fo:block>
																		<fo:inline><xsl:value-of select="format-number(./@Descuento, '###,##0.00####')"/></fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
														</xsl:for-each>
													</fo:table-body>
												</fo:table>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:if>
							</fo:table-body>
						</fo:table>
						
						<fo:table font-family="arial , helvetica , sans-serif" font-size="7pt" table-layout="fixed" width="560" border-spacing="0">
							<fo:table-column column-width="400px" />
							<fo:table-column column-width="160px" />
							<fo:table-body start-indent="0pt">
								<fo:table-row>
									<fo:table-cell text-align="center" padding="2px" display-align="center">
										<fo:block>&#160;</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding="2px" display-align="before">
										<fo:block>
											<fo:block border-bottom="#000 1px solid" font-weight="bold" margin="0pt">
												<fo:inline>Comunicado: </fo:inline>
											</fo:block>
											<fo:block margin="0pt" padding="2px">
												<fo:inline><xsl:value-of select="./cfdi:Addenda/bfa2:AddendaBuzonFiscal/bfa2:CFD/@observaciones"/></fo:inline>
											</fo:block>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="0" display-align="before">
										<fo:block>
											<fo:table font-family="arial , helvetica , sans-serif" font-size="7pt" table-layout="fixed" width="160" border-spacing="0">
												<fo:table-column column-width="60px" />
												<fo:table-column column-width="100px" />
												<fo:table-body start-indent="0pt">
													<fo:table-row>
														<fo:table-cell font-weight="bold" padding="2px" display-align="center">
															<fo:block>
																<fo:inline>Percepciones</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell text-align="right" padding="2px" display-align="center">
															<fo:block>
																<fo:inline>$ <xsl:value-of select="format-number(./@subTotal,'###,##0.00####')"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
													<xsl:if test="./@descuento &gt; 0.00">
														<fo:table-row>
															<fo:table-cell font-weight="bold" padding="2px" display-align="center">
																<fo:block>
																	<fo:inline>Deducciones</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell text-align="right" padding="2px" display-align="center">
																<fo:block>
																	<fo:inline>$ <xsl:value-of select="format-number(./@descuento,'###,##0.00####')"/></fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:if>
													<xsl:for-each select="./cfdi:Impuestos/cfdi:Traslados/cfdi:Traslado">
														<fo:table-row>
															<fo:table-cell font-weight="bold" padding="2px" display-align="center">
																<fo:block>
																	<fo:inline><xsl:value-of select="concat(./@impuesto, ' ')"/><xsl:value-of select="concat(./@tasa,'%')"/></fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell text-align="right" padding="2px" display-align="center">
																<fo:block>
																	<fo:inline>$ <xsl:value-of select="format-number(./@importe, '###,##0.00####')"/></fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:for-each>
													<xsl:for-each select="./cfdi:Impuestos/cfdi:Retenciones/cfdi:Retencion">
														<fo:table-row>
															<fo:table-cell font-weight="bold" padding="2px" display-align="center">
																<fo:block>
																	<fo:inline><xsl:value-of select="concat(./@impuesto, ' ')"/></fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell text-align="right" padding="2px" display-align="center">
																<fo:block>
																	<fo:inline>$ <xsl:value-of select="format-number(./@importe, '###,##0.00####')"/></fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:for-each>
													<fo:table-row>
														<fo:table-cell font-weight="bold" padding="2px" display-align="center">
															<fo:block>
																<fo:inline>Neto</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell text-align="right" padding="2px" display-align="center">
															<fo:block>
																<fo:inline>$ <xsl:value-of select="format-number(./@total,'###,##0.00####')"/></fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2px" display-align="center">
										<fo:block>
											<fo:inline> </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						
						<fo:table color="#000" font-size="7pt" table-layout="fixed" width="560" border-spacing="0">
							<fo:table-column column-width="160px"/>
							<fo:table-column column-width="270px"/>
							<fo:table-column column-width="130px"/>
							<fo:table-body start-indent="0pt">
								<fo:table-row height="5px" line-height="5px">
									<fo:table-cell display-align="center">
										<fo:block><fo:inline> </fo:inline></fo:block>
									</fo:table-cell>
									<fo:table-cell display-align="center">
										<fo:block><fo:inline> </fo:inline></fo:block>
									</fo:table-cell>
									<fo:table-cell display-align="center">
										<fo:block><fo:inline> </fo:inline></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell display-align="center">
										<fo:block border-bottom="#000 1px solid" margin-top="1px" padding-bottom="1px" text-align="center" margin="0pt" space-after="6pt">
											<fo:inline font-weight="bold">Folio Fiscal</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell display-align="center">
										<fo:block border-bottom="#000 1px solid" margin-top="1px" padding-bottom="1px" text-align="center" margin="0pt" space-after="6pt">
											<fo:inline font-weight="bold">No. Certificado SAT</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell display-align="center">
										<fo:block border-bottom="#000 1px solid" margin-top="1px" padding-bottom="1px" text-align="center" margin="0pt" space-after="6pt">
											<fo:inline font-weight="bold">Fecha de
											  Certificación</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell display-align="center">
										<fo:block color="#000" margin-top="2px" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" text-align="center" margin="0pt" space-after="3pt">
											<fo:inline>
												<xsl:value-of select="./cfdi:Complemento/tfd:TimbreFiscalDigital/@UUID"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell display-align="center">
										<fo:block color="#000" margin-top="2px" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" text-align="center" margin="0pt" space-after="3pt">
											<fo:inline>
												<xsl:value-of select="./cfdi:Complemento/tfd:TimbreFiscalDigital/@noCertificadoSAT"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell display-align="center">
										<fo:block color="#000" margin-top="2px" padding-bottom="2px" padding-left="0px" padding-right="0px" padding-top="2px" text-align="center" margin="0pt" space-after="3pt">
											<fo:inline>
												<xsl:call-template name="formateaFecha">
													<xsl:with-param name="sep" select="'/'"/>
													<xsl:with-param name="valor" select="./cfdi:Complemento/tfd:TimbreFiscalDigital/@FechaTimbrado"/>
												</xsl:call-template>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-rows-spanned="8" text-align="center" padding="2px" display-align="center">
										<fo:block>
											<fo:external-graphic src="https://emision.conectorfiscal.mx/publico/qr/QR.gif?uuid=?re={./cfdi:Emisor/@rfc}%26rr={./cfdi:Receptor/@rfc}%26tt={./@total}%26id={./cfdi:Complemento/tfd:TimbreFiscalDigital/@UUID}" width="30mm" height="30mm" content-height="30mm" content-width="30mm"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline font-weight="bold"> Sello Digital del Emisor: </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell number-rows-spanned="8" font-size="6pt" padding="2px" display-align="center">
										<fo:block>RECIBÍ DE:</fo:block>
										<fo:block text-align="center" font-weight="bold"><xsl:value-of select="./cfdi:Emisor/@nombre"/></fo:block>
										<fo:block>&#160;</fo:block>
										<fo:block>&#160;</fo:block>
										<fo:block>&#160;</fo:block>
										<fo:block>&#160;</fo:block>
										<fo:block>&#160;</fo:block>
										<fo:block text-align="center" font-weight="bold">_________________________</fo:block>
										<fo:block text-align="center" font-weight="bold">FIRMA</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<xsl:call-template name="Wrap">
											<xsl:with-param name="largo" select="80"/>
											<xsl:with-param name="valor" select="./@sello"/>
										</xsl:call-template>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="5pt">
										<fo:block font-weight="bold">&#160;</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-weight="bold">Sello Digital del SAT:</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<xsl:call-template name="Wrap">
											<xsl:with-param name="largo" select="80"/>
											<xsl:with-param name="valor" select="./cfdi:Complemento/tfd:TimbreFiscalDigital/@selloSAT"/>
										</xsl:call-template>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell font-size="5pt">
										<fo:block font-weight="bold">&#160;</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-weight="bold">Cadena Original del Timbre:</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<xsl:call-template name="Wrap">
											<xsl:with-param name="largo" select="80"/>
											<xsl:with-param name="valor">
												<xsl:call-template name="timbreFiscal"/>
											</xsl:with-param>
										</xsl:call-template>
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
	<!-- Template WRAP -->
	<xsl:template name="Wrap">
		<xsl:param name="largo"/>
		<xsl:param name="valor"/>
		<xsl:if test="$valor">
			<xsl:choose>
				<xsl:when test="string-length($valor) &lt;= number( $largo )">
					<fo:block>
						<fo:inline color="#000" font-family="Courier" font-size="5pt" line-height="6pt">
							<xsl:value-of select="$valor"/>
						</fo:inline>
					</fo:block>
				</xsl:when>
				<xsl:otherwise>
					<fo:block>
						<fo:inline color="#000" font-family="Courier" font-size="5pt" line-height="6pt">
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
	<!-- Aqu√≠ iniciamos el procesamiento de la cadena original con su | inicial y el terminador || -->
	<xsl:template name="timbreFiscal">|<xsl:call-template name="TimbreFiscalDigital"/>||</xsl:template>
	<!--  Aqu√≠ iniciamos el procesamiento de los datos incluidos en el comprobante -->
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
