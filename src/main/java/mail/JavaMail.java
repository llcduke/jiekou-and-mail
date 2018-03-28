package mail;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class JavaMail {

	public static void main(String[] args) throws AddressException, MessagingException {
		Properties properties = new Properties();
		properties.setProperty("mail.transport.protocol", "smtp");//�����ʼ�Э��
		properties.setProperty("mail.smtp.auth", "true");//��Ҫ��֤
		properties.setProperty("mail.debug", "true");//����debugģʽ ��̨����ʼ����͵Ĺ���
		Session session = Session.getInstance(properties);
		session.setDebug(true);//debugģʽ
		//�ʼ���Ϣ
		Message messgae = new MimeMessage(session);
		messgae.setFrom(new InternetAddress("llcdukes0613@163.com"));//���÷�����
		messgae.setText("what's up man");//�����ʼ�����
		messgae.setSubject("���ǸóԷ���");//�����ʼ�����
		//�����ʼ�
		Transport tran = session.getTransport();

		//tran.connect("smtp.sina.com", 25, "xiexingxingvip@sina.com", "********");//���ӵ��������������
		tran.connect("smtp.163.com", 25, "llcdukes0613@163.com", "liulinchun521");//���ӵ��������������

		tran.sendMessage(messgae, new Address[]{ new InternetAddress("799654142@qq.com")});//�����ʼ�������
		tran.close();
		}
}
