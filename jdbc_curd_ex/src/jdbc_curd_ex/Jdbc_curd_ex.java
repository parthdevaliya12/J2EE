

package jdbc_curd_ex;

import java.sql.*;
public class Jdbc_curd_ex {

    
    public static void main(String[] args) {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/customer","root","");
            PreparedStatement pst = con.prepareStatement("insert into stud(s_name,s_address,mobile_no,email) values (?,?,?,?)");
            pst.setString(1, "veer");
            pst.setString(2, "sk");
            pst.setInt(3,1234567890);
            pst.setString(4,"veer@gmail.com");
            int x=pst.executeUpdate();
            if(x > 0)
            {
                System.out.println("inserted");
            }
            else
            {
                System.out.println("not");
            }
        }catch(Exception e)
        {
            System.out.println(e);
        }
    }
    
}
