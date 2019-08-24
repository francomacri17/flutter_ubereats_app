import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseProvider{
  GoogleSignIn _googleSignIn;
  FirebaseAuth _firebaseAuth;

  // Constructor method
  FirebaseProvider(){
    _googleSignIn = GoogleSignIn();
    _firebaseAuth = FirebaseAuth.instance;
  }

  Future<FirebaseUser> googleSignIn() async {
    // google authentication (modal dialog)
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();

    // with google user
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    // firebase auth
    final AuthCredential googleAuthCredential = GoogleAuthProvider.getCredential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken
    );

    // sign in firebase
    final AuthResult authResult = await this._firebaseAuth.signInWithCredential(googleAuthCredential);
    final FirebaseUser firebaseUser = await this._firebaseAuth.currentUser();

    return firebaseUser;
  }
}