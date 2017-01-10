package mx.com.teqsoftqro.sat.common;

import java.util.List;

import com.google.common.collect.Lists;

public class DocumentType {

	private String root;
	private String version;

	public DocumentType() {};
	public DocumentType(String root, String version) {
		this.root = root;
		this.version = version;
	}

	public String getRoot() {
		return root;
	}
	public String getVersion() {
		return version;
	}
	public void setRoot(String root) {
		this.root = root;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	
	public boolean equals(Object obj) {
		if (obj instanceof DocumentType) {
			DocumentType docType = (DocumentType) obj;
			return docType.getRoot().equals(this.getRoot())&&docType.getVersion().equals(this.getVersion());
		}
		return false;
	}

	public static final DocumentType NOMINA12 = new DocumentType("Nomina", "1.2");
	public static final DocumentType NOMINA11 = new DocumentType("Nomina", "1.1");
	public static final DocumentType CFDI32 = new DocumentType("Comprobante", "3.2");
	public static final DocumentType TFD10 = new DocumentType("TimbreFiscalDigital", "1.0");
	
	public static final List<DocumentType> docTypes = Lists.newArrayList(
			CFDI32
		  , NOMINA11
		  , NOMINA12
		  , TFD10);
}
