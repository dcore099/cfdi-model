package mx.bigdata.sat.cfdi;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.json.JsonReader;
import javax.json.stream.JsonParser;

import org.junit.Test;

import com.jayway.jsonpath.DocumentContext;
import com.jayway.jsonpath.JsonPath;

import mx.com.teqsoftqro.sat.common.DocumentType;
import net.minidev.json.JSONArray;

public class JsonParserTest {

	@Test
	public void test() throws FileNotFoundException {
		List<DocumentType> docType = new ArrayList<DocumentType>();
		DocumentContext dc = JsonPath.parse(new FileInputStream("resources/json/cfdi.json"));
		String versionComprobante = dc.read("$['comprobante']['version']");
		docType.add(new DocumentType("Comprobante", versionComprobante));
		Map<String, Object> listStr = dc.read("$['comprobante']['Complemento']");
		Set<Entry<String, Object>> keyValues = listStr.entrySet();
		for (Entry<String, Object> ent : keyValues) {
			String str = ((JSONArray) ent.getValue()).toString();
			JsonObject object = (JsonObject) ((JsonArray) Json.createReader(new StringReader(str)).read()).get(0);
			String version = (object.getJsonString("Version").getString() == null) ? object.getJsonString("version").getString() : null ;
			version = (version != null) ? version.replace("\"", "") : null ;
			docType.add(new DocumentType(ent.getKey(), version));
		};
		
		//JsonStructure structure = Json.createReader(new StringReader(listStr)).read();	
	}
	
}
