import 'package:flutter/material.dart';
class LoaddingError extends StatefulWidget {
  const LoaddingError({Key? key}) : super(key: key);

  @override
  State<LoaddingError> createState() => _LoaddingErrorState();
}

class _LoaddingErrorState extends State<LoaddingError> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildImageError,
          SizedBox(height: 20,),
          Text("You are offine.Make sure your",style: TextStyle(fontFamily: "f1",fontSize: 18,color: Colors.black,decoration: TextDecoration.none),),
          SizedBox(height: 10,),
          Text("Device is conneted to the internet.",style: TextStyle(fontSize: 18,fontFamily: "f1",color: Colors.black,decoration: TextDecoration.none),),
          SizedBox(height: 20,),
          _buildLoaddingAgain

        ],
      ),
    );
  }
  get _buildImageError{
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/error/error.jpg"),
          fit: BoxFit.cover
        )
      ),
    );
  }
  get _buildLoaddingAgain{
    return ElevatedButton(
      child: Text("ព្យាយាមម្ដងទៀត",style: TextStyle(fontFamily: "k1",fontSize: 15,fontWeight: FontWeight.bold),),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(300, 80),
        primary: Colors.white
      ),
      onPressed: (){

      },
    );
  }
}
