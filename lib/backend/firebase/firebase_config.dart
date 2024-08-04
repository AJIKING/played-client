import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDfymF8GG6FISY8A5cMEw3Li6lFMfZKxS8",
            authDomain: "played-prd-847e9.firebaseapp.com",
            projectId: "played-prd-847e9",
            storageBucket: "played-prd-847e9.appspot.com",
            messagingSenderId: "732123854228",
            appId: "1:732123854228:web:010c79d214b5c1e18c4b81",
            measurementId: "G-21BSMECL3C"));
  } else {
    await Firebase.initializeApp();
  }
}
