import 'package:flutter_test/flutter_test.dart';
import 'package:gerencia_de_estado/gerencia_de_estado.dart';

void main() {
  late GerenciaDeEstado controller;

  setUp(() {
    controller = GerenciaDeEstado<String>(initialState: "");
  });

  test("Testando a gerência de estado", () {
    expect(controller.state, "");
    controller.listen((state) {
      expect(controller.state, "alterado");
    });
    controller.setState("alterado");
    controller.listen((state) {
      expect(controller.state, "alterado2");
    });
    controller.setState("alterado2");
  });
}
