package com.dao;

import com.intialize.User;
import java.sql.*;

public class userdao {
    private Connection conn;

    public userdao(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean register(User user) {
        boolean f = false;
        try {
            String str = "INSERT INTO userdata(name,email,password)" +
                    "VALUES('" + user.getName() + "','" + user.getEmail() + "','" + user.getPassword() + "')";
            Statement st = conn.createStatement();
            st.executeUpdate(str);

            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;

    }
    public User getlogin(String em, String pass) {
        User s = null;
        try {
            String query = "Select * from userdata where email= ? and password =?";
            PreparedStatement pre = conn.prepareStatement(query);
            pre.setString(1, em);
            pre.setString(2, pass);
            ResultSet res = pre.executeQuery();
            if (res.next()) {
                s = new User(res.getInt(1), res.getString(2), res.getString(3), res.getString(4));
            }
        } catch (SQLException sq) {
            sq.printStackTrace();
        }
        return s;
    }
    }




