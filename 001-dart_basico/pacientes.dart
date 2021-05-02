void main(List<String> args) {
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
  // Apresente a quantidade de pacientes com mais de 20 anosvar maisVelhos = 0;
  var maisVelhos = 0;
  for (var i = 0; i < pacientes.length; i++) {
    var linha = pacientes[i].split('|');
    if (int.parse(linha[1]) <= 20) {
      continue;
    }
    maisVelhos += 1;
  }
  print('Existem $maisVelhos pacientes mais velhos de 20 anos.');

  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
  var familias = '';
  for (var i = 0; i < pacientes.length; i++) {
    var linha = pacientes[i].split('|');
    var pacienteAtual = linha[0].split(' ');
    if (!familias.contains(pacienteAtual[1])) {
      print('Membros da família ${pacienteAtual[1]}:');
      for (var i2 = 0; i2 < pacientes.length; i2++) {
        var linha2 = pacientes[i2].split('|');
        var pacienteAtual2 = linha2[0].split(' ');
        if (pacienteAtual2[1] == pacienteAtual[1]) {
          print('  - ${pacienteAtual2[0]}');
        }
      }

      familias = familias + pacienteAtual[1];
    }
  }
}
