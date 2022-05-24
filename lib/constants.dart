import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/views/screens/auth/add_video_screen.dart';
import 'package:flutter_tiktok_clone/views/screens/auth/video_screen.dart';

import 'controller/auth_controller.dart';

List pages = [
  videoScreen(),
  Text("SearchScreen()"),
  const AddVideoScreen(),
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
