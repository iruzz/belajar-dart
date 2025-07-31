void main() {
  String name = 'Reyhan';
  String hobby = "Berenang";
  String jenis_kelamin = '''Laki''';
  print(name.length);
  print(hobby.contains('Berenang'));
  print(name.toLowerCase());
  print(name.toUpperCase());
  print(jenis_kelamin.startsWith('Laki'));
  print(jenis_kelamin.endsWith('Laki'));
  print(name.toLowerCase().replaceAll('r', 'n'));
}
