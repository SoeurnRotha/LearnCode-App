import 'package:flutter/material.dart';
import 'package:learncode/Page/PageVideo.dart';
import 'package:learncode/Page/Video/Video_C%20programming/Getstart%20C%20programming.dart';
class UICprogramming extends StatefulWidget {
  const UICprogramming({Key? key}) : super(key: key);

  @override
  State<UICprogramming> createState() => _UICprogrammingState();
}

class _UICprogrammingState extends State<UICprogramming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Myvideo()));
          },
        ),
      ),
      body: _buildBody,
    );
  }
  get _buildBody{
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: ListView(

        children: [
          SizedBox(height: 10,),
          _buildBander,
          SizedBox(height: 10,),
          _buildStar,
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 100,right: 100,top: 10),
            child: Container(
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey
              ),
              child: Text("មេរៀន",style: TextStyle(fontSize: 18,fontFamily: "k1",),),
            ),
          ),
          SizedBox(height: 10,),
          Divider(),
          InkWell(
            child: _lessonData("Lesson 1 of C programming"),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> videoGetsertCProgramming()));
            },
          ),
          Divider(),
          InkWell(
            child: _lessonData("Lesson 2 DataType"),
            onTap: (){

            },
          ),
          Divider(),
          InkWell(
            child: _lessonData("Lesson 3 of Condition"),
            onTap: (){

            },
          ),
          Divider(),
          InkWell(
            child:           _lessonData("Lesson 4 of Loop"),
            onTap: (){

            },
          ),
          Divider(),
          InkWell(
            child:           _lessonData("Lesson 5 of Array"),
            onTap: (){

            },
          ),
          Divider(),
          InkWell(
            child:        _lessonData("Lesson 6 of Function"),
            onTap: (){

            },
          ),
          Divider(),
          InkWell(
            child:           _lessonData("Lesson 7 of Pointer"),
            onTap: (){

            },
          ),
          Divider(),
          InkWell(
            child:       _lessonData("Lesson 8 of String"),
            onTap: (){

            },
          ),
          Divider(),
          InkWell(
            child: _lessonData("Lesson 9 of Sturct"),
            onTap: (){

            },
          ),
          Divider(),
          InkWell(
            child:         _lessonData("Lesson 10 of File I/O"),
            onTap: (){

            },
          ),

        ],
      ),
    );
  }
  get _buildBander{
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/pro/c.jpg"),
          fit: BoxFit.cover
        )
      ),
    );
  }
  get _buildStar{
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(Icons.star,color: Colors.amber,),
          SizedBox(width: 5,),
          Icon(Icons.star,color: Colors.amber,),
          SizedBox(width: 5,),
          Icon(Icons.star,color: Colors.amber,),
          SizedBox(width: 5,),
          Icon(Icons.star,color: Colors.amber,),
          SizedBox(width: 5,),
          Icon(Icons.star,color: Colors.amber,),
        ],
      ),
    );
  }
  _lessonData(String text){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: 60,
        //color: Colors.amber,
        child: Text(text,style: TextStyle(fontFamily: "f1",fontSize: 18),),
      ),
    );
  }
}
