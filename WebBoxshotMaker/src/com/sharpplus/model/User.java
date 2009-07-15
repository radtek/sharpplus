package com.sharpplus.model;

import java.io.Serializable;
import java.sql.Date;

//CREATE TABLE user (name varchar(120),enabled Bool, validDate Datetime,PRIMARY KEY (name)) 
//insert into user values('hubdog@gmail.com', true, '2010/12/31');
public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1168512347427859319L;

    private String name;
    private Boolean enabled;
    private Date validDate;
    

    public User(){
    	
    }
    
	public User(String name, Boolean enabled, Date validDate) {
		super();
		this.name = name;
		this.enabled = enabled;
		this.validDate = validDate;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	public Date getValidDate() {
		return validDate;
	}
	public void setValidDate(Date validDate) {
		this.validDate = validDate;
	}
}
