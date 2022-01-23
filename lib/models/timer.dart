import 'package:flutter/material.dart';
import 'package:music/models/constants.dart';

class TimerWidget extends StatelessWidget {
  final mins;
  final secs;
  const TimerWidget({ this.mins=0,this.secs=0, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('$mins : ''$secs',style: TextStyle(color: kprogressbarcolor,fontSize: 18,fontWeight: FontWeight.w600),);
  }
}