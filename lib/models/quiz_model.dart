class QuizModel {
  final String questionText;
  final String description;
  final String variant1;
  final String variant2;
  final String variant3;
  final String variant4;
  final String trueAnswer;

  QuizModel({
    required this.questionText,
    required this.trueAnswer,
    required this.variant1,
    required this.variant2,
    required this.variant3,
    required this.variant4,
    required this.description
  });

  factory QuizModel.fromJson(Map<String, dynamic> json) {
    return QuizModel(
      questionText: json["question_text"] as String? ?? "",
      description: json["description"] as String? ?? "",
      trueAnswer: json["trueAnswer"] as String? ?? "",
      variant1: json["variant1"] as String? ?? "",
      variant2: json["variant2"] as String? ?? "",
      variant3: json["variant3"] as String? ?? "",
      variant4: json["variant4"] as String? ?? "",
    );
  }
}
