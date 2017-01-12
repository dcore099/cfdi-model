package mx.com.teqsoftqro.sat.common;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "DocumentTypes")
@XmlType
public class DocumentTypes {

	private List<DocumentType> documentTypes;
	
	public DocumentTypes() {
		
	}
	@XmlElement(name = "DocumentTypes")
	public List<DocumentType> getDocumentTypes() {
		return documentTypes;
	}
	public void setDocumentTypes(List<DocumentType> documentTypes) {
		this.documentTypes = documentTypes;
	}
	
}
