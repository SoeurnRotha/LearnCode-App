import 'package:flutter/material.dart';
import 'package:learncode/BottomPage/MyHome.dart';
import 'package:learncode/Page/Video/UI%20Designer%20Video/UI%20for%20C%20programming.dart';
import 'package:learncode/Page/Video/Video_C%20programming/Getstart%20C%20programming.dart';
class Myvideo extends StatefulWidget {
  const Myvideo({Key? key}) : super(key: key);

  @override
  _MyvideoState createState() => _MyvideoState();
}

class _MyvideoState extends State<Myvideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video"),
        centerTitle: true,
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Myhome()));
          },
        ),
      ),
      body: _buildBody,
    );
  }
  get _buildBody{
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: ListView(

        children: [
          InkWell(
            child:   _buildItems("images/file/cpro.png", "C programming"),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> UICprogramming()));
            },
          ),
          InkWell(
            child:   _buildItems("images/file/C++.png", "C++ programming"),
            onTap: (){

            },
          ),
          InkWell(
            child:   _buildItems("images/file/flutter.png", "Flutter"),
            onTap: (){

            },
          ),
          InkWell(
            child:   _buildItems("images/file/py.png", "Python"),
            onTap: (){

            },
          ),



        ],
      )
    );
  }
   _buildItems(String image,String title){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: Colors.grey[300],
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.asset(image),

                      ),
                      SizedBox(width: 20,),
                      Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "f1"),)
                    ],
                  ),
                ),

                Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.green[800],
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)
                    ),
                  ),
                  child: Text("ចាប់ផ្ដើមសិក្សា",style: TextStyle(fontSize: 18,fontFamily: "k1",color: Colors.white,fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),
        ),
    );
  }
}
