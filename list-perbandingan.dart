
class Siswa {
  String nama;
  int nilai;

  // Constructor
  Siswa(this.nama, this.nilai);
}

class IniList extends Siswa {
  
   List<Siswa> siswaList = [
    Siswa("Andi", 85),
    Siswa("Budi", 90),
    Siswa("Cici", 78),
    Siswa("Dedi", 88),
    Siswa("Eka", 92),
  ];
  IniList(String nama, int nilai) : super(nama, nilai);

  void tampilkanSiswa() {
  for (var data in siswaList) {
    // data adalah objek Siswa
    // kita bisa akses atributnya seperti ini:
    String nama = data.nama;
    int nilai = data.nilai;

    if (nilai >= 75) {
      print('$nama LULUS');
    } else {
      print('$nama TIDAK LULUS');
    }
  }
  }
 
}




void main() {
  // Daftar siswa

 print('Daftar Siswa:');
  IniList siswa = IniList("", 0);
  siswa.tampilkanSiswa();
}
