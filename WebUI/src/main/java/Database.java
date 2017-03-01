import java.sql.*;

/**
 * Created by Sameer Mehta
 */
public class Database {

    static final String DRIVER = "jdbc:oracle:thin:@localhost:1521:xe";
    static final String USER = "system";
    static final String PASS = "oracle";

    static Connection oracle = null;
    static Statement st = null;
    static ResultSet rs = null;
    static String sql = "";

    public Database() {
        // Connect to the database when an object is created.
        connect();
    }


    /*
        Connects to the Database
     */
    void connect() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");

        } catch (ClassNotFoundException cnfExp) {
            System.out.println("No JDBC Driver Found");
            cnfExp.printStackTrace();
            return;
        }

        System.out.println("JDBC Driver Registered");


        try
        {
            oracle = DriverManager.getConnection(DRIVER, USER, PASS);
        } catch (SQLException sqlExp) {
            System.out.println("Connection Failed");
            sqlExp.printStackTrace();
        }

        if (oracle != null) {
            System.out.println("Database Connection was successfull!");
        } else {
            System.out.println("Failed to make connection!");
        }

    }

    Boolean createTable(String query)
    {
        sql = query;

        try {
            if (st.execute(sql)) return true;
            else return false;
        }
        catch (SQLException sqlExp)
        {
            sqlExp.printStackTrace();
        }

        return null;
    }

    Boolean dropTable(String query)
    {
        sql = query;

        try {
            if (st.execute(sql)) return true;
            else return false;
        }
        catch (SQLException sqlExp)
        {
            sqlExp.printStackTrace();
        }

        return null;
    }



}
