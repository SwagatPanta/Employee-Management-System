/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ems.dao.impl;

import com.mycompany.ems.dao.DepartmentDAO;
import com.mycompany.ems.dbutil.DbConnectioin;
import com.mycompany.ems.entity.Department;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dell
 */
public class DepartmentDAOImpl implements DepartmentDAO {

    private DbConnectioin conn = new DbConnectioin();

    @Override
    public int insert(Department d) throws SQLException, ClassNotFoundException {
        String query = "INSERT INTO tbl_department (name,description,status)VALUES(?,?,?)";
        conn.open();
        PreparedStatement pstm = conn.initStatement(query);
        pstm.setString(1, d.getName());
        pstm.setString(2, d.getDescription());
        pstm.setBoolean(3, d.isStatus());
        int result = pstm.executeUpdate();
        conn.close();
        return result;
    }

    @Override
    public List<Department> getAll() throws SQLException, ClassNotFoundException {
        //throw new UnsupportedOperationException("Not supported yet.");
        Department d = new Department();
        List<Department> dptList = new ArrayList<>();
        String query = "SELECT * FROM tbl_department";
        conn.open();
        conn.initStatement(query);
        ResultSet rs = conn.executeQuery();
        while (rs.next()) {
            d = mapData(rs);
            dptList.add(d);
        }

        conn.close();

        return dptList;
    }

    @Override
    public Department getById(int id) throws ClassNotFoundException, SQLException {
        Department dpt = null;
        String query = "SELECT * FROM tbl_department WHERE id=?";
        conn.open();
        PreparedStatement pstm = conn.initStatement(query);
        pstm.setInt(1, id);
        ResultSet rs = conn.executeQuery();
        while (rs.next()) {
            dpt = mapData(rs);
        }
        conn.close();
        return dpt;
    }

    @Override
    public Department mapData(ResultSet rs) throws SQLException, ClassCastException {
        Department dpt = new Department();
        dpt.setId(rs.getInt("id"));
        dpt.setName(rs.getString("name"));
        dpt.setDescription(rs.getString("description"));
        dpt.setAddedDate(rs.getDate("date_added"));
        if (rs.getDate("modified_date") != null) {

            dpt.setModifiedDate(rs.getDate("modified_date"));
        }
        dpt.setStatus(rs.getBoolean("status"));
        return dpt;
    }

    @Override
    public int update(Department d) throws SQLException, ClassNotFoundException {
        //throw new UnsupportedOperationException("Not supported yet.");
        String query = "UPDATE tbl_department SET name=?,description=?,modified_date=?,status=? WHERE id=?";
        conn.open();
        PreparedStatement pstm = conn.initStatement(query);
        pstm.setString(1, d.getName());
        pstm.setString(2, d.getDescription());
        pstm.setDate(3, new Date(d.getModifiedDate().getTime()));
        pstm.setBoolean(4, d.isStatus());
        pstm.setInt(5, d.getId());
        int result = pstm.executeUpdate();
        conn.close();
        return result;

    }

    @Override
    public void delete(Department d) throws SQLException, ClassNotFoundException {
        String query = "DELETE from tbl_department where id=?";
        conn.open();
        PreparedStatement pstm = conn.initStatement(query);
        pstm.setInt(1, d.getId());
        pstm.execute();
        conn.close();

    }
}