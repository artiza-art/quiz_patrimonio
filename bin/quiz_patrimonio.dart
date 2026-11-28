import 'dart:io';

import 'package:quiz_patrimonio/perguntas.dart';

const List<String> letras = ['A', 'B', 'C', 'D'];

String lerResposta() {
  while (true) {
    stdout.write('Sua resposta (A, B, C ou D): ');
    String entrada = (stdin.readLineSync() ?? '').trim().toUpperCase();

    if (entrada.isEmpty) {
      print('ATENÇÃO!!! Você não digitou nada. Tente de novamente.');
    } else if (!letras.contains(entrada)) {
      print('Alternativa inválida. Digite apenas A, B, C ou D.');
    } else {
      return entrada;
    }
  }
}

String mensagemFinal(int acertos, int total) {
  if (acertos == total) {
    return 'INCRÍVEL!!! Você é guardiã(o) do nosso patrimônio cultural!';
  } else if (acertos >= total * 0.6) {
    return 'Muito bem! Você conhece bastante da nossa cultura.';
  } else if (acertos >= 1) {
    return 'Bom começo! Que tal conhecer mais sobre o patrimônio do Maranhão?';
  } else {
    return 'Não foi dessa vez... Mas a cultura maranhense tem muito a te ensinar!';
  }
}

void main() {
  print('=========================================');
  print('   QUIZ PATRIMÔNIO CULTURAL   ');
  print('=========================================');
  print('Bem-vindo(a)! Vamos descobrir o quanto você conhece');
  print('sobre o patrimônio cultural e o Maranhão?\n');

  stdout.write('Qual é o seu nome? ');
  String nome = (stdin.readLineSync() ?? '').trim();
  if (nome.isEmpty) {
    nome = 'Jogador(a)';
  }
  print('\nBoa sorte, $nome! Vamos começar!');

  int acertos = 0;

  for (int i = 0; i < perguntas.length; i++) {
    Pergunta p = perguntas[i];

    print('\n--- Pergunta ${i + 1} de ${perguntas.length} ---');
    print(p.enunciado);
    for (int j = 0; j < p.alternativas.length; j++) {
      print('${letras[j]}) ${p.alternativas[j]}');
    }

    String resposta = lerResposta();
    if (resposta == p.correta) {
      print('Acertou, $nome!');
      acertos++;
    } else {
      int posicao = letras.indexOf(p.correta);
      print(
        'Errou! A resposta certa era ${p.correta}) ${p.alternativas[posicao]}',
      );
    }
  }

  print('\n=========================================');
  print('Fim de jogo, $nome!');
  print('Você acertou $acertos de ${perguntas.length} perguntas.');
  print(mensagemFinal(acertos, perguntas.length));
  print('=========================================');
}
