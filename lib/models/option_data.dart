import 'package:flutter/foundation.dart';

class OptionsData with ChangeNotifier, DiagnosticableTreeMixin {
  List<String> _options = [];

  List<String> get options => _options;
  set options(List<String> x) {
    _options = x;
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty('options', options));
  }
}


