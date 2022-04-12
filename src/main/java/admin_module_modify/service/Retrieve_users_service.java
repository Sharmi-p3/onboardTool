package admin_module_modify.service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import onboard.DBconnection;
public class Retrieve_users_service {
    public JsonArray retrieve_users() {
        JsonArray jsonArray = new JsonArray();
    try {
        //String random_id = generateRandomApprovalId();
        DBconnection dBconnection = new DBconnection();
        Connection connection = (Connection) dBconnection.getConnection();
        System.out.println("Connected...");
        String selectQuery = "select uname,ufname,ulname,u_email,u_role from users";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(selectQuery);
        while(rs.next())
        {
            JsonObject jsonObj = new JsonObject();
            jsonObj.addProperty("uname",rs.getString(1));
            jsonObj.addProperty("ufname",rs.getString(2));
            jsonObj.addProperty("ulname",rs.getString(3));
            jsonObj.addProperty("u_email",rs.getString(4));
            jsonObj.addProperty("u_role",rs.getString(5));
            jsonArray.add(jsonObj);
       }    
    }
catch(Exception e)
    {
    System.out.println("Execption Occurs");
    }
    System.out.println("JSON"+jsonArray);
    return jsonArray;
}
}