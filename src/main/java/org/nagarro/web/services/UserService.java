package org.nagarro.web.services;

import java.util.List;

import org.nagarro.web.dao.UserDao;
import org.nagarro.web.model.UserModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public boolean authenticate(String username, String password) {
		boolean result = false;
		
		List<UserModel> userList = userDao.findAll();
		for(UserModel iter: userList) {
			if(iter.getUsername().equals(username) && iter.getPassword().equals(password)) {
				result = true;
			}
		}
		return result;
	}

}
