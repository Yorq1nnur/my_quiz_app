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
      int trues = 0;
      switch (selection) {
        case 1:
          {
            if (quiz.trueAnswer == quiz.variant1) {
              trues++;
            }
          }
        case 2:
          {
            if (quiz.trueAnswer == quiz.variant2) {
              trues++;
            }
          }
        case 3:
          {
            if (quiz.trueAnswer == quiz.variant3) {
              trues++;
            }
          }
        case 4:
          {
            if (quiz.trueAnswer == quiz.variant4) {
              trues++;
            }
          }
        default:
          {}
      }

      trueAnswersCount = trues;

      falseAnswersCount = subjectModel.questions.length - trueAnswersCount;

      int onlySelectedAnswersCount = 0;

      for (int i = 0; i < subjectModel.questions.length; i++) {
        if (selectedAnswers[i] != 0) {
          onlySelectedAnswersCount++;
        }
      }

      averageTime = spentTime ~/ onlySelectedAnswersCount;

      totalTime = subjectModel.questions.length * levelTime;

      truePercentage = trueAnswersCount / subjectModel.questions.length;
    }
  }
}
