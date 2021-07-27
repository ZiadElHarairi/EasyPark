import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'userTransactions.dart';




// class LoginResponseModel {
//   final String? token;
//   final String? error;

//   LoginResponseModel({this.token, this.error});

//   factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
//     return LoginResponseModel(
//       token: json["token"] != null ? json["token"] : "",
//       error: json["error"] != null ? json["error"] : "",
//     );
//   }
// }



class Users {
  String? userName;
  String? password;
  String? email;
  String? mobileNumber;

  Users({
    this.userName,
    this.email,
    this.password,
    this.mobileNumber,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'userName':userName,
      'email': email,
      'password': password,
      'mobileNumber': mobileNumber,
    };

    return map;
  }
}