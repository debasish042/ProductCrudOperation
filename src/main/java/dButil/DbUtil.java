package dButil;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class DbUtil {
	
	StandardServiceRegistry  ssr=null;
	Metadata md=null;
	SessionFactory sf=null;
	Session session=null;
	
	public Session dbConn() {
		//SSR is used to map the config file and execute it .
		 ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg1.xml").build();	
		//Metadata of the xml file is read by this object
		md=new MetadataSources(ssr).getMetadataBuilder().build();
		//session-factory- db
		 sf=md.getSessionFactoryBuilder().build();
		//all the crud operations need to be done in Session 
		session=sf.openSession();
		
		return session;
	}

}
