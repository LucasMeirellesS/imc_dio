import 'package:imc_calculo/imc_calculo.dart';
import 'package:imc_calculo/model/pessoa.dart' as pessoa;

import 'package:test/test.dart';

void main() {
  test('Calculando IMC', () {
    expect(
        pessoa.Pessoa(nome: "Lucas", altura: 1.70, peso: 77).calculaImc(),
        equals(
            "Lucas, seu IMC é de 26.643598615916957 e seu resultado é: Sobrepeso"));
  });
}
