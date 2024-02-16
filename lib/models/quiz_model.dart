class QuizModel {
  final String questionText;
  final String description;
  final String variant1;
  final String variant2;
  final String variant3;
  final String variant4;
  final String trueAnswer;
  final String image;

  QuizModel({
    required this.questionText,
    required this.trueAnswer,
    required this.variant1,
    required this.variant2,
    required this.variant3,
    required this.variant4,
    required this.description,
    required this.image,
  });

  factory QuizModel.fromJson(Map<String, dynamic> json) {
    return QuizModel(
      questionText: json["question_text"] as String? ?? "",
      description: json["description"] as String? ?? "",
      image: json["image"] as String? ?? "",
      trueAnswer: json["trueAnswer"] as String? ?? "",
      variant1: json["variant_1"] as String? ?? "",
      variant2: json["variant_2"] as String? ?? "",
      variant3: json["variant_3"] as String? ?? "",
      variant4: json["variant_4"] as String? ?? "",
    );
  }
}
