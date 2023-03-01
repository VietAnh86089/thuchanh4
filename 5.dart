void main() {
  List<String> ten = [
    "hung",
    "nghia",
    "An",
    "Anh",
    "bien",
    "kien",
    "tung"
  ];

  List<String> timten =
      ten.where((element) => element.startsWith("A")).toList();

  print(timten);
}