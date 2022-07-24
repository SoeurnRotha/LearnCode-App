import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:learncode/BottomPage/MyHome.dart';
import 'package:learncode/Intro/firstPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(LearnCode());
}
class LearnCode extends StatefulWidget {
  const LearnCode({Key? key}) : super(key: key);

  @override
  State<LearnCode> createState() => _LearnCodeState();
}

class _LearnCodeState extends State<LearnCode> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Myhome(),
      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
  get _buildStreamBuilder{
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }else if(snapshot.hasError){
            return Center(child: Text("Error"),);
          }else if(snapshot.hasData){
            return Myhome();
          }else{
            return firstPage();
          }
        },
      ),
    );
  }
}

