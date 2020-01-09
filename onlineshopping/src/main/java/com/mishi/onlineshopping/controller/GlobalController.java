package com.mishi.onlineshopping.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mishi.onlineshopping.model.UserModel;
import com.mishi.shoppingbackend.dao.UserDAO;
import com.mishi.shoppingbackend.dto.User;

@ControllerAdvice
public class GlobalController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private UserDAO userDAO;
	
	private UserModel userModel;
	
	@ModelAttribute("UserModel")
	public UserModel getUserModel() {
		
		if(session.getAttribute("userModel") == null) {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			
			User user = userDAO.getByEmail(authentication.getName());
			
			if(user != null) {
				// create a new UserModel object to pass the user details
				userModel = new UserModel();
				
				userModel.setId(user.getId());
				userModel.setEmail(user.getEmail());
				userModel.setRole(user.getRole());
				userModel.setFullName(user.getFirstName() + " " + user.getLastName());
				
				if(userModel.getRole().equals("USER")) {
					userModel.setCart(user.getCart());
				}
				
				// set the model in session
				session.setAttribute("userModel", userModel);
				
				return userModel;
				
			}
		}
		
		return (UserModel) session.getAttribute("userModel");
	}

}
