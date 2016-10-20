
package org.w3._2001.xmlschema;

import java.util.Calendar;
import javax.xml.bind.annotation.adapters.XmlAdapter;

public class Adapter1
    extends XmlAdapter<String, Calendar>
{


    public Calendar unmarshal(String value) {
        return (mx.gob.seseqro.cfdi.utils.JaxbUtils.parseDateTime(value));
    }

    public String marshal(Calendar value) {
        return (mx.gob.seseqro.cfdi.utils.JaxbUtils.printDateTime(value));
    }

}
