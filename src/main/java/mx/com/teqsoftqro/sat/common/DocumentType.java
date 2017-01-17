package mx.com.teqsoftqro.sat.common;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import com.google.common.collect.Lists;

@XmlRootElement(name = "DocumentType")
@XmlType
public class DocumentType {

	private String root;
	private String version;
	private String paquete;
	private Class clase;
	private String namespacePrefix;
	private String namespace;
	private String schemaLocation;
	private String rootXPath;
	private String versionXPath;
	private String rootJsonPath;
	private String versionJsonPath;
	
	public DocumentType() {};
	public DocumentType(String root, String version) {
		this.root = root;
		this.version = version;
	}
	public DocumentType(String root
					  , String version
					  , String paquete
					  , Class clase
					  , String namespacePrefix
					  , String namespace
					  , String schemaLocation
					  , String rootXPath
					  , String versionXPath
					  ,	String rootJsonPath
					  , String versionJsonPath) {
		this.root = root;
		this.version = version;
		this.paquete = paquete;
		this.clase = clase;
		this.namespacePrefix = namespacePrefix;
		this.namespace = namespace;
		this.schemaLocation = schemaLocation;
		this.rootXPath = rootXPath;
		this.versionXPath = versionXPath;
		this.rootJsonPath = rootJsonPath;
		this.versionJsonPath = versionJsonPath;
	}
	
	public boolean equals(Object obj) {
		if (obj instanceof DocumentType) {
			DocumentType docType = (DocumentType) obj;
			return docType.getRoot().equals(this.getRoot())&&docType.getVersion().equals(this.getVersion());
		}
		return false;
	}

	public static final DocumentType NOMINA12 = new DocumentType(
		     "Nomina"
		   , "1.2"
		   , "mx.gob.sat.nomina12"
		   , mx.gob.sat.nomina12.Nomina.class
		   , "nomina12"
		   , "http://www.sat.gob.mx/nomina12"
		   , "http://www.sat.gob.mx/informacion_fiscal/factura_electronica/Documents/Complementoscfdi/nomina12.xsd"
		   , "/*/Nomina[@Version='1.2']|/Nomina[@Version='1.2']|//*/Nomina[@Version='1.2']"
		   , ""
		   , "$..Nomina[?(@.Version=='1.2')]"
		   , "");
	public static final DocumentType NOMINA11 = new DocumentType(
			 "Nomina"
		   , "1.1"
		   , "mx.gob.sat.nomina"
		   , mx.gob.sat.nomina.Nomina.class
		   , "nomina"
		   , "http://www.sat.gob.mx/nomina"
		   , "http://www.sat.gob.mx/sitio_internet/cfd/nomina/nomina11.xsd"
		   , "/*/Nomina[@version='1.1']|/Nomina[@version='1.1']|//*/Nomina[@version='1.1']"
		   , ""
		   , "$..Nomina[?(@.version=='1.1')]"
		   , "");
	public static final DocumentType CFDI32 = new DocumentType(
			 "Comprobante"
		   , "3.2"
		   , "mx.gob.sat.cfd._32"
		   , mx.gob.sat.cfd._32.Comprobante.class
		   , "cfdi"
		   , "http://www.sat.gob.mx/cfd/3"
		   , "http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv32.xsd"
		   , "/*/Comprobante[@version='3.2']|/Comprobante[@version='3.2']|/*/comprobante[@version='3.2']"
		   , ""
		   , "$..[?(@.version=='3.2')][?(@.Emisor)]"
		   , "");
	public static final DocumentType TFD10 = new DocumentType(
			 "TimbreFiscalDigital"
		   , "1.0"
		   , "mx.gob.sat.cfd.timbrefiscaldigital"
		   , mx.gob.sat.cfd.timbrefiscaldigital.TimbreFiscalDigital.class
		   , "tfd"
		   , "http://www.sat.gob.mx/TimbreFiscalDigital"
		   , "http://www.sat.gob.mx/sitio_internet/timbrefiscaldigital/TimbreFiscalDigital.xsd"
		   , "/*/TimbreFiscalDigital[@version='1.0']|/TimbreFiscalDigital[@version='1.0']|//*/TimbreFiscalDigital[@version='1.0']"
		   , ""
		   , "$..TimbreFiscalDigital[?(@.version=='1.0')]"
		   , "");
	public static final DocumentType CFDI = new DocumentType(
			 "CFDi"
		   , ""
		   , "mx.com.teqsoftqro.stamp.model"
		   , mx.com.teqsoftqro.stamp.model.CFDi.class
		   , ""
		   , ""
		   , ""
		   , "/*/CFDi/refID|/CFDi/refID|//*/CFDi/refID"
		   , ""
		   , "$..[?(@.refID)]"
		   , "");
	public static final DocumentType ACUSE_RECIBO_FINKOK = new DocumentType(
			 "AcuseRecibo"
		   , ""
		   , "mx.com.teqsoftqro.stamp.model"
		   , mx.com.teqsoftqro.stamp.model.AcuseReciboFinkok.class
		   , ""
		   , ""
		   , ""
		   , ""
		   , ""
		   , ""
		   , "");
	
	public static DocumentTypes docTypesRegistered() {
		DocumentTypes docTypes = new DocumentTypes();
		docTypes.getDocumentTypes().add(DocumentType.ACUSE_RECIBO_FINKOK);
		docTypes.getDocumentTypes().add(DocumentType.CFDI);
		docTypes.getDocumentTypes().add(DocumentType.CFDI32);
		docTypes.getDocumentTypes().add(DocumentType.NOMINA11);
		docTypes.getDocumentTypes().add(DocumentType.NOMINA12);
		docTypes.getDocumentTypes().add(DocumentType.TFD10);
		
		return docTypes;
	}

	public String getRoot() {
		return root;
	}
	public String getVersion() {
		return version;
	}
	public String getPaquete() {
		return paquete;
	}
	public Class getClase() {
		return clase;
	}
	public String getNamespacePrefix() {
		return namespacePrefix;
	}
	public String getNamespace() {
		return namespace;
	}
	public String getSchemaLocation() {
		return schemaLocation;
	}
	public String getRootXPath() {
		return rootXPath;
	}
	public String getVersionXPath() {
		return versionXPath;
	}
	public String getRootJsonPath() {
		return rootJsonPath;
	}
	public String getVersionJsonPath() {
		return versionJsonPath;
	}
	public void setRoot(String root) {
		this.root = root;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public void setPaquete(String paquete) {
		this.paquete = paquete;
	}
	public void setClase(Class clase) {
		this.clase = clase;
	}
	public void setNamespacePrefix(String namespacePrefix) {
		this.namespacePrefix = namespacePrefix;
	}
	public void setNamespace(String namespace) {
		this.namespace = namespace;
	}
	public void setSchemaLocation(String schemaLocation) {
		this.schemaLocation = schemaLocation;
	}
	public void setRootXPath(String rootXPath) {
		this.rootXPath = rootXPath;
	}
	public void setVersionXPath(String versionXPath) {
		this.versionXPath = versionXPath;
	}
	public void setRootJsonPath(String rootJsonPath) {
		this.rootJsonPath = rootJsonPath;
	}
	public void setVersionJsonPath(String versionJsonPath) {
		this.versionJsonPath = versionJsonPath;
	}
}
