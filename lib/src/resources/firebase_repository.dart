import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_ubereats_app/src/resources/firebase_provider.dart';

class FirebaseRepository{
  final FirebaseProvider _provider = new FirebaseProvider();

  Future<FirebaseUser> googleSignIn() async => _provider.googleSignIn();
  
}