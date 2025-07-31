void main() {
  String name = 'Reyhan adipramana nugraha';
  String hobby = "Bermain basket";

  print("String Length : ${name.length}");
  print("String Contains : ${name.contains("Reyhan")}");
  print("String in Upper Case : ${name.toUpperCase()}");
  print("String in Lower Case : ${name.toLowerCase()}");
  print("Start With : ${name.startsWith("R")}");
  print("Start with : ${name.endsWith("a")}");
  print("Substring (1, 6) : ${name.substring(1, 6)}");
  print("String with Trim : ${name.trim()}");
  print("String with Trim Left : ${name.trimLeft()}");
  print("String with Trim Right : ${name.trimRight()}");
}
