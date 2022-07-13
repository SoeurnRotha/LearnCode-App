import 'package:flutter/material.dart';
import 'package:learncode/Intro/thirdPage.dart';

class secondPage extends StatefulWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
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
        Image.asset("images/intro/intro2.png"),
        SizedBox(height: 100,),
        ElevatedButton(
          child: Text("Get Start",style: TextStyle(fontSize: 30,fontFamily: "EngFont"),),
          style: ElevatedButton.styleFrom(
              fixedSize: Size(250, 80),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>thirdPage()));
          },
        ),
      ],
    ),
  );
  get _buildRotate=>SingleChildScrollView(
    child: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/intro/intro2.png"),
          SizedBox(height: 30,),
          ElevatedButton(
            child: Text("Get Start",style: TextStyle(fontSize: 30,fontFamily: "EngFont"),),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(700, 80),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
            ),
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> thirdPage()));
            },
          ),
        ],
      ),
    ),
  );

}


