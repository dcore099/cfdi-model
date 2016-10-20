package mx.bigdata.sat.cfdi;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import mx.bigdata.sat.common.CFDFactory;

import com.google.common.io.ByteStreams;

public final class CFDIFactory extends CFDFactory {
  
  public static CFDI load(File file) throws Exception {
    InputStream in = new FileInputStream(file);
    try {
      return load(in);
    } finally {
      in.close();
    }
  }
  
  public static CFDI load(InputStream in) throws Exception {
    return getCFDI(in);
  }
  
  private static CFDI getCFDI(InputStream in) throws Exception {
    ByteArrayOutputStream baos = new ByteArrayOutputStream();
    ByteStreams.copy(in, baos);
    byte[] data = baos.toByteArray();
    if (getVersion(data).equals("3.2")) {
      return new CFDv32(new ByteArrayInputStream(data));
    } else {
      return new CFDv3(new ByteArrayInputStream(data));
    }
  }
}