package mx.com.teqsoftqro.sat.common;

import java.util.List;

import com.google.common.base.Joiner;
import com.google.common.collect.Lists;

public class Constants {

	public static final String CFDI32 = "mx.gob.sat.cfd._32";
	public static final String NOMINA11 = "mx.gob.sat.nomina";
	public static final String NOMINA12 = "mx.gob.sat.nomina12";
	public static final String TFD10 = "mx.gob.sat.cfd.timbrefiscaldigital";
	
	public static final List<String> packages = Lists.newArrayList(
			CFDI32
		  , NOMINA11
		  , NOMINA12
		  , TFD10
		  );
	
	public final static Joiner JOINER = Joiner.on(':');
	
}
