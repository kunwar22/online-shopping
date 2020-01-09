package com.mishi.onlineshopping.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import com.mishi.onlineshopping.model.RegisterModel;
import com.mishi.shoppingbackend.dao.UserDAO;
import com.mishi.shoppingbackend.dto.Address;
import com.mishi.shoppingbackend.dto.Cart;
import com.mishi.shoppingbackend.dto.User;

@Component
public class RegisterHandler {
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	public RegisterModel init() {
		return new RegisterModel();
	}
	
	public void addUser(RegisterModel registerModel, User user) {
		registerModel.setUser(user);
	}
	
	public void addBilling(RegisterModel registerModel, Address billing) {
		registerModel.setBilling(billing);
	}
	
	
	public String validateUser(User user, MessageContext error) {
		String transitionValue = "success";
		
		// check if password matches the confirm password
		if(!(user.getPassword().equals(user.getConfirmPassword()))){
			
			error.addMessage(new MessageBuilder()
					.error()
					.source("confirmPassword")
					.defaultText("Password does not maches the confirm password !")
					.build());
			transitionValue = "failure";
		}
		
		// check the uniqueness of userid
		if(userDAO.getByEmail(user.getEmail()) != null) {
			
			error.addMessage(new MessageBuilder()
					.error()
					.source("email")
					.defaultText("Email address is already used !")
					.build());
			transitionValue = "failure";
		}
		
		
		return transitionValue;
	}
	
	
	public String saveAll(RegisterModel model) {
		String transitionValue = "success";
		
		// fetch the user
		User user = model.getUser();
		
		if(user.getRole().equals("USER")) {
			Cart cart = new Cart();
			cart.setUser(user);
			user.setCart(cart);
		}
		
		//encode the password
		
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		
		// save the user
		userDAO.addUser(user);
		
		// get the address
		Address billing = model.getBilling();
		billing.setUserId(user.getId());
		billing.setBilling(true);
		
		// save the address
		userDAO.addAddress(billing);
		
		return transitionValue;
	}

}
