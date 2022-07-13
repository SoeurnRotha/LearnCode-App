import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:learncode/BottomPage/MyHome.dart';
import 'package:learncode/Helper/Facebook_helper.dart';
import 'package:learncode/Helper/Google_helper.dart';
import 'package:learncode/Helper/Message_SnackBar_helper.dart';
import 'package:learncode/Helper/PhoneNumber_helper.dart';
class MySignUpPage extends StatefulWidget {
  const MySignUpPage({Key? key}) : super(key: key);

  @override
  State<MySignUpPage> createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }
  get _buildBody{
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            _buildLogo,
            _buildTextStyle,
            SizedBox(height: 10,),
            _buildRow,
            SizedBox(height: 10,),
            _boxSendMessagetoPhoneNumber,
            Text("ឬ",style: TextStyle(fontFamily: "khmer1",fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            _signUpwithGoogle("ភ្ជាប់តាម Google","images/Login/google.png"),
            SizedBox(height: 10,),
            _signUpwithFacebook("ភ្ជាប់តាម Facebook", "images/Login/fb.png")

          ],
        ),
      ),
    );
  }
  get _buildLogo{
    return Container(
      width: 200,
      height: 200,
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage,
      //   )
      // ),
      child: Image.asset("images/intro/learnCode.png"),
    );
  }
  get _buildTextStyle{
    return Text("សូមស្វាគមន៍",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "khmer1"),);
  }
  get _buildRow{
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _CodeContry,
       // SizedBox(width: 20,),
        _inputPhone
      ],
    );
  }
  FocusNode _codeNode = FocusNode();
  FocusNode _phoneNode = FocusNode();
  TextEditingController _codeContry = TextEditingController(text: "855");
  TextEditingController _phoneNumber = TextEditingController();
  bool _isCode =true;
  bool _isPhone = false;
  var _smsCode = TextEditingController();
  get _CodeContry{
    return Container(
      width: 50,
      child: TextField(
        style: TextStyle(color: _isCode ? Colors.black : Colors.red),
        controller: _codeContry,
        focusNode: _codeNode,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: "Code",
          prefixText: "+",
          suffixIcon: _isCode ?
          null : IconButton(
            icon: Icon(Icons.error,color: Colors.red,),
            onPressed: (){
              //SnakBar
              showSnackBar(context,"Please Enter a valid country code");
            },
          )
        ),
        onChanged: (String text){
          setState((){
            _isCode = text.length>=1 && text.length<=3 ? true : false;
          });
        },
      ),
    );
  }
  get _inputPhone{
    return Container(
      width: 200,
      child: TextField(
        focusNode: _phoneNode,
        controller: _phoneNumber,
        style: TextStyle(color: _isPhone ? Colors.black : Colors.red),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: "Enter phone",
          hintStyle: TextStyle(fontWeight: FontWeight.bold),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          suffixIcon: _isPhone
            ? null
              :IconButton(icon: Icon(Icons.error),color: Colors.red,
          onPressed: (){
                //SnakBar
            showSnackBar(context,"Please Enter a valid phone number");

          },)
        ),
        onChanged: (String text){
          setState((){
            _isPhone = text.length <8 ? false : true;
          });
        },
      ),
    );
  }
  PhoneLoginHelper _loginHelper = PhoneLoginHelper();
  get _boxSendMessagetoPhoneNumber{
    return ElevatedButton(
      onPressed: (){
        if(_isCode == false){
          _codeNode.requestFocus();
        }else if(_isPhone == false){
          _phoneNode.requestFocus();
        }else{
          String number = "+${_codeContry.text.trim()}${_phoneNumber.text.trim()}";
          _loginHelper.verifyPhone(number, onGettingUser: ()async{
            return await showDialog(context: context, builder: (context)=> _alerDialog);
          },onComplete: (User? user){
            if(user != null){
              print("user.uid: ${user.uid}");
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Myhome()));
            }else{
              showSnackBar(context, "Someting went wrong with phone login");
            }
          }, onError: (String error){
            showSnackBar(context, error);
          });
        }
//node
      },
      child: Text("ផ្ញើលេខគូដទៅកាន់សារ",style: TextStyle(fontFamily: "khmer1",fontSize: 20,color: Colors.black),),

      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        fixedSize: Size(350,60),
        primary: Colors.yellowAccent
      ),
    );
  }
  get _alerDialog{
    return AlertDialog(
      title: Text("Enter PIN"),
      content: TextField(
        controller: _smsCode,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: "Enter PIN"
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: ()async{
            UserCredential userCredential = await _loginHelper.verifyPINCode(_smsCode.text);
            Navigator.of(context).pop(userCredential.user);
          },
          child: Text("Verify"),
        )
      ],
    );
  }
  GoogleHelper _googleHelper = GoogleHelper();
  _signUpwithGoogle(String text,String image){
    return ElevatedButton(
      onPressed: (){
        //
        _googleHelper.signIn((user) {
          if(user != null){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Myhome()));
          }else{
            showSnackBar(context, "Google login failed!");
          }
        });

      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(350, 60),
        primary: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPrimary: Colors.grey
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
                height: 100,
                child: Image.asset(image)
            ),
          ),
          SizedBox(width: 5,),
          Text(text,style: TextStyle(fontFamily: "khmer1",fontSize: 15,color: Colors.black),),
        ],
      ),
    );
  }
  FacebookHelper _facebookHelper = FacebookHelper();
  _signUpwithFacebook(String text,String image){
    return ElevatedButton(
      onPressed: (){
        //
        _facebookHelper.login((user) {
          if(user != null){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Myhome()));
          }else{
            showSnackBar(context, "Facebook login false !");
          }
        });
      },
      style: ElevatedButton.styleFrom(
          fixedSize: Size(350, 60),
          primary: Colors.blue[600],
          onPrimary: Colors.grey,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
                height: 60,
                child: Image.asset(image)),
          ),
          SizedBox(width: 5,),
          Text(text,style: TextStyle(fontFamily: "khmer1",fontSize: 15,color: Colors.white),),
        ],
      ),
    );
  }
}
