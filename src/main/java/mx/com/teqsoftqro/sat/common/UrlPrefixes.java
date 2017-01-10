package mx.com.teqsoftqro.sat.common;

import java.util.HashMap;
import java.util.Map;

public class UrlPrefixes {

	private String url;
	private String prefix;
	
	public UrlPrefixes() {}
	public UrlPrefixes(String url, String prefix) {
		this.url = url;
		this.prefix = prefix;
	}
	
	public String getUrl() {
		return url;
	}
	public String getPrefix() {
		return prefix;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}
	
	public static final UrlPrefixes CFDI32 = new UrlPrefixes("http://www.sat.gob.mx/cfd/3", "cfdi");
	public static final UrlPrefixes NOMINA11 = new UrlPrefixes("http://www.sat.gob.mx/nomina", "nomina");
	public static final UrlPrefixes NOMINA12 = new UrlPrefixes("http://www.sat.gob.mx/nomina12", "nomina12");
	public static final UrlPrefixes TFD10 = new UrlPrefixes("http://www.sat.gob.mx/TimbreFiscalDigital", "tfd");
	
}
