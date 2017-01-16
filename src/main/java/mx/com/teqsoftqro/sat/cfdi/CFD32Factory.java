package mx.com.teqsoftqro.sat.cfdi;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.cert.X509Certificate;

import javax.xml.XMLConstants;
import javax.xml.bind.util.JAXBSource;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;

import org.apache.commons.codec.binary.Base64;
import org.xml.sax.ErrorHandler;

import mx.bigdata.sat.security.KeyLoaderEnumeration;
import mx.bigdata.sat.security.factory.KeyLoaderFactory;
import mx.com.teqsoftqro.sat.common.ComprobanteBase;
import mx.com.teqsoftqro.sat.common.DiscoveryFormatType;
import mx.com.teqsoftqro.sat.common.URIResolverImpl;
import mx.gob.sat.cfd._32.Comprobante;

public class CFD32Factory extends ObjectFactory implements CFDI {

	private static final String XSLT = "/xslt/cadenaoriginal_3_2.xslt";
	
	private static final String[] XSD = new String[] { "/xsd/v32/cfdv32.xsd", "/xsd/v3/TimbreFiscalDigital.xsd",
			"/xsd/common/TuristaPasajeroExtranjero/TuristaPasajeroExtranjero.xsd",
			"/xsd/common/detallista/detallista.xsd", "/xsd/common/divisas/divisas.xsd", "/xsd/common/donat/donat11.xsd",
			"/xsd/common/ecb/ecb.xsd", "/xsd/common/ecc/ecc.xsd", "/xsd/common/iedu/iedu.xsd",
			"/xsd/common/implocal/implocal.xsd", "/xsd/common/leyendasFisc/leyendasFisc.xsd",
			"/xsd/common/pfic/pfic.xsd", "/xsd/common/psgcfdsp/psgcfdsp.xsd", "/xsd/common/psgecfd/psgecfd.xsd",
			"/xsd/common/terceros/terceros11.xsd", "/xsd/common/ventavehiculos/ventavehiculos.xsd",
			"/xsd/common/nomina/nomina11.xsd", "/xsd/common/nomina12/nomina12.xsd" };
	
	private TransformerFactory tf;
	
	public CFD32Factory(InputStream in) throws Exception {
		super(in, DiscoveryFormatType.XML);
	}
	
	public CFD32Factory(Object obj) throws Exception {
		super(obj, DiscoveryFormatType.XML);
	}

	@Override
	public void setTransformerFactory(TransformerFactory tf) {
		this.tf = tf;
		tf.setURIResolver(new URIResolverImpl());
	}

	@Override
	public void sellar(PrivateKey key, X509Certificate cert) throws Exception {
		Comprobante document = (Comprobante) this.document;
		cert.checkValidity();
		String signature = getSignature(key);
		document.setSello(signature);
		byte[] bytes = cert.getEncoded();
		Base64 b64 = new Base64(-1);
		String certStr = b64.encodeToString(bytes);
		document.setCertificado(certStr);
		BigInteger bi = cert.getSerialNumber();
		document.setNoCertificado(new String(bi.toByteArray()));
	}

	@Override
	public void validar() throws Exception {
		validar(null);
	}

	@Override
	public void validar(ErrorHandler handler) throws Exception {
		Comprobante document = (Comprobante) this.document;
		SchemaFactory sf = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
		Source[] schemas = new Source[XSD.length];
		for (int i = 0; i < XSD.length; i++) {
			schemas[i] = new StreamSource(getClass().getResourceAsStream(XSD[i]));
		}
		Schema schema = sf.newSchema(schemas);
		Validator validator = schema.newValidator();
		if (handler != null) {
			validator.setErrorHandler(handler);
		}
		validator.validate(new JAXBSource(getContext(this.docTypes), document));
	}

	@Override
	public void verificar() throws Exception {
		Comprobante document = (Comprobante) this.document;
		String certStr = document.getCertificado();
		Base64 b64 = new Base64();
		byte[] cbs = b64.decode(certStr);

		X509Certificate cert = KeyLoaderFactory.createInstance(KeyLoaderEnumeration.PUBLIC_KEY_LOADER, new ByteArrayInputStream(cbs)).getKey();

		String sigStr = document.getSello();
		byte[] signature = b64.decode(sigStr);
		byte[] bytes = getOriginalBytes();
		Signature sig = Signature.getInstance("SHA1withRSA");
		sig.initVerify(cert);
		sig.update(bytes);
		boolean bool = sig.verify(signature);
		if (!bool) {
			throw new Exception("Invalid signature");
		}
	}

	@Override
	public String getCadenaOriginal() throws Exception {
		byte[] bytes = getOriginalBytes();
		return new String(bytes, "UTF8");
	}

	@Override
	public ComprobanteBase getComprobante() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	byte[] getOriginalBytes() throws Exception {
		JAXBSource in = new JAXBSource(getContext(this.docTypes), document);
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		Result out = new StreamResult(baos);
		TransformerFactory factory = tf;
		if (factory == null) {
			factory = TransformerFactory.newInstance();
			factory.setURIResolver(new URIResolverImpl());
		}
		Transformer transformer = factory.newTransformer(new StreamSource(getClass().getResourceAsStream(XSLT)));
		transformer.transform(in, out);
		return baos.toByteArray();
	}
	
	String getSignature(PrivateKey key) throws Exception {
		byte[] bytes = getOriginalBytes();
		Signature sig = Signature.getInstance("SHA1withRSA");
		sig.initSign(key);
		sig.update(bytes);
		byte[] signed = sig.sign();
		Base64 b64 = new Base64(-1);
		return b64.encodeToString(signed);
	}
}
