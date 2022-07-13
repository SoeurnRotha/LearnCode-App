import 'dart:async';
import 'package:flutter/material.dart';
import 'package:learncode/Intro/secondPage.dart';
class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>secondPage())));
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width;
    return Scaffold(
      body: MediaQuery.of(context).orientation == Orientation.portrait
      ? _buildBody : _buildRotate,
    );
  }

  get _buildBody=>Container(

    alignment: Alignment.center,
    child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 300,
              height: 300,
              child: Image.asset("images/intro/learnCode.png")
          ),
          Text("សូមស្វាគមន៍",style: TextStyle(fontFamily: "k1",fontSize: 50)),
          SizedBox(height: 20,),
          CircularProgressIndicator(
            color: Colors.red,
            strokeWidth: 4.0,
          ),
          Container(
              width: 250,
              height: 250,
              child: Image.asset("images/intro/03.png")),
        ],
      )
  );
  get _buildRotate=>SingleChildScrollView(
    child: Container(

        alignment: Alignment.center,
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 300,
                height: 300,
                child: Image.asset("images/intro/learnCode.png")
            ),
            Text("សូមស្វាគមន៍",style: TextStyle(fontFamily: "k1",fontSize: 50)),
            SizedBox(height: 20,),
            CircularProgressIndicator(
              color: Colors.red,
              strokeWidth: 4.0,
            ),
            SizedBox(height: 20,),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Image.asset("images/intro/03.png")),
          ],
        )
    ),
  );
}
