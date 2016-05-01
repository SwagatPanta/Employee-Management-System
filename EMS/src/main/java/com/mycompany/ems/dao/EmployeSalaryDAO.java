/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ems.dao;

import com.mycompany.ems.entity.EmployeSalary;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Dell
 */
public interface EmployeSalaryDAO {

    int insert(EmployeSalary d) throws SQLException, ClassNotFoundException;

    int update(EmployeSalary d) throws SQLException, ClassNotFoundException;

    void delete(EmployeSalary d) throws SQLException, ClassNotFoundException;

    List<EmployeSalary> getAll() throws SQLException, ClassNotFoundException;

    EmployeSalary getById(int id) throws SQLException, ClassNotFoundException;

    EmployeSalary mapData(ResultSet rs) throws SQLException, ClassNotFoundException;
}
