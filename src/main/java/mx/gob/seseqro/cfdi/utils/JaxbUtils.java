package mx.gob.seseqro.cfdi.utils;

import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

import javax.xml.bind.DatatypeConverter;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

/*
 * @XmlSeeAlso({
	mx.gob.sat.psgecfd.jaxb2.ObjectFactory.class,
	com.buzonfiscal.ns.xsd.bf.addenda._2.ObjectFactory.class
})

 */
public class JaxbUtils {

	public static XMLGregorianCalendar nowXML() {
		XMLGregorianCalendar xmlCal = null;
		
		TimeZone tz = TimeZone.getTimeZone("America/Monterrey");
		Locale locale = new Locale("ES","MX");
		GregorianCalendar now = (GregorianCalendar) GregorianCalendar.getInstance(tz,locale);
		now.clear(Calendar.MILLISECOND);
	
		try {
			xmlCal = DatatypeFactory.newInstance().newXMLGregorianCalendar(now);
		} catch (DatatypeConfigurationException e) {
			System.out.println("No se pudo obtener fecha actual.");
		}
		return xmlCal;
	}
	
	public static XMLGregorianCalendar dateXMLGregorianCalendar(Calendar cal) {
		XMLGregorianCalendar xmlCal = null;
		
		TimeZone tz = TimeZone.getTimeZone("America/Monterrey");
		Locale locale = new Locale("ES","MX");
		GregorianCalendar fecha = (GregorianCalendar) GregorianCalendar.getInstance(tz,locale);
		fecha.setTime(cal.getTime());
		fecha.clear(Calendar.HOUR);
		fecha.clear(Calendar.SECOND);
		fecha.clear(Calendar.MILLISECOND);
		fecha.clear(Calendar.ZONE_OFFSET);
	
		try {
			xmlCal = DatatypeFactory.newInstance().newXMLGregorianCalendar(fecha);
		} catch (DatatypeConfigurationException e) {
			System.out.println("No se pudo obtener fecha actual.");
		}
		return xmlCal;
	}
	
	public static Calendar getCalendar(int year, int month, int day, int hour,
			int min, int sec) {
		GregorianCalendar fechaAuth = null;
		TimeZone tz = TimeZone.getTimeZone("America/Monterrey");
		Locale locale = new Locale("ES","MX");
		fechaAuth = (GregorianCalendar) GregorianCalendar.getInstance(tz,locale);
		fechaAuth.set(year, month, day, hour, min, sec);
		fechaAuth.clear(Calendar.MILLISECOND);
		fechaAuth.clear(Calendar.ZONE_OFFSET);	

		return fechaAuth;
	}

	public static Calendar parseDateTime(String lexicalXSDDateTime) {
		if (null == lexicalXSDDateTime)
			return null;
		Calendar cal = DatatypeConverter.parseDateTime(lexicalXSDDateTime);
		cal.clear(Calendar.MILLISECOND);
		return cal;
	}
	public static String printDateTime(Calendar val) {
		if (null == val)
			return null;
		val.clear(Calendar.MILLISECOND);
		return DatatypeConverter.printDateTime(val);
	}
	public static String printBase64Binary(byte[] val)  {
		if (null == val)
			return null;
		String converted = DatatypeConverter.printBase64Binary(val);
		String result = converted;
		
		int size = converted.length();
		if (size > 76){
			String segmented = "";
			int iniIndex = 0;
			int finIndex = 76;
			while (finIndex <= size) {
				segmented = segmented + converted.substring(iniIndex, finIndex) + "\n";
				iniIndex += 76;
				finIndex += 76;
			}
			segmented = segmented + converted.substring(iniIndex, size);
			result = segmented;
		}
		return result;
	}

	public static String printDateTimeNoTZ(Calendar val) {
		String res = null;
		if (null == val)
			return null;
		val.clear(Calendar.MILLISECOND);
		res =  DatatypeConverter.printDateTime(val);
		res = res.substring(0, 19);
		return res;
	}

}
