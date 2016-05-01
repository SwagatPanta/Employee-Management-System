/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ems.entity;

import java.util.Date;

/**
 *
 * @author Dell
 */
public class EmpDept {

    private int empId;
    private int deptId;
    private Date joinDate;
    private Date endDate;

    public EmpDept() {
    }

    public EmpDept(int empId, int deptId, Date joinDate, Date endDate) {
        this.empId = empId;
        this.deptId = deptId;
        this.joinDate = joinDate;
        this.endDate = endDate;
    }

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Date getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(Date joinDate) {
        this.joinDate = joinDate;
    }

    @Override
    public String toString() {
        return "EmpDept{" + "empId=" + empId + ", deptId=" + deptId + ", joinDate=" + joinDate + ", endDate=" + endDate + '}';
    }
}
