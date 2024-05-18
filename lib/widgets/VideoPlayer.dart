import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({Key? key,required this.videoUrl}) : super(key: key);
  final String videoUrl;
  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayerWidget> {
  late VideoPlayerController _VideoPlayerController;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    // TODO: implement initState
    _VideoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _initializeVideoPlayerFuture = _VideoPlayerController.initialize().then((_){
      _VideoPlayerController.play();
      _VideoPlayerController.setLooping(true);
      setState(() {
        
      });
    });
    super.initState();
  }
  @override
  void dispose(){
    _VideoPlayerController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(

     future: _initializeVideoPlayerFuture,


      builder: (context,snapshot){
       if(snapshot.connectionState == ConnectionState.done){
         return AspectRatio(
          aspectRatio: _VideoPlayerController.value.aspectRatio,
           child: VideoPlayer(_VideoPlayerController),
         );
       }
       else{
        return Center(
          child: CircularProgressIndicator(),
        );
       }
      }
      
      
      );
  }
}