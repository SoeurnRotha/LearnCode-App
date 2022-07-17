import 'package:flutter/material.dart';
import 'package:learncode/BottomPage/MyHome.dart';
import 'package:learncode/Page/Lession/C%20programming_lession.dart';
class PageFile extends StatefulWidget {
  const PageFile({Key? key}) : super(key: key);

  @override
  _PageFileState createState() => _PageFileState();
}

class _PageFileState extends State<PageFile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _fileAppbar,
        body: _BuildBody,
      ),
    );
  }
  get _fileAppbar => AppBar(
    backgroundColor: Colors.grey,
    title: Container(
        child: Text("ឯកសារ")),
    centerTitle: true,
    leading: IconButton(icon: Icon(Icons.arrow_back),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Myhome()));
    },
    ),
  );
  get _BuildBody => Container(
    child: ListView(
      children: [
        SizedBox(height: 10,),
        InkWell(
          child: _programmingLanguage("images/file/cpro.png","C programming"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>pdfCprogramming()));
          },
        ),
        SizedBox(height: 10,),
        InkWell(
        child:_programmingLanguage("images/file/C++.png","C++ programming"),
        onTap: (){

        },
        ),
        SizedBox(height: 10,),
        InkWell(
        child: _programmingLanguage("images/file/flutter.png","Flutter"),
        onTap: (){

        },
        ),
      ],
    ),
  );
   _programmingLanguage(String image,String text) => Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 130,
              height: 200,
              child: Image.asset(image),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
  
}
