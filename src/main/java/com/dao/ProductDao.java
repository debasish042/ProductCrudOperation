package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.pojo.Product;

import dButil.DbUtil;

public class ProductDao{
	
	public int addProduct(Product product) {
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		int value=(Integer) session.save(product);
		trans.commit();
		session.close();
		return value;
		
	}
	
	public List<Product> display(){
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		//HQL
		Query query=session.createQuery("from Product");
		List<Product> list=query.list();
		trans.commit();
		session.close();
		return list;
	}
	
	public List<Product> delete(Product product) {
		DbUtil dbconn=new DbUtil();
		Session session=dbconn.dbConn();
		Transaction trans=session.beginTransaction();
		session.delete(product);
		trans.commit();
		session.close();
		return display();
	}

}

