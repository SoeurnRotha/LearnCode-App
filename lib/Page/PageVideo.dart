import 'package:flutter/material.dart';
class Myvideo extends StatefulWidget {
  const Myvideo({Key? key}) : super(key: key);

  @override
  _MyvideoState createState() => _MyvideoState();
}

class _MyvideoState extends State<Myvideo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _videoAppbar,
        body: _BuildBody,

      ),
    );
  }
  get _videoAppbar=>AppBar(
    backgroundColor: Colors.grey,
    leading: IconButton(
      icon: Icon(Icons.keyboard_return),onPressed: (){
      Navigator.pop(context);
    },
    ),
    title: Container(
      margin: EdgeInsets.only(left: 100),
        child: Text("Video")),
  );
  get _BuildBody => Container(
    color: Colors.lightGreenAccent  ,
    child: ListView(
      children: [
        SizedBox(height: 10,),
        _C,
        SizedBox(height: 10,),
        _Cpp,
        SizedBox(height: 10,),
        _Cs,
        SizedBox(height: 10,),
        _java,
        SizedBox(height: 10,),
        _py,
        SizedBox(height: 10,),
        _html,
        SizedBox(height: 10,),
        _css,
        SizedBox(height: 10,),
        _js,

      ],
    ),
  );
  get _C => InkWell(
    child: Container(
      width: 360,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage("images/Programming/c.jpg"),
        )
      ),
    ),
    onTap: (){
      print("Hello");
    },
  );
  get _Cpp => InkWell(
    child: Container(
      width: 360,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("images/Programming/c++.jpg"),
          )
      ),
    ),
    onTap: (){
      print("Hello");
    },
  );
  get _Cs => InkWell(
    child: Container(
      width: 360,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("images/Programming/c#.jpg"),
          )
      ),
    ),
    onTap: (){
      print("Hello");
    },
  );
  get _java => InkWell(
    child: Container(
      width: 360,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("images/Programming/java.jpg"),
          )
      ),
    ),
    onTap: (){
      print("Hello");
    },
  );
  get _py => InkWell(
    child: Container(
      width: 360,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("images/Programming/py.png"),
          )
      ),
    ),
    onTap: (){
      print("Hello");
    },
  );
  get _html => InkWell(
    child: Container(
      width: 360,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("images/Programming/html.jpg"),
          )
      ),
    ),
    onTap: (){
      print("Hello");
    },
  );
  get _css => InkWell(
    child: Container(
      width: 360,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("images/Programming/css.jpg"),
          )
      ),
    ),
    onTap: (){
      print("Hello");
    },
  );
  get _js => InkWell(
    child: Container(
      width: 360,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("images/Programming/js.jpg"),
          )
      ),
    ),
    onTap: (){
      print("Hello");
    },
  );
}
