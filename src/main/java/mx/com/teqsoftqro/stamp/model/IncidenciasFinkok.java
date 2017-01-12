package mx.com.teqsoftqro.stamp.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "incidencias")
@XmlType
public class IncidenciasFinkok implements Serializable {

	private static final long serialVersionUID = 1L;
	private List<IncidenciaFinkok> incidencias;
	
	public IncidenciasFinkok() {
		setIncidencias(new ArrayList<IncidenciaFinkok>());
	}

	@XmlElement(name = "Incidencia")
	public List<IncidenciaFinkok> getIncidencias() {
		return incidencias;
	}

	public void setIncidencias(List<IncidenciaFinkok> incidencias) {
		this.incidencias = incidencias;
	}
	
}
