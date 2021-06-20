import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String firstName;
  final String lastName;
  final DateTime? dateOfBirth;
  User({required this.firstName, required this.lastName, this.dateOfBirth});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson( instance) => _$UserToJson(this);
}