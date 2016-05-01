/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ems.dao.impl;

import com.mycompany.ems.entity.Department;
import java.sql.SQLException;

/**
 *
 * @author Dell
 */
public class NewClass {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        DepartmentDAOImpl di = new DepartmentDAOImpl();
        for (Department d : di.getAll()) {


            System.out.println(d);
        }

        System.out.println("getbyid.........");

        System.out.println(di.getById(5).toString());

        Department d = di.getById(1);
        System.out.println("name view...getById: " + d.getName());
        System.out.println("<%= d.getDescription() %>");
        // System.out.println(" <% out.println(d.isStatus()? "checked='checked'":""); %>");
//         <%=d.getDescription()%>
// <%=d.getName()%>
    }
}
