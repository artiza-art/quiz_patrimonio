class Pergunta {
  final String enunciado;
  final List<String> alternativas;
  final String correta;

  Pergunta(this.enunciado, this.alternativas, this.correta);
}

final List<Pergunta> perguntas = [
  Pergunta(
    'O que é a UNESCO e para que ela serve? A UNESCO é uma organização internacional que atua principalmente nas áreas de: ',
    [
      'Comércio, agricultura e transporte entre os países.',
      'Educação, ciência, cultura e comunicação, promovendo a cooperação e a paz entre os povos.',
      'Segurança militar e controle das fronteiras internacionais.',
      'Organização de eventos esportivos e competições mundiais.',
    ],
    'B',
  ),
  Pergunta('O que significa dizer que um lugar é Patrimônio Mundial?', [
    'É um lugar importante apenas para o município onde está localizado.',
    'É qualquel local que recebe muitos turistas, mesmo sem importância histórica ou cultural.',
    'É um bem reconhecido por seu valor universal excepcional, podendo ser cultural, natural ou misto, e que deve ser protegido para as gerações presentes e futuras.',
    'É somente um monumento construído por um governo ou por uma organização internacional.',
  ], 'C'),
  Pergunta(
    'Qual alternativa apresenta apenas exemplos de Patrimônio Material do Maranhão?',
    [
      'Bumba meu boi, Tambor de Crioula e Roda de Capoeira.',
      'Centro Histórico de São Luís, conjunto arquitetônico de Alcântara e azulejos históricos.',
      'Lendas, cantigas populares e conhecimentos transmitidos oralmente.',
      'Danças, festas religiosas e modos tradicionais de preparar alimentos.',
    ],
    'B',
  ),
  Pergunta(
    'Qual alternativa apresenta apenas exemplos de Patrimônio Imaterial do Maranhão?',
    [
      'Palácio dos Leões, Teatro Arthur Azevedo e Igreja do Carmo.',
      'Centro Histórico de São Luís, sobrado colonial de Alcântara e azulejos portugueses.',
      'Complexo Cultural do Bumba meu boi, Tambor de Crioula e saberes transmitidos pelos mestres da Capoeira.',
      'Ruínas, igrejas históricas e sítios arqueológicos.',
    ],
    'C',
  ),
  Pergunta(
    'O que caracteriza um Patrimônio Natural? Qual é um exemplo localizado no Maranhão?',
    [
      'É formado apenas por prédios antigos, igrejas e monumentos construídos pelas pessoas.',
      'É composto por festas, danças, músicas e tradições transmitidas entre gerações.',
      'É formado por áreas, paisagens, formações geológicas, espécies e ecossistemas de grande importância, como o Parque Nacional dos Lençóis Maranhenses.',
      'É constituído somente por objetos antigos guardados em museus.',
    ],
    'C',
  ),
];