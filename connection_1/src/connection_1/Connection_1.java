/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package connection_1;

import java.sql.*;
public class Connection_1 {

    public static void main(String[] args){
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","");
            System.out.println("connected...");
            con.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    
}
