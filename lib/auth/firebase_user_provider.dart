import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HakiAppFirebaseUser {
  HakiAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

HakiAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HakiAppFirebaseUser> hakiAppFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<HakiAppFirebaseUser>(
      (user) {
        currentUser = HakiAppFirebaseUser(user);
        return currentUser!;
      },
    );
