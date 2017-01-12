package mx.com.teqsoftqro.stamp.model;

import java.time.LocalDateTime;

public class DateResultFinkok {

	private LocalDateTime datetime;
	private String error;
	
	public LocalDateTime getDatetime() {
		return datetime;
	}
	public String getError() {
		return error;
	}
	public void setDatetime(LocalDateTime datetime) {
		this.datetime = datetime;
	}
	public void setError(String error) {
		this.error = error;
	}
	
}
