void main() {
  String name = 'Reyhan adipramana nugraha';
  String hobby = "Bermain basket";

  print("String Length : ${name.length}");
  print("String Contains : ${name.contains("Reyhan")}");
  print("String in Upper Case : ${name.toUpperCase()}");
  print("String in Lower Case : ${name.toLowerCase()}");
  print("Start With : ${name.startsWith("R")}");
  print("End with : ${name.endsWith("a")}");
  print("Subsng (1, 7) : ${name.substring(1, 7)}");
  print("String with Trim : ${name.trim()}");
  print("String with Trim Left : ${name.trimLeft()}");
  print("String with Trim Right : ${name.trimRight()}");
  print("String with isEmpty : ${name.isEmpty}");
  print("String with isNotEmpty : ${name.isNotEmpty}");
  print("String Splited by Space : ${name.split(" ")}");
  print("String with ReplaceAll : ${name.toLowerCase().replaceAll("r", "r")}");
  print("String with Compare : ${name.compareTo(hobby)}");
}
