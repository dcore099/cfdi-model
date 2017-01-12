package mx.com.teqsoftqro.stamp.model;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "LotesCFDi")
@XmlType
public class LotesCFDi {

	private List<LoteCFDi> lotes;
	
	public LotesCFDi() {
		setLotes(new ArrayList<LoteCFDi>());
	}
	@XmlElement(name = "CFDis")
	public List<LoteCFDi> getLotes() {
		return lotes;
	}
	public void setLotes(List<LoteCFDi> lotes) {
		this.lotes = lotes;
	}
	
	
}
