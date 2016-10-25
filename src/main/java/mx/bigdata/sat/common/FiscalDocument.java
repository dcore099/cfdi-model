package mx.bigdata.sat.common;

import java.io.ByteArrayInputStream;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;

public abstract class FiscalDocument {
	public abstract String getVersion();
	public Class documentType()  throws Exception {
		return this.getClass();
	}
}
