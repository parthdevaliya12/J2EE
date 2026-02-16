/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package customer_curd;

import java.sql.*;
public class Customer_curd {

    public static void main(String[] args) {
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","");
            String s="insert into stud values(?,?,?,?,?)";
            pst=con.prepareStatement(s);
          /*pst.setInt(1,101);
            pst.setString(2,"parth");
            pst.setString(3,"amreli");
            pst.setInt(4,1234567890);
            pst.setString(5,"parth@gmail.com");
            pst.executeUpdate();*/
           /* pst.setInt(1,102);
            pst.setString(2,"raj");
            pst.setString(3,"amreli");
            pst.setInt(4,1234567890);
            pst.setString(5,"raj@gmail.com");
            pst.executeUpdate();*/
           /* pst.setInt(1,103);
            pst.setString(2,"jay");
            pst.setString(3,"amreli");
            pst.setInt(4,1234567890);
            pst.setString(5,"jay@gmail.com");
            pst.executeUpdate();
            System.out.println("record inserted...");*/
           /* pst.execute("delete from stud where c_id=104");
            System.out.println("delete okay...");
            con.close();*/
            /*pst.execute("update stud set c_name='yash' where c_id=105");
            System.out.println("update okay...");*/
             rs=pst.executeQuery("select * from stud");
            while(rs.next())
            {
                System.out.println("id:"+rs.getInt(1));
                System.out.println("name:"+rs.getString(2));
                System.out.println("address:"+rs.getString(3));
                System.out.println("mobile no:"+rs.getInt(4));
                System.out.println("email:"+rs.getString(5));
            }
            rs.close();
            pst.close();
            con.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
}
