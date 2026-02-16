
package exam_extra;
import java.sql.*;
public class Exam_extra {

   
    public static void main(String[] args) {
        try{
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","");
//      PreparedStatement pst = con.prepareStatement("insert into jdbc_data(id,name,email,phone,password,city) values (?,?,?,?,?,?)");
//      pst.setInt(1,1);
//      pst.setString(2,"parth");
//      pst.setString(3,"parth@gmail.com");
//      pst.setInt(4,123456789);
//      pst.setString(5,"P@rth123");
//      pst.setString(6,"sk");
//      int x = pst.executeUpdate();
//      if(x > 0){
//          System.out.println("insert");
//      }
          Statement st = con.createStatement();
//       st.execute("update jdbc_data set name='oop',email='oop@gmail.com',password='Oop@123' where id=3 ");
       // st.execute("delete from jdbc_data where id=3");
        ResultSet rs =st.executeQuery("select * from jdbc_data");
 
        while(rs.next()){
            System.out.println(rs.getInt(1));
            System.out.println(rs.getString(2));
            System.out.println(rs.getString(3));
            System.out.println(rs.getInt(4));
            System.out.println(rs.getString(5));
            System.out.println(rs.getString(6));
        }
        }catch(Exception e)
        {
            System.out.println(e);
        }
      
    }
    
}
