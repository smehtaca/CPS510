
package MovieAndMusicStoreUI;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Sameer
 */
class Database {
    
    static Connection conn = null;
    
    public static void ConnectToDB(){
                    try{
                String driverName = "oracle.jdbc.driver.OracleDriver";
                Class.forName(driverName);
                String serverName = "oracle.scs.ryerson.ca";
                String serverPort = "1521";
                String sid = "orcl";
                String url = "jdbc:oracle:thin:@" + serverName + ":" + 
                        serverPort + ":" + sid;
                String username = "s9mehta";
                String password = "09305922";
                conn = DriverManager.getConnection(url,username,password);
             } 
                    catch (ClassNotFoundException e) {
                System.out.println("could not find the database driver " 
                        + e.getMessage());
            } 
                    catch (SQLException e) {
                System.out.println("could not connect to the database " 
                        + e.getMessage());
            }
        }
    
}
