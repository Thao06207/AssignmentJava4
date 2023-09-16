package poly.edu.model;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import poly.edu.untils.JpaUtils;

public class VideoDao {
	
	  EntityManager em = JpaUtils.getEntityManager();
	   @Override
	   protected void finalize() throws Throwable {
		   em.close();
		   super.finalize();
		   
	   }
	   public Video create(Video entity) {
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
	   public Video update(Video entity) {
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
	   public Video remove(String id) {
		   Video entity = this.findById(id);
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
	   
	   public Video findById(String id) {
		   Video entity = em.find(Video.class,id);
		   return entity;
	   }
	   public List<Video> findAll(){
		   String jpql = "SELECT v FROM Video v";
		   TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		   List<Video> list = query.getResultList();
		   return list;
	   }
	
	
	
	   
	   
	 public List<Video> findVideoFavortiesByUserID(String uID){
		   EntityManager em = JpaUtils.getEntityManager();
		  String jpql = "Select f.video from Favorite f WHERE f.user.id= :username";
		  TypedQuery<Video>  query = em.createQuery(jpql,Video.class);
		  query.setParameter("username", uID);
		  return  query.getResultList();
		  
	   }
	   // truy van cac video duoc yeu thich boi User có tile "em"
	   public List<Video> findVideoFavortiesByUserVideoTitle(String keyword){
		   EntityManager em = JpaUtils.getEntityManager();
		  String jpql = "Select DISTINCT f.video from Favorite f where f.video.title like :keyword";
		  TypedQuery<Video>  query = em.createQuery(jpql,Video.class);
		  query.setParameter("keyword", "%"+keyword+"%");
		  return  query.getResultList();
		  
	   }
	   
	   // truy van cac video khong duoc yeu thich 
	   public List<Video> findVideoNotFavorties(){
		   EntityManager em = JpaUtils.getEntityManager();
		  String jpql = "SELECT v FROM Video v WHERE  v.favorites is empty";
		  TypedQuery<Video> query = em.createQuery(jpql, Video.class); 
		  return  query.getResultList();
		  
	   }

	   public long CountVideoFavortiesByID(String vID){
		   EntityManager em = JpaUtils.getEntityManager();
		  String jpql = "Select count(f) from Favorite f WHERE f.video.id= :ID";
		  TypedQuery<Long>  query = em.createQuery(jpql,Long.class);
		  query.setParameter("ID", vID);
		  return  query.getSingleResult();
		  
	   }
	   
	   public List<Video> showvideo(boolean favorite){
		   String jpql = "SELECT v FROM Video v WHERE v.favorites IS EMPTY";
			if(favorite) {
			jpql = "SELECT v FROM Video v WHERE v.favorites IS NOT EMPTY";
			}
			   EntityManager em = JpaUtils.getEntityManager();

			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
			List<Video> list = query.getResultList();
			return list;
		  
	   }
	   public List<Video> findByKeyWordName(String keyword){
			  EntityManager em = JpaUtils.getEntityManager();
			  TypedQuery<Video>  query = em.createNamedQuery("Video.findByKeyword",Video.class);
			  query.setParameter("keyword", "%"+keyword+"%");
			  List<Video> list = query.getResultList();
			  return list;
			  
			  
		   }
	   
	   public List<Video> findByUserName(String id){
		  EntityManager em = JpaUtils.getEntityManager();
		  TypedQuery<Video>  query = em.createNamedQuery("Video.findByUser",Video.class);
		  query.setParameter("id", id);
		  List<Video> list = query.getResultList();
		  return list;
		  
		  
	   }
	   public List<Video> findByRangeName(Date min, Date max){
			  EntityManager em = JpaUtils.getEntityManager();
			  TypedQuery<Video>  query = em.createQuery("Video.findByRange",Video.class);
			  query.setParameter("min", min);
			  query.setParameter("max", max);
			  List<Video> list = query.getResultList();
			  return list;
			  
			  
		   }
	   public List<Video> findByMothName(List<Integer> months){
			  EntityManager em = JpaUtils.getEntityManager();
			  TypedQuery<Video>  query = em.createQuery("Video.findMoths",Video.class);
			  query.setParameter("months",months );
			 
			  List<Video> list = query.getResultList();
			  return list;
			  
			  
		   }
}
