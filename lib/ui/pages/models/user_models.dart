import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final String age;
  final int balance;

  UserModel(
      {required this.id,
    required  this.email,
    required this.name,
      this.age = '',
      this.balance = 0});

  @override
  List<Object?> get props => [id, email, name, age, balance];
}
