/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 4-401
 */
import java.sql.*;
import java.io.*;
import java.util.*;
public class DB_MAN {
    String strDriver = "com.mysql.cj.jdbc.Driver";
    String strURL = "jdbc:mysql://localhost:3306/member?characterEncoding=UTF-8&serverTimezone=UTC";
    String strUser = "root";
    String strPass = "wlsfkaus48";
    
    Connection DB_con;
    Statement DB_stmt;
    ResultSet DB_rs;
    
    public void dbOpen() throws IOException{
        try{
            Class.forName(strDriver);
            DB_con = DriverManager.getConnection(strURL, strUser, strPass);
            DB_stmt = DB_con.createStatement();
        }catch (Exception e){
            System.out.println("SQLException:"+e.getMessage());
        }
    }
    public void dbClose() throws IOException{
        try{
            DB_stmt.close();
            DB_con.close();
        }catch(Exception e){
            System.out.println("SQLException:"+e.getMessage());
        }
    }
}
 