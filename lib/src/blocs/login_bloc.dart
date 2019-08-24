import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_ubereats_app/src/resources/firebase_repository.dart';
import 'package:rxdart/rxdart.dart';

class LoginBLoc {
  FirebaseRepository _repository;

  // StreamController
  final BehaviorSubject<FirebaseUser> _google = BehaviorSubject<FirebaseUser>();

  // stream
  Stream<FirebaseUser> get googleAccount => _google.stream;

  // Contructor
  LoginBLoc() {
    _repository = new FirebaseRepository();
  }

  // google sign-in
  googleSignIn() async {
    _repository.googleSignIn().then((FirebaseUser authUser) {
      _google.sink.add(authUser);
    });
  }
}
