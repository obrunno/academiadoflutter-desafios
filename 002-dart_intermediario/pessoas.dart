main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  print(' ');
  //! Baseado na lista acima.
  //! 1 - Remover os duplicados
  int qtdAntes = pessoas.length;
  // usando Set para remover duplicados
  Set<String> pessoasSemDuplicidade = Set<String>();
  pessoas.forEach((p) {
    pessoasSemDuplicidade.add(p);
  });
  pessoas = pessoasSemDuplicidade.toList();
  int qtdDepois = pessoas.length;
  print('1 - Remover os duplicados');
  print(
      '  -> Dos $qtdAntes registros, foram removidos ${qtdAntes - qtdDepois} duplicados, restando $qtdDepois registros únicos.');
  print(' ');

  //! 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  int qtdMasculino = 0;
  pessoas.forEach((p) {
    if (p.contains('Masculino')) {
      qtdMasculino += 1;
    }
  });
  print('2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino');
  print(
      '  -> Resumo por sexo: $qtdMasculino masculinos e ${qtdDepois - qtdMasculino} femininos.');
  print(' ');

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //!     e mostre a quantidade de pessoas com mais de 18 anos
  Set<String> pessoasMaior = Set<String>();
  pessoas.forEach((p) {
    List registroAtual = p.split('|');
    try {
      if (int.parse(registroAtual[1]) > 18) {
        pessoasMaior.add(p);
      }
    } catch (e) {
      print(e);
    }
  });
  pessoas = pessoasMaior.toList();
  print(
      '3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e mostre a quantidade de pessoas com mais de 18 anos');
  print('  -> Existem ${pessoas.length} pessoas maiores de 18 anos.');
  print(' ');

  //! 4 - Encontre a pessoa mais velha.
  // encontrar a maior idade
  List idades = [];
  pessoas.forEach((p) {
    List registroAtual = p.split('|');
    idades.add(registroAtual[1]);
  });
  idades.sort((n1, n2) => n2.compareTo(n1));
  String idadeMaior = idades[0];

  // buscar o nome da pessoa que tem a maior idade
  pessoas.forEach((p) {
    List registroAtual = p.split('|');
    if (registroAtual[1] == idadeMaior) {
      print('4 - Encontre a pessoa mais velha');
      print(
          '  -> A pessoa mais velha é ${registroAtual[0]} com $idadeMaior anos.');
      print(' ');
    }
  });
}
