import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'adddata.dart';

void addDate(
  String name,
  String gender,
  String phoneNUmber,
  String description,
  String dateOfBirth,
) async {
  await FirebaseFirestore.instance.collection('userdata').add({
    "name": name,
    'gender': gender,
    'phoneNumber': phoneNUmber,
    'description': description,
    'dateOfBirth': dateOfBirth,
  });
}

void signup(String email, String password) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    Get.to(AddForm());
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
      Get.snackbar('error', 'The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
      Get.snackbar('error', 'The account already exists for that email.',
          backgroundColor: Color(0Xff20fd));
    }
  } catch (e) {
    print(e);
  }
}

void signin(String email, String password) async {
  await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: password);
}

void signout() async {
  await FirebaseAuth.instance.signOut();
}
