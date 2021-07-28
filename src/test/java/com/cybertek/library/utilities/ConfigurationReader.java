package com.cybertek.library.utilities;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class ConfigurationReader {
    private  static Properties properties = new Properties();//private so we encapsulate it so only the method that i will crete from this class will be able to reach this object

    static {
        try {
            FileInputStream file = new FileInputStream("configuration.properties");


            properties.load(file);

            //close the file
            file.close();
        } catch (IOException e) {
            System.out.println("File not found in Configuration properties.");
        }

    }


    public static  String getProperty(String keyWord){
        return properties.getProperty(keyWord);
    }

}
