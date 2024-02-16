import 'dart:ui';
import 'package:my_quiz_app/models/quiz_model.dart';
import '../utils/extension/extension.dart';
import 'level_model.dart';

class SubjectModel {
  final String subjectName;
  final String description;
  final String image;
  final List<QuizModel> questions;
  final LevelModel level;
  final Color color;

  SubjectModel( {
    required this.level,
    required this.questions,
    required this.subjectName,
    required this.color,
    required this.description,
    required this.image,
  });

  factory SubjectModel.fromJson(Map<String, dynamic> json) {
    return SubjectModel(
      color:  (json["color"] as String? ?? "F2954D").toColor(),
      level: getLevelFromString(json["level"] as String? ?? ""),
      subjectName: json["subject_name"] as String? ?? "",
      image: json["image"] as String? ?? "",
      description: json["description"] as String? ?? "",
      questions: (json["questions"] as List?)
              ?.map((e) => QuizModel.fromJson(e))
              .toList() ??
          [],
    );
  }
}
