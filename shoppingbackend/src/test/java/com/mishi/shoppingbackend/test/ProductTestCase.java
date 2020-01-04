package com.mishi.shoppingbackend.test;


import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.mishi.shoppingbackend.dao.ProductDAO;
import com.mishi.shoppingbackend.dto.Product;

public class ProductTestCase {
	
	private static AnnotationConfigApplicationContext context;
	private static ProductDAO productDAO;
	private Product product;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.mishi.shoppingbackend");
		context.refresh();
		productDAO = (ProductDAO)context.getBean("productDAO");
	}
	
	/*@Test
	public void testCRUDProduct() {
		
		//Create operation
		product = new Product();
		
		product.setName("Oppo Selfie S53");
		product.setBrand("Oppo");
		product.setDescription("Tis is some description about oppo mobile phone !");
		product.setUnitPrice(25000);
		product.setActive(true);
		product.setCategoryId(3);
		product.setSupplierId(3);
		
		assertEquals("Some went wrong while inserting product", true, productDAO.add(product));
		
		// Reading and updating the category
		product = productDAO.get(2);
		product.setName("Samsung Galaxy S7");
		assertEquals("Somthing went wrong while updating the record !", true, productDAO.update(product));
		assertEquals("Somthing went wrong while deleting the record !", true, productDAO.delete(product));
		
		// Fetch the list of products
		assertEquals("Somthing went wrong while fetching the records !", 6, productDAO.list().size());
	}*/
	
	@Test
	public void testListOfActiveProducts() {
		assertEquals("Somthing went wrong while fetching the records !", 5, productDAO.listActiveProducts().size());
	}
	
	@Test
	public void testListOfActiveProductsByCategory() {
		assertEquals("Somthing went wrong while fetching the records !", 3, productDAO.listActiveProductsByCategory(3).size());
		assertEquals("Somthing went wrong while fetching the records !", 2, productDAO.listActiveProductsByCategory(1).size());
	}
	
	@Test
	public void testGetLatestActiveProducts() {
		assertEquals("Somthing went wrong while fetching the records !", 3, productDAO.getLatestActiveProducts(3).size());
	}

}
