import java.util.*;
import java.sql.*;

public class Seguro{
    public static void main(String args[]){
        try {
            // The newInstance() call is a work around for some
            // broken Java implementations
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/estacionamiento?autoReconnect=true&useSSL=false", "root", "12345678");
            String codigoBarra = leerCodigoBarra();

            String consulta = "SELECT COUNT(*) AS c FROM pagos WHERE id_cliente=? AND activo=TRUE AND fecha_vencimiento>=NOW()";

            PreparedStatement st = conn.prepareStatement(consulta);
            st.setString(1, codigoBarra);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int count = rs.getInt("c");
                if(count >= 1){
                    System.out.println("\n\n\n\nAbierto\n\n\n\n");
                } else {
                    System.out.println("\n\n\n\nCerrado\n\n\n\n");
                }
            }
        } catch (Exception ex) {
            // handle the error
            System.out.println(ex.getMessage());
        }
    }
    
    private static String leerCodigoBarra(){
        Scanner sc = new Scanner(System.in);
        String codigoBarra = sc.nextLine();
        return codigoBarra;
    }
}
