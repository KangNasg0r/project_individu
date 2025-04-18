package koneksi;

import java.sql.*;

public class koneksi {

    public static Connection koneksi;

    public Connection connect() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Berhasil Connect");
        } catch (ClassNotFoundException ex) {
            System.out.println("Gagal Connect" + ex);
        }
        String url = "jdbc:mysql://localhost:3306/project_individu";
        try {
            koneksi = DriverManager.getConnection(url, "root", "");
            System.out.println("Berhasil Connect Database");
        } catch (SQLException ex) {
            System.out.println("Gagal Connect Database" + ex);
        }
        return koneksi;
    }
}
