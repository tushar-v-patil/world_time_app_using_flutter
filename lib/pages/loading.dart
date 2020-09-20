import 'package:flutter/material.dart';
import 'package:WordTime/pages/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setUpWorldTime() async{
    WorldTime instance = WorldTime(flag: 'india.png', location: 'India', url: 'Asia/Kolkata', time: '');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  void initState(){
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
       body: Center(
          child: SpinKitFadingCircle(
            color: Colors.white,
            size: 50.0,
          ),
       ),
    );
  }
}