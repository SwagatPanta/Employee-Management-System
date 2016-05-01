/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ems.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Dell
 */
public class DbConnectioin {

    private Connection conn;
    private PreparedStatement pstm;

    public void open() throws ClassNotFoundException, SQLException {

        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspwebproject", "root", "");
    }

    public PreparedStatement initStatement(String sql) throws SQLException {
        pstm = conn.prepareStatement(sql);
        return pstm;
    }

    public int executeUpdate() throws SQLException {
        return pstm.executeUpdate();
    }

    public ResultSet executeQuery() throws SQLException {
        return pstm.executeQuery();
    }

    public void close() throws SQLException {
        if (conn != null && !conn.isClosed()) {
            conn.close();
            conn = null;
        }
    }
}
