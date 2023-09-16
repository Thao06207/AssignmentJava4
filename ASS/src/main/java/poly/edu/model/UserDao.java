package poly.edu.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;


import poly.edu.untils.*;


public class UserDao {
	 private EntityManager em = JpaUtils.getEntityManager();
	   @Override
	   protected void finalize() throws Throwable {
		   em.close();
		   super.finalize();
		   
	   }
	   public User create(User entity) {
		   try {
			em.getTransaction().begin();
			em.persist(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			// TODO: handle exception
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	   }
	   public User update(User entity) {
		   try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			// TODO: handle exception
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	   }
	   public User remove(String id) {
		   User entity = this.findById(id);
		   try {
			em.getTransaction().begin();
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			// TODO: handle exception
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	   }
	   
	   public User findById(String id) {
		   User entity = em.find(User.class,id);
		   return entity;
	   }
	   public List<User> findAll(){;
		   String jpql = "SELECT u FROM User u";
		   TypedQuery<User> query = em.createQuery(jpql, User.class);
		   List<User> list = query.getResultList();
		   return list;
	   }
	   
	   
}
