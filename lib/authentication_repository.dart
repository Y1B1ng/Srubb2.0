
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scrubb/firebase_options.dart';
import 'package:scrubb/signup_email_password_failure.dart';
import 'login.dart';
import 'signup.dart';
import 'home.dart';
import 'package:get/get.dart';

class authentication_repository extends GetxController {
  static authentication_repository get instance => Get.find();

  //Variables
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //Stream<FirebaseUser?> userStream = _firebaseAuth.authStateChanges();
  //  return _firebaseAuth.authStateChanges();}
  late final Rx<User?> firebaseUser;


  @override
  void onReady(){
    Future.delayed(const Duration(seconds: 6));
    firebaseUser = _firebaseAuth.currentUser as Rx<User?>;
  //firebaseUser.bindStream(_firebaseAuth.userChanges());
    ever(firebaseUser,_setInitialScreen);
  }
  
  _setInitialScreen(User? user){
    user == null ? Get.offAll(()=> login()) : Get.offAll(()=> home());
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async{
    try{
    await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    //For Rx<FirebaseUser?>
    firebaseUser.value != null? Get.offAll(()=> login()) : Get.to(()=> home());
  } on FirebaseException catch(e){
      final ex = SignupWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    }catch(_){
      const ex = SignupWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async{
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseException catch(e){
    }catch(_){}
  }

  Future<void> logout() async => await _firebaseAuth.signOut();


}