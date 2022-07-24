import 'package:flutter/material.dart';

class PageAboutUs extends StatefulWidget {
  const PageAboutUs({Key? key}) : super(key: key);

  @override
  _PageAboutUsState createState() => _PageAboutUsState();
}

class _PageAboutUsState extends State<PageAboutUs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _appbar,
        body: _body,
      ),
    );
  }

  get _appbar =>
      AppBar(
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), onPressed: () {
          Navigator.pop(context);
        },
        ),
        title: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 55),
          child: Text("About us", style: TextStyle(fontFamily: "f1"),),
        ),
        // centerTitle: true,
      );
  get _body => SingleChildScrollView(
      child: Container(
      width: MediaQuery.of(context).size.width,
    child: Column(
    children: [
    SizedBox(height: 5,),
    Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
    child: Image.asset("images/intro/newLogo.png")
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.only(
      topRight: Radius.circular(20),
      bottomLeft: Radius.circular(20),

    ),
    boxShadow: [
    BoxShadow(
    color: Colors.black,
    blurRadius: 3,
    spreadRadius: 2,
    offset: Offset.zero,
    blurStyle: BlurStyle.outer
    )
    ]
    ),
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    Center(child: Text("គោលបំណងក្នុងការបង្កើតកម្មវិធីនេះឡើងគឺដើម្បីចែករំលែកនៅចំណេះដឹងផ្នែកព័័ត៌មានវិទ្យា(Information Technology)ដែលពួកយើងមាន ដើម្បីជួយសម្រួលដល់សិស្សានុសិស្សដែលកំពុងសិក្សាឬមានបំណងចង់សិក្សាខាងផ្នែកព័ត៌មានវិទ្យានេះ។",style: TextStyle(fontSize: 15),)
    ),
    ),
    ),
    ),
    // SizedBox(height: 10,),
    Text("កម្មវិធីមួយនេះបង្កើតឡើងដោយ៖",style: TextStyle(fontSize: 15,fontFamily: "k1",fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
    SizedBox(height: 10,),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    width: MediaQuery.of(context).size.width,
    height: 80,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.only(
    topRight: Radius.circular(20),
    bottomLeft: Radius.circular(20),
    ),
      color: Colors.grey,
      // gradient: LinearGradient(
      //   begin: Alignment.topLeft,
      //   end: Alignment.bottomRight,
      //   colors: [Colors.purpleAccent,Colors.blue,Colors.amber,Colors.lightGreenAccent],
      // ),
      boxShadow: [
        BoxShadow(
            color: Colors.black,
            blurRadius: 3,
            spreadRadius: 2,
            offset: Offset.zero,
            blurStyle: BlurStyle.outer
        )
      ]
  ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            child: Text("Saro SereyVichea",style: TextStyle(fontFamily: "f1",fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
        ),
        SizedBox(height: 5,),
        Container(
            child: Text("Soeurn Rotha",style: TextStyle(fontFamily: "f1",fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
        ),
      ],
    ),
  ),
  ),
    SizedBox(height: 10,),
    Text("អ្នកទាំងអស់គ្នាអាច Support ខ្ញំតាមរយះ",style: TextStyle(fontSize: 18,fontFamily: "k1",fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
    // SizedBox(height: 30,),
    Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage("images/aba/aba logo.png"),
                  fit: BoxFit.cover
              )
          ),
        ),
        SizedBox(width: 20,),
        Text("002 167 474",style: TextStyle(fontSize: 18),)
      ],
    ),
    Container(
      child: Column(
        // Row(
        //   children: [
        //     Container(
        //       child: Image.asset("images/aba/aba logo.png"),
        //     ),
        //   ],
        // ),
        children: [
          Row(
            children: [
              Container(
                child: Image.asset("images/intro/FB logo.png"),
                margin: EdgeInsets.only(left: 20),
                width: 50,
                height: 50,
              ),
              SizedBox(width: 20,),
              Text("LearnCode រៀនកូដ"),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                child: Image.asset("images/intro/YT logo.png"),
                margin: EdgeInsets.only(left: 20),
                width: 50,
                height: 50,
              ),
              SizedBox(width: 20,),
              Text("LearnCode រៀនកូដ"),
            ],
          ),
        ],
      ),
    ),
    SizedBox(height: 30,),
    Container(),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              // bottomRight: Radius.circular(30),
              // topLeft: Radius.circular(30),

            ),
            // gradient: LinearGradient(
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //     colors: [Colors.purpleAccent,Colors.amber,Colors.lightGreenAccent,Colors.blue]
            // ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 3,
                  spreadRadius: 2,
                  offset: Offset.zero,
                  blurStyle: BlurStyle.outer
              )
            ]
        ),
        child: Center(child: Text("Copyright by LearnCode",style: TextStyle(fontSize: 12,color: Colors.red,fontFamily: "f1"),)),
      ),
    )
  ],
  ),
      ),
  );


}