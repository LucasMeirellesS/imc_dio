import 'dart:io';

import 'package:imc_calculo/model/pessoa.dart';

void main(List<String> args) {
  try {
    var novamente = "Sim";

    while (novamente == "Sim") {
      print("Digite seus dados para calcularmos o IMC:");
      String? nome = stdin.readLineSync();
      String? pesoString = stdin.readLineSync();
      double? peso = pesoString != null ? double.parse(pesoString) : null;
      String? alturaString = stdin.readLineSync();
      double? altura = alturaString != null ? double.parse(alturaString) : null;

      Pessoa pessoa =
          Pessoa(nome: nome ?? "", altura: altura ?? 0, peso: peso ?? 0);

      var result = pessoa.calculaImc();

      print(result);

      print("Deseja inserir novos dados? Digite Sim ou Não");
      String? opcao = stdin.readLineSync();

      while ((opcao != "Sim" && opcao != "Não") || opcao == null) {
        print("Digite um valor decente!");
        opcao = stdin.readLineSync();
      }

      novamente = opcao;
    }
  } catch (e) {
    print("Erro: $e");
  }
  ;
}
