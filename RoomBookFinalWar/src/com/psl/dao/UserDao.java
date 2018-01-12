package com.psl.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;


import com.psl.entity.User;
import com.psl.util.HibernateUtility;

public class UserDao {
	User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public String authenticateUser(String username,String password)
	{
		Session session=HibernateUtility.getSesssion();
		
		Query query=session.createQuery("from User where username='"+username+"' AND password='"+password+"'");
		
		List<User> list=query.list();
		System.out.println("Size"+list.size());
		for (User user : list) {
			return user.getUserType()+" "+user.getEmployeeFirstName()+" "+user.getEmployeeID();
			
		}
		return null;
	}
/*<<<<<<< .mine
	public boolean addUser(User user)
=======
	public void addUser(User user)
>>>>>>> .r267
	{
		sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

		Session session=HibernateUtility.getSesssion();
	
		Query q=session.createQuery("from User");
		
<<<<<<< .mine
		List<User> list=q.list();
		System.out.println("Size:"+list.size());
		if(list.size()==0)
		{
			session.save(user);
			session.beginTransaction().commit();
			return true;
		}
		else
		{
			for(User s:list)
			{
				System.out.println(s);
				if((s.getUsername()).equalsIgnoreCase(user.getUsername()))
				{
					System.out.println("already present");
					return false;
				}
				else
				{
					session.save(user);
					session.beginTransaction().commit();
				}
			}
			return true;
		}
		
=======
	}*/
	public boolean addUser(User user)
	{
		/*sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();*/

		Session session=HibernateUtility.getSesssion();
		
		Query q=session.createQuery("from User ");
		
		List<User> list=q.list();
		System.out.println("Size:"+list.size());
		if(list.size()==0)
		{
			session.save(user);
			session.beginTransaction().commit();
			return true;
		}
		else
		{
			for(User s:list)
			{
				System.out.println(s);
				if(s.getUsername().equalsIgnoreCase(user.getUsername()))
				{
					System.out.println("already present");
					return false;
				}
				else
				{
					session.save(user);
					session.beginTransaction().commit();
				}
			}
			return true;
		}
	
	}
	
	public static void main(String[] args) {
		UserDao userd=new UserDao();
		User u=new User(101,"anuja", "N", "admin1", "12345","Administrator");
		userd.setUser(u);
		userd.addUser(u);
		System.out.println(userd.authenticateUser("Ganesh", "ganesh"));
	}
	
}



/*
 * static SessionFactory sf;
	/*static{
	sf=new Configuration().configure().buildSessionFactory();
	}
	
	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Customer lookupCustomer(long phoneNumber) 
	{
		sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		//Criteria criteria=session.createCriteria(Customer.class);
		
		Query query=session.createQuery("from Customer where phoneNumber="+ phoneNumber);
			
		List<Customer> list=query.list();
		sf.close();
		for (Customer customer : list) {
			if(customer.getPhoneNumber()==phoneNumber)
				return customer;
		}
		return null;
	}
	
	public Customer addNewCustomer( Customer  customer) 
	{
		System.out.println("Dao"+ customer);
		sf=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

		Session session=sf.openSession();
		session.save(customer);
		session.beginTransaction().commit();
		System.out.println("Exiting Dao"+customer);
		return customer;
		
	}

 */