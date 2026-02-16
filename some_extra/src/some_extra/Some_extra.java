

package some_extra;

import java.sql.*;
import java.io.*;
public class Some_extra {

   
    public static void main(String[] args) {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
//            PreparedStatement pst = con.prepareStatement("insert into employe(firstname,lastname,salary) values (?,?,?)");
//            pst.setString(1,"udu");
//            pst.setString(2,"rgrr");
//            pst.setFloat(3,48952);
//            pst.executeUpdate();
            Statement st = con.createStatement();
           // st.execute("insert into employe values('yy','dd',58120)");
//            st.execute("delete from employe where salary=50000");
//            st.execute("update employe set firstname='king',lastname='tu aake dekh le' where salary=40000");
//            System.out.println("Done che bhai...");
            ResultSet rs = st.executeQuery("select * from employe where salary=40000");
            while(rs.next()){
                System.out.println(rs.getString(1));
                System.out.println(rs.getString(2));
                System.out.println(rs.getString(3));
            }
        }catch(Exception e){
            System.out.println(e);
        }
    }
    
}
