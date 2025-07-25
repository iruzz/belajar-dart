// tambah(angka1, angka2) {
//   int hasil;
//   hasil = angka1 + angka2;
//   return hasil;
// }

// orang(nama, umur) {
//   print("Nama saya $nama, umur saya $umur tahun");
// }

mixin Kemampuan {
  void berlari(jarak, waktu) {
    print("Saya bisa berlari sejauh $jarak meter dalam waktu $waktu detik");
  }
}

class mamalia {
  void menyusui() {
    print("Saya bisa menyusui");
  }
}


class Hewan with Kemampuan {
  String nama;
  String pemakan;

  Hewan(this.nama, this.pemakan);

  void kemampuanHewan() {
    print("Saya $nama, saya adalah $pemakan");
  }
}


class Orang extends mamalia with Kemampuan {
  String nama;
  int umur;

  // Constructor
  // Orang(this.nama, this.umur);

  Orang({required this.nama, required this.umur});

  void perkenalan() {
    print("Nama saya $nama, umur saya $umur tahun");
  }
}




void main() {
  print("hellow world");
  Orang orang1 = Orang(nama: "Fairuz", umur: 16);
  orang1.perkenalan();
  orang1.menyusui();
  orang1.berlari(100, 10);

  Hewan kucing = Hewan("Kucing", "Karnivora");
  kucing.kemampuanHewan();
  kucing.berlari(50, 5);
  // print(tambah(2, 5));
}
