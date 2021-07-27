import 'package:flutter/material.dart';
import 'package:flutter_screens/models/userTransactions.dart';
import 'package:flutter_screens/models/userTransactions.dart';
import 'package:flutter_screens/models/usersList.dart';
import './userTransactions.dart';
enum role{
  User,
  Admin,
  SuperAdmin,
}
class LoginResponse{
  String? id;
  String? userName;
  String? email;
  List<userTransactions>? userransactions;
  List<UsersList>? usersList;

LoginResponse({
    this.userName,
    this.email,
    this.id,
    this.userransactions,
    this.usersList
});
}