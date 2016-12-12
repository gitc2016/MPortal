package am.gitc.mportal.action.utils;

import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Properties;

/**
 * Created by Stella on 25.11.2016.
 */
public class MD5 {

    public static String encryptPassword(String str) {
        Properties prop = new Properties();
        InputStream input = null;

        String generatedPassword = null;
        try {
            input = MD5.class.getClassLoader().getResourceAsStream("config.properties");
            prop.load(input);
            System.out.println();
            MessageDigest md = MessageDigest.getInstance(prop.getProperty("md5"));
            md.update(str.getBytes());
            byte[] bytes = md.digest();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < bytes.length; i++) {
                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
            }
            generatedPassword = sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                input.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return generatedPassword;
    }

}
