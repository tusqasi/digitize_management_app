import 'package:flutter/material.dart';
import 'package:digitize_management_app/views/member_list_page.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:digitize_management_app/models/member.dart';
import 'package:digitize_management_app/models/enums.dart';

void main() {
  // Make fake members
  final faker = Faker.instance;
  List<Member> members = [];
  // late String email;
  for (var i = 0; i < 10; i++) {
    members.add(
      Member(
        name: [
          faker.name.firstName(),
          faker.name.middleName(),
          faker.name.lastName(),
        ],
        role: Role.member,
        year: Year.ty,
        branch: Branch.civil,
        email: "2020bec000@sggs.ac.in",
      ),
    );
  }

  runApp(MaterialApp(
    title: "Members",
    home: MemberList(members),
  ));
}
