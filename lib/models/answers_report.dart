import 'package:my_quiz_app/models/quiz_model.dart';
import 'package:my_quiz_app/models/subject_model.dart';

class AnswersReport {
  final Map<int, int> selectedAnswers;
  final SubjectModel subjectModel;
  final int spentTime;
  final int levelTime;

  int trueAnswersCount = 0;
  int falseAnswersCount = 0;
  int averageTime = 0;
  int totalTime = 0;
  int timeSpent = 0;
  double truePercentage = 0.0;

  AnswersReport({
    required this.subjectModel,
    required this.selectedAnswers,
    required this.spentTime,
    required this.levelTime,
  }) {
    _checkAnswers();
  }

  _checkAnswers() {
    for (int i = 0; i < subjectModel.questions.length; i++) {
      QuizModel quiz = subjectModel.questions[i];
      int selection = selectedAnswers[i]!;

      switch (selection) {
        case 1:
          {
            if (quiz.trueAnswer == quiz.variant1) {
              trueAnswersCount++;
            }
          }
        case 2:
          {
            if (quiz.trueAnswer == quiz.variant2) {
              trueAnswersCount++;
            }
          }
        case 3:
          {
            if (quiz.trueAnswer == quiz.variant3) {
              trueAnswersCount++;
            }
          }
        case 4:
          {
            if (quiz.trueAnswer == quiz.variant4) {
              trueAnswersCount++;
            }
          }
        default:
          {
          }
      }

      falseAnswersCount = subjectModel.questions.length - trueAnswersCount;

      // int onlySelectedAnswersCount = 0;
      //
      // for (int i = 0; i < subjectModel.questions.length; i++) {
      //   if (selectedAnswers[i] != 0) {
      //     onlySelectedAnswersCount++;
      //   }
      // }

      averageTime = timeSpent ~/ subjectModel.questions.length;

      totalTime = subjectModel.questions.length * levelTime;

      timeSpent = (subjectModel.questions.length * levelTime) - spentTime;

      truePercentage = (trueAnswersCount / subjectModel.questions.length) * 100;
    }
  }
}
