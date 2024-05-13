import 'package:flutter_test/flutter_test.dart';
import 'package:fiap_flutter/config/config.dart';
import 'package:fiap_flutter/controllers/imc_controller.dart';

void main(){
  group('Test start and all levels of imc logic', (){
    test('value should start at 0', () {
      expect(IMCController().resultado, resultados[0]);
    });

    //AAA - Gherkin
    test('value should be imc level 1', () {
      //Arrange - Given
      final out = IMCController();

      //Act - When
      out.calcImc(peso: 55.0, altura: 1.79);

      //Assert - Then
      expect(out.resultado, resultados[1]);
    });

    test('value should be imc level 2', () {
      final controller = IMCController();

      controller.calcImc(peso: 68.0, altura: 1.79);

      expect(controller.resultado, resultados[2]);
    });

    test('value should be imc level 3', () {
      final controller = IMCController();

      controller.calcImc(peso: 89.0, altura: 1.79);

      expect(controller.resultado, resultados[3]);
    });

    test('value should be imc level 4', () {
      final controller = IMCController();

      controller.calcImc(peso: 98.0, altura: 1.79);

      expect(controller.resultado, resultados[4]);
    });

    test('value should be imc level 5', () {
      final controller = IMCController();

      controller.calcImc(peso: 98.0, altura: 1.52);

      expect(controller.resultado, resultados[5]);
    });
  });
}