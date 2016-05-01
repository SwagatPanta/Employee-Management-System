/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ems.dao.impl;

import com.mycompany.ems.dao.EmpDeptDAO;
import com.mycompany.ems.dbutil.DbConnectioin;
import com.mycompany.ems.entity.EmpDept;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Dell
 */
public class EmpDeptDAOImpl implements EmpDeptDAO {

    DbConnectioin conn = new DbConnectioin();

    @Override
    public int insert(EmpDept ed) throws SQLException, ClassNotFoundException {
        String query = "INSERT INTO emp_deprt (empId,deprtId)VALUES(?,?)";
        conn.open();
        PreparedStatement pstm = conn.initStatement(query);
        pstm.setInt(1, ed.getEmpId());
        pstm.setInt(2, ed.getDeptId());
        int result = pstm.executeUpdate();
        conn.close();
        return result;
    }

    @Override
    public int update(EmpDept d) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void delete(EmpDept d) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public List<EmpDept> getAll() throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public EmpDept getById(int id) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public EmpDept mapData(ResultSet rs) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
