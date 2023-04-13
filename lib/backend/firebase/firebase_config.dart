import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB8poenbPJ1rqd9UI7orqZvDjG9c8ArRaY",
            authDomain: "eatitapp-f870f.firebaseapp.com",
            projectId: "eatitapp-f870f",
            storageBucket: "eatitapp-f870f.appspot.com",
            messagingSenderId: "426100809050",
            appId: "1:426100809050:web:6d04a10298b82f693ce763",
            measurementId: "G-EF339LTBE0"));
  } else {
    await Firebase.initializeApp();
  }
}
