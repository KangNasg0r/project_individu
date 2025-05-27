package Form;

public class UserID {

    private static String id_kasir;
    private static String nama_kasir;

    static void setIdKasir(String idKasir) {
        UserID.id_kasir = idKasir;
    }

    public static String getIdKasir() {
        return id_kasir;
    }

    public static void setNamaKasir(String namaKasir) {
        UserID.nama_kasir = namaKasir;
    }

    public static String getNamaKasir() {
        return nama_kasir;
    }
}
