/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ems.dao.impl;

import com.mycompany.ems.dao.EmployeSalaryDAO;
import com.mycompany.ems.dbutil.DbConnectioin;
import com.mycompany.ems.entity.EmployeSalary;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Dell
 */
public class EmployeSalaryDAOImp implements EmployeSalaryDAO {

    DbConnectioin conn = new DbConnectioin();

    @Override
    public int insert(EmployeSalary es) throws SQLException, ClassNotFoundException {
        String query = "INSERT INTO employeesalary (EmployeId,salary)VALUES(?,?)";
        conn.open();
        PreparedStatement pstm = conn.initStatement(query);
        pstm.setInt(1, es.getEmployeId());
        pstm.setFloat(2, es.getSalary());

        int result = pstm.executeUpdate();
        conn.close();
        return result;
    }

    @Override
    public int update(EmployeSalary d) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void delete(EmployeSalary d) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public List<EmployeSalary> getAll() throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public EmployeSalary getById(int id) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public EmployeSalary mapData(ResultSet rs) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
