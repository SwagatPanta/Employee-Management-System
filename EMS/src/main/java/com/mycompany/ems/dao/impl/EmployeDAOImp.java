/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ems.dao.impl;

import com.mycompany.ems.dao.EmployeDAO;
import com.mycompany.ems.dbutil.DbConnectioin;
import com.mycompany.ems.entity.Employe;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dell
 */
public class EmployeDAOImp implements EmployeDAO {

    DbConnectioin conn = new DbConnectioin();

    @Override
    public int insert(Employe e) throws SQLException, ClassNotFoundException {
        String query = "INSERT INTO tbl_employee (firstName,lastName,email,contactNo,status)VALUES(?,?,?,?,?)";
        conn.open();
        PreparedStatement pstm = conn.initStatement(query);
        pstm.setString(1, e.getFirstName());
        pstm.setString(2, e.getLastName());
        pstm.setString(3, e.getEmail());
        pstm.setString(4, e.getContactNo());
        pstm.setBoolean(5, e.isStatus());
        int result = pstm.executeUpdate();
        conn.close();
        return result;
    }

    @Override
    public int update(Employe d) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void delete(Employe d) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public List<Employe> getAll() throws SQLException, ClassNotFoundException {
        Employe e = new Employe();
        List<Employe> dptList = new ArrayList<>();
        String query = "SELECT * FROM tbl_employee";
        conn.open();
        conn.initStatement(query);
        ResultSet rs = conn.executeQuery();
        while (rs.next()) {
            e = mapData(rs);
            dptList.add(e);
        }

        conn.close();

        return dptList;
    }

    @Override
    public Employe getById(int id) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public Employe mapData(ResultSet rs) throws SQLException, ClassNotFoundException {
        Employe emp = new Employe();
        emp.setId(rs.getInt("id"));
        emp.setFirstName(rs.getString("firstName"));
        emp.setLastName(rs.getString("LastName"));
        emp.setEmail(rs.getString("email"));
        emp.setContactNo(rs.getString("contactNo"));
        emp.setJoinDate(rs.getDate("joinDate"));
        emp.setStatus(rs.getBoolean("status"));
        return emp;
    }
}
