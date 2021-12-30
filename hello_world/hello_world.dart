void main() {
  var minhaClass = MinhaClass('Valor primeiro');

  print(minhaClass.title);

  minhaClass = MinhaClass('Novo valor');

  print(minhaClass.title);
}

class MinhaClass {
  final String title;

  MinhaClass(this.title) {}
}
