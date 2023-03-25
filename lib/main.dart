
import 'package:flutter/material.dart';
import 'package:projeto_perguntas_coder/result.dart';

import 'survey.dart';

main() {
  runApp(new AppPerguntas());
}

class AppPerguntas extends StatefulWidget {
  @override
  State<AppPerguntas> createState() => _AppPerguntasState();
}

class _AppPerguntasState extends State<AppPerguntas> {
  final List<Map<String, Object>> questionsList = [
    {
      "question": "Qual sua cor favorita ?",
      "answers": ['Azul', 'Vermelho', 'Verde', 'Rosa', 'Roxo']
    },
    {
      "question": "Qual seu animal favorito ?",
      "answers": ['Gato', 'Cachorro', 'Pássaro', 'Hamster']
    },
    {
      "question": "Qual seu dia favorito da semana ? ?",
      "answers": [
        'Segunda',
        'Terça',
        'Quarta',
        'Quinta',
        "Sexta",
        "Sábado",
        "Domingo"
      ]
    }
  ];

  var _counter = 0;

  bool get lastQuestion {
    return _counter < questionsList.length;
  }

  void _setAnswer() {
    if (lastQuestion) {
      setState(() {
        _counter++;
      });
    }
  }

  void _resetQuizz() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: const Text("Coder Quiz"),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 1,
          itemBuilder: (context, index) {
            return lastQuestion
                ? SurveyWidget(
                    surveyList: questionsList,
                    nextAnswer: _setAnswer,
                    resetSurvey: _resetQuizz,
                    index: _counter)
                : ResultWidget();
          },
        ),
      ),
    );
  }
}
