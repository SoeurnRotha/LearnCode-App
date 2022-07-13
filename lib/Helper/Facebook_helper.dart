import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookHelper {
  Future login(Function(User? user) onComplete) async {
    try{
      LoginResult result = await FacebookAuth.instance.login();
      final OAuthCredential credential = FacebookAuthProvider.credential(result.accessToken!.token);
      UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      onComplete(userCredential.user);
    } catch(e){
      print(e.toString());
    }
  }

  Future logout() async{
    await FacebookAuth.instance.logOut();
  }
}