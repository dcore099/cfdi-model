package mx.com.teqsoftqro.sat.common;

import java.util.List;

import org.w3c.dom.Element;

import mx.gob.sat.cfd._32.Comprobante;
import mx.gob.sat.cfd._32.ObjectFactory;

public class CFDv32ComprobanteBase implements ComprobanteBase {

	private final Comprobante document;
	private final List<DocumentType> documentTypes;

	public CFDv32ComprobanteBase(Comprobante document, List<DocumentType> docTypes) {
		this.document = document;
		this.documentTypes = docTypes;
	}

	public boolean hasComplemento() {
		return document.getComplemento() != null;
	}

	public List<Object> getComplementoGetAny() {
		return document.getComplemento().getAny();
	}

	public String getSello() {
		return document.getSello();
	}

	public void setComplemento(Element element) {
		ObjectFactory of = new ObjectFactory();
		Comprobante.Complemento comp = of.createComprobanteComplemento();
		List<Object> list = comp.getAny();
		list.add(element);
		document.setComplemento(comp);
	}

	public Object getComprobante() {
		return document;
	}

	@Override
	public List<DocumentType> getDocumentTypes() {
		return documentTypes;
	}
}
