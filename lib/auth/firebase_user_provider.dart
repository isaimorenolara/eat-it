import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EatItFirebaseUser {
  EatItFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

EatItFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EatItFirebaseUser> eatItFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<EatItFirebaseUser>(
      (user) {
        currentUser = EatItFirebaseUser(user);
        return currentUser!;
      },
    );
