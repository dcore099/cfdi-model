package mx.gob.seseqro.stamp.transformcfdi;

import java.io.Serializable;
import java.util.List;

public class ExtractionStatusModel implements Serializable{
	
	private static final long serialVersionUID = 4924751874656309334L;
	
	private String statusMessage;
	private Integer statusCode;
	private List<String> statusMessages;
	
	public String getStatusMessage() {
		return statusMessage;
	}
	public void setStatusMessage(String statusMessage) {
		this.statusMessage = statusMessage;
	}
	public Integer getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(Integer statusCode) {
		this.statusCode = statusCode;
	}
	public List<String> getStatusMessages() {
		return statusMessages;
	}
	public void setStatusMessages(List<String> statusMessages) {
		this.statusMessages = statusMessages;
	}
	
	

}
