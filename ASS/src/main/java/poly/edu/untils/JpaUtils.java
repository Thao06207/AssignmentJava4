package poly.edu.untils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
public class JpaUtils {
    public static EntityManager getEntityManager() {
    	EntityManagerFactory factory = Persistence.createEntityManagerFactory("ASS");
    	return factory.createEntityManager();
    	
    	
    	
    }
}
