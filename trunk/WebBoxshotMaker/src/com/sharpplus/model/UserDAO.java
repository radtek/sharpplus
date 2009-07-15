package com.sharpplus.model;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
import javax.sql.DataSource;

public class UserDAO implements IUserDAO {

	
	private DataSource dataSource;
	
	public UserDAO(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	@Override
	public User create(User item) {
		Connection c = null;
		PreparedStatement ps = null;
		try {
			//c = ConnectionHelper.getConnection();
			c = dataSource.getConnection();
			ps = c.prepareStatement("INSERT INTO user (name, enabled, validDate) VALUES (?, ?, ?)");
			ps.setString(1, item.getName());
			ps.setBoolean(2, item.getEnabled());
			ps.setDate(3, item.getValidDate());
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			rs.next();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return item;
	}

	@Override
	public boolean delete(User item) {
		Connection c = null;
		try {
			//c = ConnectionHelper.getConnection();
			c = dataSource.getConnection();
			PreparedStatement ps = c.prepareStatement("DELETE FROM user WHERE name=?");
			ps.setString(1, item.getName());
			int count = ps.executeUpdate();
			return (count == 1);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<User> findAll() {
		List<User> list = new ArrayList<User>();
		Connection c = null;

		try {
			//c = ConnectionHelper.getConnection();
			c = dataSource.getConnection();
			Statement s = c.createStatement();
			ResultSet rs = s.executeQuery("SELECT * FROM user ORDER BY name");
			while (rs.next()) {
				list.add(new User(
						rs.getString("name"),
						rs.getBoolean("enabled"),
						rs.getDate("validDate")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return list;
	}

	@Override
	public User findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean update(User item) {
		Connection c = null;
		try {
			//c = ConnectionHelper.getConnection();
			c = dataSource.getConnection();
			PreparedStatement ps = c.prepareStatement("UPDATE user SET name=?, enabled=?, validDate=? WHERE name=?");
			ps.setString(1, item.getName());
			ps.setBoolean(2, item.getEnabled());
			ps.setDate(3, item.getValidDate());
			ps.setString(4, item.getName());
			return (ps.executeUpdate() == 1);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}
