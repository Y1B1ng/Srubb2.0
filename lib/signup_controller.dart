import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scrubb/authentication_repository.dart';
import 'package:scrubb/firebase_options.dart';
import 'login.dart';
import 'signup.dart';
import 'package:get/get.dart';


class signup_controller extends GetxController {
  static signup_controller get instance => Get.find();

  //TextField Controllers to get data from TextFields
  final userName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  void registerUser(String email, String password){
    authentication_repository.instance.createUserWithEmailAndPassword(email, password);
  }
  
}


