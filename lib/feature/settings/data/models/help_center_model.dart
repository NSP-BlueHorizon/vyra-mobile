class HelpCenterModel {
  final String title;
  final String answer;

  const HelpCenterModel({
    required this.title,
    required this.answer,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is HelpCenterModel &&
        other.title == title &&
        other.answer == answer;
  }

  @override
  int get hashCode => title.hashCode ^ answer.hashCode;

  @override
  String toString() {
    return 'HelpCenterModel(title: $title, answer: $answer)';
  }
}
