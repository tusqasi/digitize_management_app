import 'package:flutter/foundation.dart';

class QuestionData with ChangeNotifier, DiagnosticableTreeMixin {
  String question = '';

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('question', question));
  }
}
