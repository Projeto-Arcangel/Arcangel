import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCyHDQs-RTm3J2oYolELIXKOYFWQE5ZEHQ",
            authDomain: "casoeuerre-8g1y00.firebaseapp.com",
            projectId: "casoeuerre-8g1y00",
            storageBucket: "casoeuerre-8g1y00.firebasestorage.app",
            messagingSenderId: "1004268647764",
            appId: "1:1004268647764:web:4253028bee32bacf6a84c1"));
  } else {
    await Firebase.initializeApp();
  }
}
