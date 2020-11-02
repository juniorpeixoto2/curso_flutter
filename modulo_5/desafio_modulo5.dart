void main() {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // !Apresente a quantidade de pacientes com mais de 20 anos
  // ?Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  print("\n");
  print('Pacientes com mais de 20 anos');
  print('-----------------------------');

  for (var paciente in pacientes) {
    List dadosPaciente = paciente.split('|');

    int idade = int.parse(dadosPaciente[1]);

    if (idade >= 20) {
      print(dadosPaciente[0]);
    }
  }

  print("\n");
  print('Pacientes por família');
  print('-----------------------------');
  print("\n");

  List sobrenomesLista = [];

  for (var paciente in pacientes) {
    List dadosPaciente = paciente.split('|');
    List nomeCompleto = dadosPaciente[0].split(' ');
    String sobrenome = nomeCompleto[1];

    if (!sobrenomesLista.contains(sobrenome)) {
      sobrenomesLista.add(sobrenome);
    }
  }

  for (var sobrenomeCheca in sobrenomesLista) {
    print('-Família $sobrenomeCheca');

    for (var paciente in pacientes) {
      List dadosPaciente = paciente.split('|');
      List nomeCompleto = dadosPaciente[0].split(' ');
      String nome = nomeCompleto[0];
      String sobrenome = nomeCompleto[1];

      if (sobrenome == sobrenomeCheca) {
        print('  $nome $sobrenome');
      }
    }

    print("\n");
  }
}
