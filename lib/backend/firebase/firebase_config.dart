import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC3h19p91F2tC1exzn8c4YaGGHRMckHyXc",
            authDomain: "haki-6ef76.firebaseapp.com",
            projectId: "haki-6ef76",
            storageBucket: "haki-6ef76.appspot.com",
            messagingSenderId: "974665835419",
            appId: "1:974665835419:web:3021eddfff377bb34ff73e",
            measurementId: "G-2HH3FM02WN"));
  } else {
    await Firebase.initializeApp();
  }
}
