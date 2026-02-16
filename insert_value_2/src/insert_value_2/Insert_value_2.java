/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package insert_value_2;

import java.sql.*;
public class Insert_value_2 {

    
    public static void main(String[] args) {
        Connection con;
        PreparedStatement pst;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","");
            String s="insert into tybca values(?,?,?)";
            pst=con.prepareStatement(s);
            pst.setInt(1,1);
            pst.setString(2,"parth");
            pst.setFloat(3,5000.50f);
            pst.executeUpdate();
            System.out.println("record inserted...");
            con.close();
              
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    
}
