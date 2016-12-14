package am.gitc.mportal.action;

import am.gitc.mportal.action.utils.MD5;
import am.gitc.mportal.domain.User;
import com.opensymphony.xwork2.ActionSupport;


import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by gtc-user29 on 11/28/2016.
 */
public class SendEmailAction extends ActionSupport {


    public static String sendEmail(String email) {
        String ret = SUCCESS;
        final Properties properties = new Properties();
        InputStream inputStream = null;
        try {
            inputStream = MD5.class.getClassLoader().getResourceAsStream("config.properties");
            properties.load(inputStream);

            Session session = Session.getDefaultInstance(properties,
                    new javax.mail.Authenticator() {
                        protected PasswordAuthentication
                        getPasswordAuthentication() {
                            return new
                                    PasswordAuthentication(properties.getProperty("adminEmail"), properties.getProperty("adminPassword"));
                        }
                    });

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(properties.getProperty("adminEmail")));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(email));
            message.setSubject("MPortal");
            message.setText("Please enter this code http://localhost:8080/activate.action?hashcode=" + MD5.encryptPassword(email) + " that you will be able to register in MPortal page");
            Transport.send(message);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            ret = ERROR;
            e.printStackTrace();
        }
        return ret;
    }
}
