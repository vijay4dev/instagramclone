import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/utils/storage.dart';

class AuthMethod {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // sign up user
  Future<String> signupuser({
    required String email, 
    required String password, 
    required String Bio, 
    required String username ,
    required Uint8List file
    }) async {
    String res = "Some error occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty || Bio.isNotEmpty || username.isNotEmpty || file != null) {
        UserCredential cred = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

        String URL_pic = await StorageMethods().uploadImages('profilepic', file, false);

       await _firestore.collection('users').doc(cred.user!.uid).set({
          'username':username,
          'uid': cred.user!.uid,
          'email': email,
          'Bio': Bio,
          'followers': [],
          'following': [],
          'photourl':URL_pic
        });

        res = "success";
      }
    } on FirebaseAuthException catch(err){
        if(err.code == "invalid-email"){
          res = "Invalid Email";
        } else if(err.code == "weak-password"){
          res = "Weak Password it should be at least of 6 charectors";
        }
    }
     catch (e) {
      res = e.toString();
    }
    return res;
  }
}