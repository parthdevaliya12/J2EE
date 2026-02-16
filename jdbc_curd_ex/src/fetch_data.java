import java.sql.*;
public class fetch_data {
     public static void main(String[] args) {
    try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/customer","root","");
            
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from stud");
            
            System.out.print("\t\tStudent Id");
            System.out.print("\t\tStudent Name");
            System.out.print("\t\tStudent Address");
            System.out.print("\t\tStudent Mobile");
            System.out.print("\t\tStudent Email");
            System.out.println("\n========================================================================================================================================");
            while(rs.next())
            {
                System.out.println("\n\t\t"+rs.getInt(1)+"\t\t\t"+rs.getString(2)+"\t\t\t"+rs.getString(3)+"\t\t\t"+rs.getInt(4)+"\t\t"+rs.getString(5));
            }
            
        }catch(Exception e)
        {
            System.out.println(e);
        }
}
