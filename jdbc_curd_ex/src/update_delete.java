import java.sql.*;
public class update_delete {
     public static void main(String[] args) {
    try{
            Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost/customer","root","");
           Statement st = con.createStatement();
//            st.execute("update stud set s_name='arjun' where roll_no=8");
//            System.out.println("updated...");
        
             st.execute("delete from stud where roll_no=7");
            System.out.println("deleted...");
        
    }catch(Exception e){
        System.out.println(e);
    }}
}
