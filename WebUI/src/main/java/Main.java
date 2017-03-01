
import static spark.Spark.*;

import spark.Request;
import spark.Response;
import spark.Route;
import spark.*;

/**
 * Created by Sameer Mehta
 */



public class Main {

    public static void main(String[] args) {

        final Database db = new Database();

        Spark.staticFileLocation("/public");

        db.connect();

        public static void main(String[] args) {
            get("/hello", (req, res) -> "Hello World");
        }


        get("/createEmployeeTable*", new Route() {
            public Object handle(Request request, Response response) throws Exception {
                String cEmpTbl = "CREATE TABLE employee (\n" +
                        "\temployee_name varchar(255) not null,\n" +
                        "\temployee_id not null,\n" +
                        "\tmanager_id not null,\n" +
                        "\tCONSTRAINT employee_pk PRIMARY KEY(employee_id, manager_id)\n" +
                        ")";
                System.out.println("Got the route");
                response.type("text/html");
                return null;
               // return db.createTable(cEmpTbl) ? "Table Created" : "Table Creation Failed";
            }
        });
    }


}
