void main() {
  String nomeString = '''
  Pedro de Alcântara Francisco Antônio 
  João Carlos Xavier de Paula Miguel 
  Rafael Joaquim José Gonzaga Pascoal 
  Cipriano Serafim de Bragança e Bourbon
  ''';

  // !exercicio1
  print(nomeString.length);

  // !exercicio2
  List nomes = [
    'joao',
    'francisco',
    'marcio',
    'maria',
    'taty',
    'jose',
    'junior',
    'marcelo',
    'chico',
    'bento',
  ];

  for (var nome in nomes) {
    print('Seja bem vindo $nome');
  }

  // !exercicio3
  String nomeString2 =
      'Pedro_de_Alcântara Francisco Antônio João Carlos Xavier_de_Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim_de_Bragança_e_Bourbon';

  List nomeArray = nomeString2.split(' ');

  print(nomeArray.length);
  print(nomeArray);

  // !exercicio4
  List pacientes = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];

  for (var paciente in pacientes) {
    List dadosPaciente = paciente.split('|');

    print('${dadosPaciente[0]} tem ${dadosPaciente[1]} anos');
  }
}
