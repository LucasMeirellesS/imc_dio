import 'dart:math';

import 'package:imc_calculo/interface/interface_calculo.dart';

class Pessoa implements Calculos {
  String nome;
  double peso;
  double altura;

  Pessoa({required this.nome, required this.altura, required this.peso});

  @override
  String calculaImc() {
    double imc = this.peso / pow(this.altura, 2);
    return "${this.nome}, seu IMC é de ${imc} e seu resultado é: ${resultadoImc(imc)}";
  }

  @override
  String resultadoImc(double valor) {
    if (valor < 16) {
      return 'Magreza grave';
    } else if (valor >= 16 && valor < 17) {
      return 'Magreza moderada';
    } else if (valor >= 17 && valor < 18.5) {
      return 'Magreza leve';
    } else if (valor >= 18.5 && valor < 25) {
      return 'Saudável';
    } else if (valor >= 25 && valor < 30) {
      return 'Sobrepeso';
    } else if (valor >= 30 && valor < 35) {
      return 'Obesidade Grau I';
    } else if (valor >= 35 && valor < 40) {
      return 'Obesidade Grau II';
    } else {
      return 'Obesidade Grau III';
    }
  }
}
