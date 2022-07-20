import 'package:flutter/foundation.dart';

class OptionsData with ChangeNotifier, DiagnosticableTreeMixin {
  List<String> options = [];
  void add(option) {
    options.add(option);
    notifyListeners();
  }

  String get option => options.last;
  void remove(option) {
    assert(options.contains(option),
        "option: $option doesn't exist in the options");
    if (kDebugMode) {
      print("Removing option $option");
    }
    options.remove(option);
    notifyListeners();
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty('options', options));
  }
}
