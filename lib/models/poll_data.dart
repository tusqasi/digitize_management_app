import 'package:flutter/foundation.dart';
import 'package:digitize_management_app/models/poll.dart';

class PollsData with ChangeNotifier, DiagnosticableTreeMixin {
  Set<Poll> polls = {};
  void add(
      {String question = '',
      List<String> options = const [],
      bool multiple = false}) {
    polls.add(Poll(question, options, multiple));
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty('polls', polls));
  }
}
