/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ems.dao;

import com.mycompany.ems.entity.EmpDept;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Dell
 */
public interface EmpDeptDAO {

    int insert(EmpDept d) throws SQLException, ClassNotFoundException;

    int update(EmpDept d) throws SQLException, ClassNotFoundException;

    void delete(EmpDept d) throws SQLException, ClassNotFoundException;

    List<EmpDept> getAll() throws SQLException, ClassNotFoundException;

    EmpDept getById(int id) throws SQLException, ClassNotFoundException;

    EmpDept mapData(ResultSet rs) throws SQLException, ClassNotFoundException;
}
