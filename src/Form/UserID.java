package Form;

public class UserID {

    private static String id_kasir;
    private static String nama_kasir;

    static void setIdTeknisi(String idTek) {
        UserID.id_kasir = idTek;
    }

    public static String getIdTeknisi() {
        return id_kasir;
    }

    public static void setNamaTeknisi(String namaTeknisi) {
        UserID.nama_kasir = namaTeknisi;
    }

    public static String getNamaTeknisi() {
        return nama_kasir;
    }
}
