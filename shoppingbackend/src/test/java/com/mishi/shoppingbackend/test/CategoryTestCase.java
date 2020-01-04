package com.mishi.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.mishi.shoppingbackend.dao.CategoryDAO;
import com.mishi.shoppingbackend.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;

	private static CategoryDAO categoryDAO;

	private Category category;

	@BeforeClass
	public static void init() {

		context = new AnnotationConfigApplicationContext();
		context.scan("com.mishi.shoppingbackend");
		context.refresh();

		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");

	}

	
	  /*@Test 
	  public void testAddCategory() {
	  
		  category = new Category();
	  
		  category.setName("TV");
		  category.setDescription("This is some description for category Wallmount TV.");
		  category.setImageURL("CAT_5.png");
	  
		  assertEquals("Successfully added category", true, categoryDAO.add(category));
	  
	  }*/
	 

	/*
	 * @Test public void testGetCaqtegory() {
	 * 
	 * category = categoryDAO.get(4); assertEquals("Successfully fetched category",
	 * "Laptop", category.getName());
	 * 
	 * }
	 */

	
	 /*@Test 
	 public void testUpdateCaqtegory() {
	  
		 category = categoryDAO.get(1); 
		 category.setName("Television");
		 assertEquals("Successfully Updated category Telivision", true, categoryDAO.update(category));
	  
	 }*/
	

	
	  @Test 
	  public void testDeleteCaqtegory() {
	  
	  category = categoryDAO.get(6);
	  assertEquals("Successfully deleted category Telivision", true, categoryDAO.delete(category));
	  
	  }
	 

	/*@Test
	public void testListCaqtegory() {

		assertEquals("Successfully fetched category List", 3, categoryDAO.list().size());

	}*/

}
