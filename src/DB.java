
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;


public class DB {
Connection con = null;
PreparedStatement ps;
public static Connection dbconnect(){
      try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant", "root", "");
//            Connection conn = DriverManager.getConnection("jdbc:mysql://sql6.freesqldatabase.com:3306/sql6419416", "sql6419416", "WV5pkTn1mh");
            return conn;
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);            
            return null;
        }
}
}



