package mx.gob.seseqro.stamp.transformcfdi;

public class ExceptionUtils {

	public static String getRealMessage(Exception e) {
		if (null == e)
			return null;
		
		String finalMessage = "";
		
		String exceptionName = e.getClass().getName();
		String exceptionMessage = e.getMessage();
		
		if (null != exceptionMessage){
			finalMessage = finalMessage + exceptionName + exceptionMessage + ", ";
		}else {
			finalMessage = finalMessage + exceptionName + ", ";
		}

		Throwable linkedException = e.getCause();
		
		while (linkedException != null){
			String linkedExceptionName = linkedException.getClass().getName();
			String linkedExceptionMessage = linkedException.getMessage();
			
			if (null != linkedExceptionMessage){
				finalMessage = finalMessage + linkedExceptionName + linkedExceptionMessage + ", ";
			}else {
				finalMessage = finalMessage + linkedExceptionName + ", ";
			}
			linkedException = linkedException.getCause();
		}
		
		return finalMessage.trim();
	}

}
