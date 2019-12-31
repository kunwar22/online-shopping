package com.mishi.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.mishi.shoppingbackend.dao.CategoryDAO;
import com.mishi.shoppingbackend.dto.Category;


@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	
	private static List<Category> categories = new ArrayList<>();
	
	static {
		Category category = new Category();
		category.setId(1);
		category.setName("Television");
		category.setDescription("This is some description for TV");
		category.setInageURL("CAT_1.png");
		
		categories.add(category);
		
		category = new Category();
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("This is some description for Mobile");
		category.setInageURL("CAT_2.png");
		
		categories.add(category);
		
		category = new Category();
		category.setId(3);
		category.setName("Laptop");
		category.setDescription("This is some description for Laptop");
		category.setInageURL("CAT_3.png");
		
		categories.add(category);
		
		category = new Category();
		category.setId(4);
		category.setName("Headfone");
		category.setDescription("This is some description for Headfone");
		category.setInageURL("CAT_4.png");
		
		categories.add(category);
	}

	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}

	@Override
	public Category get(int id) {

		for(Category category : categories) {
			if(category.getId() == id) {
				return category;
			}
		}
		
		return null;
		
	}

}
