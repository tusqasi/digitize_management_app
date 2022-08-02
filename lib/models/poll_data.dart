import 'package:flutter/foundation.dart';
import 'package:digitize_management_app/models/poll.dart';
import 'package:dio/dio.dart';

class PollsData with ChangeNotifier, DiagnosticableTreeMixin {
  Set<Poll> polls = {};

  PollsData() {
    fetchData();
  }

  Future<void> fetchData() async {
    String url = "https://slipperydevotedbytecode.tusqasi.repl.co/polls";
    var dataFromServer = await Dio().get(url);

    var _polls = dataFromServer.data['polls'] as List;
    for (var poll in _polls) {
      polls.add(Poll(poll['question'], poll['options']));
    }
    notifyListeners();
  }

  void add(
      {String question = '',
      List<String> options = const [],
      bool multiple = false}) {}

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty('polls', polls));
  }
}
