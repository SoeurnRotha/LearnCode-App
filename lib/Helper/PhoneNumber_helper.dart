import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class PhoneLoginHelper {
  String _verifiedId = "";

  verifyPhone(String number,
      {required AsyncValueGetter<User> onGettingUser,
        required ValueChanged<User?> onComplete,
        required ValueChanged<String> onError}) {

    var verificationCompleted = (PhoneAuthCredential credential) async {
      UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
      onComplete(userCredential.user);
    };

    var verificationFailed = (FirebaseAuthException ex) {
      print("Error ${ex.message}");
      onError("Verification Failed Error: ${ex.message}");
    };

    var codeSent = (String verId, int? forceResendingToken) async {
      _verifiedId = verId;
      print("codeSent verifiedId: $_verifiedId");
      User user = await onGettingUser();
      onComplete(user);
    };

    var codeAutoRetrievalTimeout = (String verId) {
      _verifiedId = verId;
      print("codeAutoRetrievalTimeout verifiedId: $_verifiedId");
      onError("Error timeout.");
    };

    FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: number,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
      timeout: Duration(minutes: 2), //Maximum is 2 minutes
    );
  }


  Future<UserCredential> verifyPINCode(String pin) async {
    AuthCredential authCredential = PhoneAuthProvider.credential(
      verificationId: _verifiedId,
      smsCode: pin.trim(),
    );

    return await FirebaseAuth.instance.signInWithCredential(authCredential);
  }
}