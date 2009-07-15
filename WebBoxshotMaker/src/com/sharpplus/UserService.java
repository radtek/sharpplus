package com.sharpplus;

import java.sql.Date;
import java.text.DateFormat;

public class UserService {
	public String getUser(){
		//return "Hello Blazeds";
		DateFormat df = DateFormat.getInstance() ;
		Date d=new Date(2002, 2, 3);
		return df.format(d);

	}

}
