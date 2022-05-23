import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'controller/auth_controller.dart';

const pages = [
  Text("VideoScreen()"),
  Text("SearchScreen()"),
  Text("const AddVideoScreen()"),
  Text('Messages Screen'),
  //ProfileScreen(uid: authController.user.uid),
];
//colors

const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

//firebase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CONTROLLER
var authController = AuthController.instance;
