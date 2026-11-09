import 'dart:ui';

class User {
  String firstName;
  String lastName;
  Color color;

  String get fullName => "$firstName $lastName";
  String get initial => firstName[0].toUpperCase();

  User({required this.firstName, required this.lastName, required this.color});
}