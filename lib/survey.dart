import 'package:flutter/cupertino.dart';
import 'package:projeto_perguntas_coder/question.dart';
import 'package:projeto_perguntas_coder/resetQuizz.dart';

import 'answer.dart';

class SurveyWidget extends StatelessWidget {
  final List<Map<String, Object>> surveyList;
  final int index;
  final void Function() nextAnswer;
  final void Function() resetSurvey;

  SurveyWidget({
    required this.surveyList,
    required this.nextAnswer,
    required this.resetSurvey,
    required this.index,
  });

  List<Widget> _answersToList() {
    List<Widget> widgetList = [];

    for (String text in surveyList[index].cast()['answers']) {
      widgetList
          .add(AnswerWidget(displayText: text, whenSelected: nextAnswer));
    }

    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        QuestionWidget(
            displayQuestion: surveyList[index]['question'].toString()),
        ..._answersToList(),
        ResetQuizzWidget(
          whenReset: resetSurvey,
        ),
      ],
    );
  }
}
