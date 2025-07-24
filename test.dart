tambah(angka1, angka2) {
  int hasil;
  hasil = angka1 + angka2;
  return hasil;
}

// orang(nama, umur) {
//   print("Nama saya $nama, umur saya $umur tahun");
// }

class Orang {
  String nama;
  int umur;

  // Constructor
  // Orang(this.nama, this.umur);

  Orang({ required this.nama, required this.umur});

  void perkenalan() {
    print("Nama saya $nama, umur saya $umur tahun");
  }
}

void main() {
  print("hellow world");
  Orang orang1 = Orang(nama: "Ruzz", umur: 16);
  orang1.perkenalan();

  // print(tambah(2, 5));
}
