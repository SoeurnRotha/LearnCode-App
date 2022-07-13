import 'package:flutter/material.dart';
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
    leading: IconButton(
      icon: Icon(Icons.keyboard_return),onPressed: (){
        Navigator.pop(context);
    },
    ),
    title: Container(
      margin: EdgeInsets.only(left: 100),
        child: Text("ឯកសារ")),
  );
  get _BuildBody => Container(
    color: Colors.lime,
    child: ListView(
      children: [
        SizedBox(height: 10,),
        _C,
        SizedBox(height: 10,),
        _Cpp,
        SizedBox(height: 10,),
        _Css,
        SizedBox(height: 10,),
        _java,
        SizedBox(height: 10,),
        _py,
        SizedBox(height: 10,),
        _html,
        SizedBox(height: 10,),
        _Css,
        SizedBox(height: 10,),
        _js,

      ],
    ),
  );
  get _C =>Container(
    width: 360,
    height: 220,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage("images/Programming/c.jpg")
      )
    ),
  );
  get _Cpp =>Container(
    width: 360,
    height: 220,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage("images/Programming/c++.jpg")
        )
    ),
  );
  get _Cs =>Container(
    width: 360,
    height: 220,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage("images/Programming/c#.jpg")
        )
    ),
  );
  get _java =>Container(
    width: 360,
    height: 220,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage("images/Programming/java.jpg")
        )
    ),
  );
  get _py =>Container(
    width: 360,
    height: 220,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage("images/Programming/py.png")
        )
    ),
  );
  get _html =>Container(
    width: 360,
    height: 220,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage("images/Programming/html.jpg")
        )
    ),
  );
  get _Css =>Container(
    width: 360,
    height: 220,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage("images/Programming/css.jpg")
        )
    ),
  );
  get _js =>Container(
    width: 360,
    height: 220,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage("images/Programming/js.jpg")
        )
    ),
  );
}
