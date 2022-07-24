
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learncode/BottomPage/About%20us.dart';
import 'package:learncode/BottomPage/Profile.dart';
import 'package:learncode/Helper/Facebook_helper.dart';
import 'package:learncode/Helper/Google_helper.dart';
import 'package:learncode/Helper/PhoneNumber_helper.dart';
import 'package:learncode/LoginPage/SignUP.dart';
import 'package:learncode/Page/LoaddingError/Loadding_error.dart';
import 'package:learncode/Page/PageExpression.dart';
import 'package:learncode/Page/PageLesson.dart';
import 'package:learncode/Page/PageVideo.dart';
import 'package:shimmer/shimmer.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);
  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _BuildAppbar,
        drawer: _BuildDrawer,
        body: MediaQuery.of(context).orientation == Orientation.portrait? _CrouselSlider : _buildRotate,
        bottomNavigationBar: _BuildButtonBar,
      ),

    );
  }
  int _selectIndex=0;
  get _BuildButtonBar => BottomNavigationBar(
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
    onTap: (index){
      setState((){
        _selectIndex = index;
      });
    },
    currentIndex: _selectIndex,
    items: [

      BottomNavigationBarItem(
        icon: InkWell(child: Icon(Icons.home),onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Myhome()));
        },),label: "Home"
      ),
      BottomNavigationBarItem(
          icon: InkWell(
              child: Icon(Icons.info),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> PageAboutUs())
          )),
          label: "About us"
      ),

    ],
  );
  get _BuildAppbar => AppBar(
    backgroundColor: Colors.grey[700],
    centerTitle: true,
    title: Container(
      // margin: EdgeInsets.only(left: 80),
        child: Text("Home",style: TextStyle(fontFamily: "f1"),)),

  );
  FacebookHelper _facebookHelper = FacebookHelper();
  PhoneLoginHelper _loginHelper = PhoneLoginHelper();
  GoogleHelper _googleHelper = GoogleHelper();
  get _BuildDrawer => Drawer(
    width: 310,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: ListView(
      children: [
        _DrawerHeader,
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          iconColor: Colors.black,
          style: ListTileStyle.list,
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Myhome()));
          },

        ),

        ListTile(
          style: ListTileStyle.list,
          leading: Icon(Icons.info),
          title: Text("About Us"),
          iconColor: Colors.black,
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => PageAboutUs()));
          },

        ),

        Divider(color: Colors.black,),
        ListTile(
          style: ListTileStyle.list,
          leading: Icon(Icons.logout),
          title: Text("Logout"),
          iconColor: Colors.red,
          textColor: Colors.red,
          onTap: () async{
            await _facebookHelper.logout();
            await _googleHelper.signOut();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MySignUpPage()));
          },

        ),
      ],
    ),
  );
  get _DrawerHeader => Container(
    height: 250,
    decoration: BoxDecoration(
      color: Colors.blue,
      image: DecorationImage(
        image: AssetImage("images/intro/drawer.jpg"),
        fit: BoxFit.cover
      )
    ),
  );
  get _CrouselSlider => Container(
    color: Colors.grey,
    width: MediaQuery.of(context).size.width,
    child: ListView(
      children:[
        SizedBox(height: 20,),
        CarouselSlider(
          items: [
            //slider 1
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("images/silder/s3.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("images/silder/s2.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("images/silder/s1.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            )
          ],
          options: CarouselOptions(
            height: 200,
            aspectRatio: 16/9,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
            enableInfiniteScroll: true,
            viewportFraction: 0.8
          ),
        ),
        SizedBox(height: 20,),
        _myLession,

      ]
    ),
  );
  get _myLession => SingleChildScrollView(
    child: Container(
      child: Column(
        children: [
          _ex(),
          SizedBox(height: 20,),
          _video(),
          SizedBox(height: 20,),
          _filePDF(),
          SizedBox(height: 20,),
          _buildLoadding(),
        ],
      ),
    ),
  );
  _ex(){
    return InkWell(
          child: Container(
            alignment: Alignment.center,
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.cyan[100],
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 100,
                    height: 100,
                    child: Image.asset("images/image lession/exercise01.png")),
                Container(
                  child: Text("លំហាត់",style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "f1"),),
                )
              ],
            ),

          ),
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyExpression()));
      },
    );
  }
  _video(){
    return InkWell(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              // image: DecorationImage(
              //     image: AssetImage("images/image lession/04.jpg"),
              //     fit: BoxFit.cover
              // ),
            ),
          ),
          Container(
            child: Text("Video",style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "f1"),),
          )
        ],
      ),
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Myvideo()));
      },
    );
  }
  _filePDF(){
    return InkWell(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              // image: DecorationImage(
              //     image: AssetImage("images/image lession/05.jpg"),
              //     fit: BoxFit.cover
              // ),
            ),
          ),
          Container(
            child: Text("ឯកសារ",style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "f1"),),
          )
        ],
      ),
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Mylesson()));
      },
    );
  }
  //
  get _buildRotate => Container(
    width: MediaQuery.of(context).size.width,
    child: ListView(
        children:[
          SizedBox(height: 20,),
          CarouselSlider(
            items: [
              //slider 1
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("images/silder/s3.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("images/silder/s2.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("images/silder/s1.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              )
            ],
            options: CarouselOptions(
                height: 350,
                aspectRatio: 16/9,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 2),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                enableInfiniteScroll: true,
                viewportFraction: 0.8
            ),
          ),
          SizedBox(height: 20,),
          _myLessionRoteta,
        ]
    ),
  );
  get _myLessionRoteta => SingleChildScrollView(
    child: Container(
      child: Column(
        children: [
          _exRoteta(),
          SizedBox(height: 10,),
          _videoRotate(),
          SizedBox(height: 10,),
          _fileRotate(),
        ],
      ),
    ),
  );
  _exRoteta(){
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("images/image lession/03.jpg"),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              child: Text("លំហាត់",style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "f1"),),
            )
          ],
        ),
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyExpression()));
      },
    );
  }
  _videoRotate(){
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("images/image lession/04.jpg"),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              child: Text("Video",style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "f1"),),
            )
          ],
        ),
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Myvideo()));
      },
    );
  }
  _fileRotate(){
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("images/image lession/05.jpg"),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              child: Text("ឯកសារ",style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "f1"),),
            )
          ],
        ),
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Mylesson()));
      },
    );
  }
  //make loadding
  _buildSilderLoadding(){
    return CarouselSlider(
      items: [
        _Loadding(),
        _Loadding(),
        _Loadding()
      ],
      options: CarouselOptions(
          height: 200,
          aspectRatio: 16/9,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(seconds: 2),
          enlargeCenterPage: true,
          autoPlayCurve: Curves.fastLinearToSlowEaseIn,
          enableInfiniteScroll: true,
          viewportFraction: 0.8
      ),
    );
  }
  _buildLoadding(){
    return Column(
      children: [
        _buildSilderLoadding(),
        SizedBox(height: 20,),
        _Loadding(),
        SizedBox(height: 20,),
        _Loadding(),
        SizedBox(height: 20,),
        _Loadding(),
        SizedBox(height: 20,),

      ],
    );
  }
_Loadding(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Shimmer.fromColors(
          child: Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          baseColor: Colors.grey[500]!,
          highlightColor: Colors.grey[100]!),
    );
}
}
