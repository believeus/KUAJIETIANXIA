package cn.believeus.util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;

public class PropertiesHelp {
	private static Properties loadProperty(String file, String key) {
		Properties properties = new Properties();
		ClassLoader classLoader = PropertiesHelp.class.getClassLoader();
		InputStream inStream = classLoader
				.getResourceAsStream("project.properties");
		try {
			properties.load(inStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return properties;
	}
	public static String getValueByKey(String file,String key){
		Properties properties = loadProperty(file, key);
		String value = (String)properties.get(key);
		return value;
	}
	public static void setValueByKey(String file,String key,String value){
		Properties properties=loadProperty(file, key);
		OutputStream out=null;
		 try {
			out = new FileOutputStream(file);
			properties.setProperty(key, value);
			properties.store(out, "");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if(out!=null){
				try {
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
