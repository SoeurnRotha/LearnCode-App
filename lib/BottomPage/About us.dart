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
        body: _bodyPageAboutUs,
      ),
    );
  }

  get _appbar =>
      AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_return), onPressed: () {
          Navigator.pop(context);
        },
        ),
        title: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 40),
          child: Text("About US", style: TextStyle(fontFamily: "f1"),),
        ),
      );

  get _bodyPageAboutUs => ListView(
    children: [
      Stack(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            // margin: EdgeInsets.only(left: 30),
         // padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/image lession/03.jpg"),
                fit: BoxFit.cover
              )
            ),
          ),
          ),
          Container(
            alignment: Alignment.center,
            width: 300,
            height: 150,
            margin: EdgeInsets.only(left: 60,top: 30),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/intro/learnCode.png"),
                fit: BoxFit.cover
              )
            ),
          ),
        ],
      ),
      Container(
        width: double.infinity,
        height: 200,
        // alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Container(alignment: Alignment.center,margin: EdgeInsets.only(left: 20),child: Text("កម្មវិធីនេះមានគោលបំណងសម្រាប់ចែករំលែកនូវចំណេះដឹងទាក់ទងនិងការសរសេរកូដ (IT)  ដើម្បីជួយសម្រួលដល់និស្សិតដែលកំពង់សិក្សាជំនាញ (IT) ។",style: TextStyle(fontSize: 25,color: Colors.white),)),
      ),
      SizedBox(height: 20,),
      Row(
        children: [
          Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("images/chea.jpg"),
                )
            ),
          ),
          _contate("Mrr SARO SEREYVICHEA","+855 XXX XXX"),
        ],
      ),
      SizedBox(height: 20,),
      Row(
        children: [
          Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("images/rotha.jpg"),
                )
            ),
          ),
          _contate("Mrr SOEURN ROTHA", "+855 XXX XXX")
        ],
      ),
      SizedBox(height: 20,),
      Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text("Copyright by LEARNCODE",style: TextStyle(fontFamily: "s2",fontSize: 20,color: Colors.white),),
      )
    ],
  );
  _contate(String img,String phoneNumber){
    return Container(
      margin: EdgeInsets.only(right: 50),
      child:Column(
        children: [
          Text(img,style: TextStyle(fontSize: 10 ,color: Colors.blue,fontFamily: "s2"),),
          Text(phoneNumber,style: TextStyle(fontSize: 15,fontFamily: "s1",color: Colors.red),)
        ],
      ) ,
    );
  }

}
