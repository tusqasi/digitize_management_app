import 'package:digitize_management_app/models/enums.dart';

class Member {
  late List<String> name;
  late Role role;
  late Year year;
  late Branch branch;
  late String email;

  Member({
    required this.name,
    required this.role,
    required this.year,
    required this.branch,
    required this.email,
  });
}
