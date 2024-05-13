import 'package:flutter/foundation.dart';
import 'package:fiap_flutter/config/config.dart';

class IMCController extends ChangeNotifier{

  String _resultado = resultados[0];
  String get resultado => _resultado;

  void calcImc({required double peso, required double altura}){
    final imc = peso / (altura * altura);

    if (imc < 18.5){
      _resultado = resultados[1];
    } else if (imc <= 24.9){
      _resultado = resultados[2];
    } else if (imc <= 29.9){
      _resultado = resultados[3];
    } else if (imc <= 39.9){
      _resultado = resultados[4];
    } else {
      _resultado = resultados[5];
    }

    notifyListeners();
  }

}