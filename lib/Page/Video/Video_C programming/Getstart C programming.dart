import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:learncode/Page/Video/UI%20Designer%20Video/UI%20for%20C%20programming.dart';
import 'package:video_player/video_player.dart';
class videoGetsertCProgramming extends StatefulWidget {
  const videoGetsertCProgramming({Key? key}) : super(key: key);

  @override
  State<videoGetsertCProgramming> createState() => _videoGetsertCProgrammingState();
}

class _videoGetsertCProgrammingState extends State<videoGetsertCProgramming> {
  VideoPlayerController? _controller;
  String url = "https://firebasestorage.googleapis.com/v0/b/projct-learncode-app.appspot.com/o/Video%2Fsad_144p.mp4?alt=media&token=4396daf1-e9c7-4d8d-a2cb-88e3a17dc3bd";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network(url)..initialize().then((_) {
      setState(() {});
    });
  }
  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final chewieController = ChewieController(
      videoPlayerController: _controller!,
      autoPlay: true,

    );
    return Scaffold(
      appBar: _buildAppbar,
      body: Container(

        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _controller!.value.isInitialized
                  ?AspectRatio(
                aspectRatio: _controller!.value.aspectRatio,
                child: Chewie(
                  controller: chewieController,
                ),
              ) : Container(  // loadding internet
                child: Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("សូមរង់ចាំ",style: TextStyle(fontFamily: "k1",fontSize: 30),),
                    SizedBox(height: 20,),
                    CircularProgressIndicator(
                      strokeWidth: 5,
                    ),

                  ],
                ),),
              ),
              SizedBox(height: 10,),
              
              Divider(),
              InkWell(
                child: _buildItemLesson("Lesson 1"),
                onTap: (){

                },
              ),
              Divider(),
              InkWell(
                child: _buildItemLesson("Lesson 2"),
                onTap: (){

                },
              ),
              Divider(),
              InkWell(
                child: _buildItemLesson("Lesson 3"),
                onTap: (){

                },
              ),
              Divider(),
              InkWell(
                child: _buildItemLesson("Lesson 4"),
                onTap: (){

                },
              ),
              Divider(),
              InkWell(
                child: _buildItemLesson("Lesson 5"),
                onTap: (){

                },
              ),
              Divider(),
              InkWell(
                child: _buildItemLesson("Lesson 6"),
                onTap: (){

                },
              ),

            ],
          ),
        )
      ),
    );
  }
  get _buildAppbar {
    return AppBar(
      backgroundColor: Colors.grey,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> UICprogramming()));
        },
      ),

    );
  }
   _buildItemLesson(String text){
    return Container(
      alignment: Alignment.center,
      height: 80,
        color: Colors.amber,
        width: MediaQuery.of(context).size.width,
        child: Text(text,style: TextStyle(fontSize: 20,fontFamily: "f1"),));
  }
}
