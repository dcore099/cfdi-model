/*
 *  Copyright 2010-2011 BigData.mx
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

package mx.bigdata.sat.cfdi.examples;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import org.bouncycastle.crypto.macs.CMac;

import mx.gob.sat.cfd._32.Comprobante;
import mx.gob.sat.cfd._32.ObjectFactory;
import mx.gob.sat.cfd._32.TUbicacion;
import mx.gob.sat.cfd._32.TUbicacionFiscal;
import mx.gob.sat.cfd._32.Comprobante.Addenda;
import mx.gob.sat.cfd._32.Comprobante.Complemento;
import mx.gob.sat.cfd._32.Comprobante.Conceptos;
import mx.gob.sat.cfd._32.Comprobante.Conceptos.Concepto;
import mx.gob.sat.cfd._32.Comprobante.Emisor;
import mx.gob.sat.cfd._32.Comprobante.Emisor.RegimenFiscal;
import mx.gob.sat.cfd._32.Comprobante.Impuestos;
import mx.gob.sat.cfd._32.Comprobante.Impuestos.Traslados;
import mx.gob.sat.cfd._32.Comprobante.Impuestos.Traslados.Traslado;
import mx.gob.sat.cfd._32.Comprobante.Receptor;

public final class ExampleCFDv32Factory {
    
  public static Comprobante createComprobante() throws Exception {
    ObjectFactory of = new ObjectFactory();
    Comprobante comp = of.createComprobante();
    comp.setVersion("3.2");
    Date date = new GregorianCalendar(2012, 1, 6, 20, 38, 12).getTime();
    comp.setFecha(date);
    comp.setFormaDePago("PAGO EN UNA SOLA EXHIBICION");
    comp.setSubTotal(new BigDecimal("466.43"));
    comp.setTotal(new BigDecimal("488.50"));
    comp.setTipoDeComprobante("ingreso");
    comp.setMetodoDePago("efectivo");
    comp.setLugarExpedicion("Mexico");
    comp.setSerie("UME");
    comp.setEmisor(createEmisor(of));
    comp.setReceptor(createReceptor(of));
    comp.setConceptos(createConceptos(of));
    comp.setImpuestos(createImpuestos(of));
    //comp.setAddenda(createAddenda(of));
    comp.setComplemento(createComplemento(of));
    return comp;
  }
  
  private static Complemento createComplemento(ObjectFactory of) throws ParseException{
	  Complemento complemento = of.createComprobanteComplemento();
	  /*mx.bigdata.sat.common.nomina.schema.ObjectFactory ofn = new mx.bigdata.sat.common.nomina.schema.ObjectFactory();
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	  
	  Nomina nomina = ofn.createNomina();
	  nomina.setAntiguedad(3);
	  nomina.setBanco("HSB");
	  nomina.setCLABE("012345678901234567");
	  nomina.setCURP("RATR890123HVZMPL06");
	  nomina.setDepartamento("FINANZAS");
	  nomina.setVersion("1.1");
	  
	  Nomina.Deducciones deducciones = ofn.createNominaDeducciones();
	  Nomina.Deducciones.Deduccion deduccion1 = ofn.createNominaDeduccionesDeduccion();
	  deduccion1.setClave("AAAA");
	  deduccion1.setConcepto("Cualquiera");
	  deduccion1.setImporteExento(BigDecimal.valueOf(1234.2345));
	  deduccion1.setImporteGravado(BigDecimal.valueOf(123.234));
	  deduccion1.setTipoDeduccion("Cualquiera");
	  Nomina.Deducciones.Deduccion deduccion2 = ofn.createNominaDeduccionesDeduccion();
	  deduccion2.setClave("BBBB");
	  deduccion2.setConcepto("Cualquiera2");
	  deduccion2.setImporteExento(BigDecimal.valueOf(123.23));
	  deduccion2.setImporteGravado(BigDecimal.valueOf(234.34));
	  deduccion2.setTipoDeduccion("cualquiera2");
	  deducciones.getDeduccion().add(deduccion1);
	  deducciones.getDeduccion().add(deduccion2);
	  deducciones.setTotalExento(BigDecimal.valueOf(1000.23));
	  deducciones.setTotalGravado(BigDecimal.valueOf(2345.34));
	  nomina.setDeducciones(deducciones);
	  
	  nomina.setFechaFinalPago(sdf.parse("2016-01-30"));
	  nomina.setFechaInicialPago(sdf.parse("2016-01-15"));
	  nomina.setFechaInicioRelLaboral(sdf.parse("2000-01-01"));
	  nomina.setFechaPago(sdf.parse("2016-01-30"));
	  nomina.setTipoRegimen(2);
	  nomina.setTipoJornada("matutino");
	  nomina.setTipoContrato("base");
	  nomina.setSalarioDiarioIntegrado(BigDecimal.valueOf(123.23));
	  nomina.setSalarioBaseCotApor(BigDecimal.valueOf(234.45));
	  nomina.setRiesgoPuesto(3);
	  nomina.setRegistroPatronal("Nose");
	  nomina.setPuesto("Desarrollador");
	  nomina.setPeriodicidadPago("Quinenal");
	  nomina.setNumSeguridadSocial("RATR8901237J6");
	  nomina.setNumEmpleado("101010");
	  nomina.setNumDiasPagados(BigDecimal.valueOf(15));
	  
	  Nomina.Percepciones percepciones = ofn.createNominaPercepciones();
	  Nomina.Percepciones.Percepcion percepcion1 = ofn.createNominaPercepcionesPercepcion();
	  percepcion1.setClave("CCCC");
	  percepcion1.setConcepto("Cualquiera3");
	  percepcion1.setImporteExento(BigDecimal.valueOf(123.45));
	  percepcion1.setImporteGravado(BigDecimal.valueOf(345.56));
	  percepcion1.setTipoPercepcion("Cualquiera3");
	  Nomina.Percepciones.Percepcion percepcion2 = ofn.createNominaPercepcionesPercepcion();
	  percepcion2.setClave("DDDD");
	  percepcion2.setConcepto("Cualquiera4");
	  percepcion2.setImporteExento(BigDecimal.valueOf(123.45));
	  percepcion2.setImporteGravado(BigDecimal.valueOf(345.56));
	  percepcion2.setTipoPercepcion("Cualquiera4");
	  percepciones.getPercepcion().add(percepcion1);
	  percepciones.getPercepcion().add(percepcion2);
	  percepciones.setTotalExento(BigDecimal.valueOf(456.67));
	  percepciones.setTotalGravado(BigDecimal.valueOf(678.89));
	  nomina.setPercepciones(percepciones);
	  
	  Nomina.HorasExtras hrsExt = ofn.createNominaHorasExtras();
	  Nomina.HorasExtras.HorasExtra hrs = ofn.createNominaHorasExtrasHorasExtra();
	  hrs.setDias(2);
	  hrs.setHorasExtra(2);
	  hrs.setImportePagado(BigDecimal.valueOf(13579.23));
	  hrs.setTipoHoras("Triples");
	  Nomina.HorasExtras.HorasExtra hrs1 = ofn.createNominaHorasExtrasHorasExtra();
	  hrs1.setDias(3);
	  hrs1.setHorasExtra(3);
	  hrs1.setImportePagado(BigDecimal.valueOf(3579.23));
	  hrs1.setTipoHoras("dobles");
	  hrsExt.getHorasExtra().add(hrs);
	  hrsExt.getHorasExtra().add(hrs1);
	  nomina.setHorasExtras(hrsExt);
	  
	  Nomina.Incapacidades incapacidades = ofn.createNominaIncapacidades();
	  Nomina.Incapacidades.Incapacidad incapacidad1 = ofn.createNominaIncapacidadesIncapacidad();
	  incapacidad1.setTipoIncapacidad(3);
	  incapacidad1.setDiasIncapacidad(BigDecimal.valueOf(2.5));
	  incapacidad1.setDescuento(BigDecimal.valueOf(123.2));
	  /*Nomina.Incapacidades.Incapacidad incapacidad2 = ofn.createNominaIncapacidadesIncapacidad();
	  incapacidad2.setTipoIncapacidad(3);
	  incapacidad2.setDiasIncapacidad(BigDecimal.valueOf(2.5));
	  incapacidad2.setDescuento(BigDecimal.valueOf(123.2));*/
	  /*incapacidades.getIncapacidad().add(incapacidad1);
	  //incapacidades.getIncapacidad().add(incapacidad2);
	  nomina.setIncapacidades(incapacidades);
	  
	  complemento.getAny().add(nomina);
	  */
	  return complemento;
  }
    
  private static Emisor createEmisor(ObjectFactory of) {
    Emisor emisor = of.createComprobanteEmisor();
    emisor.setNombre("PHARMA PLUS SA DE CV");
    emisor.setRfc("PPL961114GZ1");
    TUbicacionFiscal uf = of.createTUbicacionFiscal();
    uf.setCalle("AV. RIO MIXCOAC");
    uf.setCodigoPostal("03240");
    uf.setColonia("ACACIAS"); 
    uf.setEstado("DISTRITO FEDERAL"); 
    uf.setMunicipio("BENITO JUAREZ"); 
    uf.setNoExterior("No. 140"); 
    uf.setPais("Mexico"); 
    emisor.setDomicilioFiscal(uf);
    TUbicacion u = of.createTUbicacion();
    u.setCalle("AV. UNIVERSIDAD");
    u.setCodigoPostal("03910");
    u.setColonia("OXTOPULCO"); 
    u.setEstado("DISTRITO FEDERAL");
    u.setNoExterior("1858");
    u.setPais("Mexico"); 
    emisor.setExpedidoEn(u); 
    RegimenFiscal rf = of.createComprobanteEmisorRegimenFiscal();
    rf.setRegimen("simplificado");
    emisor.getRegimenFiscal().add(rf);
    return emisor;
  }

  private static Receptor createReceptor(ObjectFactory of) {
    Receptor receptor = of.createComprobanteReceptor();
    receptor.setNombre("JUAN PEREZ PEREZ");
    receptor.setRfc("PEPJ8001019Q8");
    TUbicacion uf = of.createTUbicacion();
    uf.setCalle("AV UNIVERSIDAD");
    uf.setCodigoPostal("04360");
    uf.setColonia("COPILCO UNIVERSIDAD"); 
    uf.setEstado("DISTRITO FEDERAL"); 
    uf.setMunicipio("COYOACAN"); 
    uf.setNoExterior("16 EDF 3"); 
    uf.setNoInterior("DPTO 101"); 
    uf.setPais("Mexico"); 
    receptor.setDomicilio(uf);
    return receptor;
  }

  private static Conceptos createConceptos(ObjectFactory of) {
    Conceptos cps = of.createComprobanteConceptos();
    List<Concepto> list = cps.getConcepto(); 
    Concepto c1 = of.createComprobanteConceptosConcepto();
    c1.setUnidad("CAPSULAS");
    c1.setImporte(new BigDecimal("244.00"));
    c1.setCantidad(new BigDecimal("1.0"));
    c1.setDescripcion("VIBRAMICINA 100MG 10");
    c1.setValorUnitario(new BigDecimal("244.00"));
    list.add(c1);
    Concepto c2 = of.createComprobanteConceptosConcepto();
    c2.setUnidad("BOTELLA");
    c2.setImporte(new BigDecimal("137.93"));
    c2.setCantidad(new BigDecimal("1.0"));
    c2.setDescripcion("CLORUTO 500M");
    c2.setValorUnitario(new BigDecimal("137.93"));
    list.add(c2);
    Concepto c3 = of.createComprobanteConceptosConcepto();    
    c3.setUnidad("TABLETAS");
    c3.setImporte(new BigDecimal("84.50"));
    c3.setCantidad(new BigDecimal("1.0"));
    c3.setDescripcion("SEDEPRON 250MG 10");
    c3.setValorUnitario(new BigDecimal("84.50"));
    list.add(c3);
    return cps;
  }

  private static Impuestos createImpuestos(ObjectFactory of) {
    Impuestos imps = of.createComprobanteImpuestos();
    Traslados trs = of.createComprobanteImpuestosTraslados();
    List<Traslado> list = trs.getTraslado(); 
    Traslado t1 = of.createComprobanteImpuestosTrasladosTraslado();
    t1.setImporte(new BigDecimal("0.00"));
    t1.setImpuesto("IVA");
    t1.setTasa(new BigDecimal("0.00"));
    list.add(t1);
    Traslado t2 = of.createComprobanteImpuestosTrasladosTraslado();
    t2.setImporte(new BigDecimal("22.07"));
    t2.setImpuesto("IVA");
    t2.setTasa(new BigDecimal("16.00"));
    list.add(t2);
    imps.setTraslados(trs);
    return imps;
  }

  private static Addenda createAddenda(ObjectFactory of) {
    Addenda addenda = of.createComprobanteAddenda();
    Company2 c = new Company2();
    c.transaction = new Transaction2();
    c.transaction.purchaseOrder = "4600364283";
    addenda.getAny().add(c);
    return addenda;
  }

  @XmlRootElement(name="Company2")
  private final static class Company2 {
    @XmlElement(name="Transaction2")
    Transaction2 transaction;
  }
  
  @XmlRootElement
  private final static class Transaction2 {
    @SuppressWarnings("unused")
    @XmlAttribute(name="PurchaseOrder2")
    String purchaseOrder;
  }  
}