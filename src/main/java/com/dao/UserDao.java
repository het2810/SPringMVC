package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.UserBean;

@Repository
public class UserDao {

	@Autowired
	JdbcTemplate stmt;

	public void insertUser(UserBean sb) {
		// insert query ?

		String insertUserQuery = "insert into users (firstName,email,password) values(?,?,?)";
		
		stmt.update(insertUserQuery,sb.getFirstName(),sb.getEmail(),sb.getPassword());//
	}
	
	public List<UserBean> getAllUsers (){
		
		return stmt.query("select * from users",new BeanPropertyRowMapper<UserBean>(UserBean.class));
	}
	
	
	public UserBean getUserByEmail(String email) {
		String selectUserByEmailQuery = "select * from users where email=?";
		List<UserBean> users = stmt.query(selectUserByEmailQuery, new BeanPropertyRowMapper<UserBean>(UserBean.class), email);
		if (users.isEmpty()) {
			return null;
		} else {
			return users.get(0);
		}
	}
	
}