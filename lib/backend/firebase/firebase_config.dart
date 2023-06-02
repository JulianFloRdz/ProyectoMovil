import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBH-vXEXnqKcCVpqrGQgtJMXCEZ5vERb4c",
            authDomain: "collectorsrealm-d865a.firebaseapp.com",
            projectId: "collectorsrealm-d865a",
            storageBucket: "collectorsrealm-d865a.appspot.com",
            messagingSenderId: "944703091545",
            appId: "1:944703091545:web:e831c4eb1a3503444ed248"));
  } else {
    await Firebase.initializeApp();
  }
}
