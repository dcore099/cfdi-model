package mx.bigdata.sat.schema.binder;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class DateCustomBinder {
	public static Date parseDateTime(String s) {
	    try {
	      DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	      return formatter.parse(s);
	    } catch (ParseException e) {
	      throw new RuntimeException(e);
	    }
	  }
	  
	  public static String printDateTime(Date dt) {
	    DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	    return (dt == null) ? null : formatter.format(dt);
	  }
}
