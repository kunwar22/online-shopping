package com.mishi.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.mishi.shoppingbackend.dao.UserDAO;
import com.mishi.shoppingbackend.dto.Address;
import com.mishi.shoppingbackend.dto.Cart;
import com.mishi.shoppingbackend.dto.User;

public class UserTestCase {
	
	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;
	private User user = null;
	private Cart cart = null;
	private Address address = null;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.mishi.shoppingbackend");
		context.refresh();
		
		userDAO = (UserDAO)context.getBean("userDAO");
	}

	/*@Test
	public void testAdd() {
		
		user = new User();
		
		user.setFirstName("Hritik");
		user.setLastName("Roshan");
		user.setEmail("hr@gmail.com");
		user.setContactNumber("1234567890");
		user.setRole("USER");
		user.setPassword("123456");
		
		assertEquals("Failed to create new user !", true, userDAO.addUser(user));
		
		address = new Address();
		address.setAddressLineOne("101/B Gokul Estate, Krishna Nagar");
		address.setAddressLineTwo("Near Keshri Kheda Crossing");
		address.setCity("Lucknow");
		address.setState("Uttar Pradesh");
		address.setCountry("India");
		address.setPostalCode("221004");
		address.setBilling(true);
		
		address.setUserId(user.getId());
		
		assertEquals("Failed to add address!", true, userDAO.addAddress(address));
		
		if(user.getRole().equals("USER")) {
			cart = new Cart();
			cart.setUser(user);
			
			assertEquals("Failed to add cart!", true, userDAO.addCart(cart));
			
			address = new Address();
			address.setAddressLineOne("101/B Gokul Estate, Krishna Nagar");
			address.setAddressLineTwo("Near Keshri Kheda Crossing");
			address.setCity("Lucknow");
			address.setState("Uttar Pradesh");
			address.setCountry("India");
			address.setPostalCode("221004");
			address.setShipping(true);
			
			address.setUserId(user.getId());
			
			assertEquals("Failed to add address!", true, userDAO.addAddress(address));
		}
	}*/
	
	/*@Test
	public void testAdd() {
		
		user = new User();
		
		user.setFirstName("Hritik");
		user.setLastName("Roshan");
		user.setEmail("hr@gmail.com");
		user.setContactNumber("1234567890");
		user.setRole("USER");
		user.setPassword("123456");
		
		
		if(user.getRole().equals("USER")) {
			cart = new Cart();
			cart.setUser(user);
			
			user.setCart(cart);
		}
		
		assertEquals("Failed to create new user !", true, userDAO.addUser(user));
	}*/
	
	@Test
	public void testUpdateCart() {
		user = userDAO.getByEmail("hr@gmail.com");
		cart = user.getCart();
		cart.setGrandTotal(5555);
		cart.setCartLines(2);
		
		assertEquals("Failed to update cart !", true, userDAO.updateCart(cart));
	}
}
