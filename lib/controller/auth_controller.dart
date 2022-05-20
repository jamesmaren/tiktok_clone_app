import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tiktok_clone/constants.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AuthController extends GetxController {
  //UPLOAD TO FIREBASE STORAGE
  Future<String> _uploadToStorage(File image) async {
    Reference ref = firebaseStorage
        .ref()
        .child('profilePics')
        .child(firebaseAuth.currentUser!.uid);
  }

  //registering the user

  Future<void> registerUser(
      String username, String email, String password, File? image) async {
    try {
      if (username.isEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          image != null) {
        // save user to out auth and firebase firestore
        UserCredential cred = await firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password);
      }
    } catch (e) {
      Get.snackbar(
        "Error creating Account",
        e.toString(),
      );
    }
  }
}
