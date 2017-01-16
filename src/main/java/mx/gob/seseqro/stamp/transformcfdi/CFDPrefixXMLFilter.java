package mx.gob.seseqro.stamp.transformcfdi;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.XMLFilterImpl;

public class CFDPrefixXMLFilter extends XMLFilterImpl {
	private final static String DIVERZA_PREFIX = "DIVERZA_NS_";
	private final static String BFADD2_NS ="http://www.buzonfiscal.com/ns/addenda/bf/2";
	private final static String PSGECFD_NS ="http://www.sat.gob.mx/psgecfd";
	private final static String XSI_NS ="http://www.w3.org/2001/XMLSchema-instance";
	private final static String CFD_NS ="http://www.sat.gob.mx/cfd/2";
	private final static String ECB_NS ="http://www.sat.gob.mx/ecb";
	private final static String SOR ="http://www.soriana.mx/Apps/v-Fact/Addendas/Emisor___Receptor___Soriana";
	private final static String IMPLOCAL_NS ="http://www.sat.gob.mx/implocal";
	
	@Override
	public void startPrefixMapping(String prefix, String uri)
			throws SAXException {

		if (uri.equals(CFDPrefixXMLFilter.PSGECFD_NS))
			prefix = "psgecfd";
		else if (uri.equals(CFDPrefixXMLFilter.BFADD2_NS))
			prefix = "bfa2";
		else if (uri.equals(CFDPrefixXMLFilter.XSI_NS))
			prefix = "xsi";
		else if (uri.equals(CFDPrefixXMLFilter.CFD_NS))
			prefix = "";
		else if(uri.equals(CFDPrefixXMLFilter.ECB_NS))
			prefix = "ecb";
		else if(uri.equals(CFDPrefixXMLFilter.IMPLOCAL_NS))
			prefix = "implocal";
		else
			uri = "";

		getContentHandler().startPrefixMapping(prefix, uri);
	}

	@Override
	public void startElement(String uri, String localName, String name,
			Attributes atts) throws SAXException {
		
		if (uri.equals(CFDPrefixXMLFilter.CFD_NS)){
			uri = "";
			name = localName;
		}
		if (uri.equals(CFDPrefixXMLFilter.SOR)){
			uri = "";
			name = localName;
		}

		getContentHandler().startElement(uri, localName, name,atts);
	}

	/* (non-Javadoc)
	 * @see org.xml.sax.helpers.XMLFilterImpl#endElement(java.lang.String, java.lang.String, java.lang.String)
	 */
	@Override
	public void endElement(String uri, String localName, String name)
			throws SAXException {
		
		if (uri.equals(CFDPrefixXMLFilter.CFD_NS)){
			uri = "";
			name = localName;
		}
		if (uri.equals(CFDPrefixXMLFilter.SOR)){
			uri = "";
			name = localName;
		}
		
		getContentHandler().endElement(uri, localName, name);
	}
	
}
