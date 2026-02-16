/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package update_delete_4;

import java.sql.*;
public class Update_delete_4 {

   
    public static void main(String[] args) {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","");
            Statement st=con.createStatement();
           /* st.execute("update tybca set name='arjun' where id=1");
            System.out.println("update okay...");
            con.close();*/
            st.execute("delete from tybca where id=1");
            System.out.println("delete okay...");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    
}
