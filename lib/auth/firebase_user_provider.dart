import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ZooovFirebaseUser {
  ZooovFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ZooovFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ZooovFirebaseUser> zooovFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ZooovFirebaseUser>(
      (user) {
        currentUser = ZooovFirebaseUser(user);
        return currentUser!;
      },
    );
