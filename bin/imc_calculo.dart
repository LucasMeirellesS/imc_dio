import 'dart:io';

import 'dart:convert';

import 'package:imc_calculo/model/pessoa.dart';

void main(List<String> args) {
  try {
    var novamente = "Sim";

    while (novamente == "Sim") {
      print("Digite seus dados para calcularmos o IMC:");
      print("Digite seu nome:");
      String nome = stdin.readLineSync().toString();

      print("Digite seu peso:");
      String pesoString = stdin.readLineSync().toString();
      double peso = double.parse(pesoString);

      print("Digite sua altura:");
      String alturaString = stdin.readLineSync().toString();
      double? altura = double.parse(alturaString);

      Pessoa pessoa = Pessoa(nome: nome, altura: altura, peso: peso);

      var result = pessoa.calculaImc();

      print(result);

      print("Deseja inserir novos dados? Digite Sim ou Não");
      String opcao = stdin.readLineSync().toString();

      while (opcao != "Sim" && opcao != "Não") {
        print("Digite um valor decente!");
        opcao = stdin.readLineSync().toString();
      }

      novamente = opcao.toString();
    }
  } catch (e) {
    print("Erro: $e");
  }
  ;
}
