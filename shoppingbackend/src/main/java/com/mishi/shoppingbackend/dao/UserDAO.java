package com.mishi.shoppingbackend.dao;

import java.util.List;

import com.mishi.shoppingbackend.dto.Address;
import com.mishi.shoppingbackend.dto.Cart;
import com.mishi.shoppingbackend.dto.User;

public interface UserDAO {
	
	boolean addUser(User user);
	
	User getByEmail(String email);
	
	boolean addAddress(Address address);
	Address getBillingAddress(User user);
	List<Address> listShippingAddresses(User user);
	
	boolean updateCart(Cart cart);

}
