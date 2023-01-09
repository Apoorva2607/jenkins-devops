package org.nagarro.web.dao;

import org.nagarro.web.model.UserModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<UserModel, Integer> {

}
