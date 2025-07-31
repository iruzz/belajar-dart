void main() {
  String name = 'fairuz Ar Rasyid Rabbani';
  String hobby = "Berenang Gym dan Ngoding king PHP";
  var kalimat = "   Saya suka nasgor goreng dan es teh hangat   ";
  var kelas = 'XI RPL 1';
  int umur = 16;
  double tinggi = 1.65;

  print(kelas.length);
  print(
    "Hello World, nama saya $name, kelas saya $kelas, umur saya $umur tahun, tinggi badan saya $tinggi meter",
  );
  print("Nama saya ${name.toUpperCase()}");
  print("Nama saya ${name.toLowerCase()}");
  print(
    "apakah saya suka berenang? ${hobby.contains('Berenang') ? 'Ya' : 'Tidak'}",
  );
  print(
    "${name.startsWith('Fairuz') ? 'Nama saya diawali dengan fairuz' : 'Nama saya tidak diawali dengan fairuz'}",
  );
  print(
    name.endsWith('Rabbani')
        ? 'Nama saya diakhiri dengan Rabbani'
        : 'Nama saya tidak diakhiri dengan Rabbani',
  );
  print(name.substring(0, 9));
  print("Hobi saya sekarang ${hobby.replaceAll('Berenang', 'Mendaki')}");
  print(hobby.split(' '));
  print(kalimat);
  print("spasi kalimat dihapus | ${kalimat.trim()}");
  print("spasi awal dihapus|${kalimat.trimLeft()}|");
  print("spasi akhir dihapus|${kalimat.trimRight()}|");
  print("perbandingan panjang karakter umur dengan tinggi adalah : ${umur.compareTo(tinggi)}");
  print("perbandingan panjang karakter nama dengan kalimat adalah : ${kalimat.compareTo(name)}");
}
