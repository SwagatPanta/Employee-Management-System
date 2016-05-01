/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ems.dao;

import com.mycompany.ems.entity.Department;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Dell
 */
public interface DepartmentDAO {

    int insert(Department d) throws SQLException, ClassNotFoundException;

    int update(Department d) throws SQLException, ClassNotFoundException;

    void delete(Department d) throws SQLException, ClassNotFoundException;

    List<Department> getAll() throws SQLException, ClassNotFoundException;

    Department getById(int id) throws SQLException, ClassNotFoundException;

    Department mapData(ResultSet rs) throws SQLException, ClassNotFoundException;
}
