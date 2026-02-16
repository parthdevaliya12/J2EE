/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package display_record_3;

import java.sql.*;
public class Display_record_3 {

    
    public static void main(String[] args) {
        Connection con;
        Statement st;
        ResultSet rs;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","");
            st=con.createStatement();
            rs=st.executeQuery("select * from tybca");
            while(rs.next())
            {
                System.out.println("id:"+rs.getInt(1));
                System.out.println("name:"+rs.getString(2));
                System.out.println("salary:"+rs.getFloat(3));
            }
            rs.close();
            st.close();
            con.close();
              
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    
}
