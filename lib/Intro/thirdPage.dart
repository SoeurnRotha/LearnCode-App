import 'package:flutter/material.dart';
import 'package:learncode/BottomPage/MyHome.dart';
import 'package:learncode/LoginPage/SignUP.dart';
class thirdPage extends StatefulWidget {
  const thirdPage({Key? key}) : super(key: key);

  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).orientation == Orientation.portrait
      ? _buildBody : _buildRotate,
    );
  }
  get _buildBody=>Container(
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
              Container(
                  margin: EdgeInsets.only(right: 230),
                  child: Text("Hello",style: TextStyle(fontSize: 60),)),
              Container(
                  margin: EdgeInsets.only(right: 240,bottom: 50),
                  child: Text("Everyone",style: TextStyle(fontSize: 30),)),
        Image.asset("images/intro/01.jpg"),
        SizedBox(height: 60,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            primary: Colors.grey,
            fixedSize: Size(200, 70),
            onPrimary: Colors.white,
          ),
          child: Text("Sign in",style: TextStyle(fontSize: 40,color: Colors.white),),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> MySignUpPage()));
          },
        )
      ],
    ),
  );
  get _buildRotate=>SingleChildScrollView(
    child: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          Container(
              margin: EdgeInsets.only(right: 600),
              child: Text("Hello",style: TextStyle(fontSize: 60),)),
          Container(
              margin: EdgeInsets.only(right: 610,bottom: 50),
              child: Text("Everyone",style: TextStyle(fontSize: 30),)),
          Image.asset("images/intro/01.jpg"),
          SizedBox(height: 20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              primary: Colors.grey,
              fixedSize: Size(700, 100),
              onPrimary: Colors.white,
            ),
            child: Text("Sign in",style: TextStyle(fontSize: 40,color: Colors.white),),
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MySignUpPage()));
            },
          )
        ],
      ),
    ),
  );
}
