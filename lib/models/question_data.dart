import 'package:flutter/foundation.dart';

class QuestionData with ChangeNotifier, DiagnosticableTreeMixin {
  String question = '';
  String get value => question;
  set value(value) {
    question = value;
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('question', question));
  }
}
