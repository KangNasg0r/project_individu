package Form;

public class UserID {

    private static String id_kasir;
    private static String nama_kasir;

    static void setIdKasir(String idTek) {
        UserID.id_kasir = idTek;
    }

    public static String getIdKasir() {
        return id_kasir;
    }

    public static void setNamaKasir(String namaTeknisi) {
        UserID.nama_kasir = namaTeknisi;
    }

    public static String getNamaKasir() {
        return nama_kasir;
    }
}
