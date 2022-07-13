import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleHelper {
  GoogleSignIn _googleSignIn = GoogleSignIn();

  void signIn(Function(User? user) onComplete) async {
    final googleUser = await _googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
    final credential =   GoogleAuthProvider.credential(
        idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
    UserCredential userCredential =
    await FirebaseAuth.instance.signInWithCredential(credential);
    onComplete(userCredential.user);
  }

  Future signOut() async{
    await _googleSignIn.signOut();
  }


}
