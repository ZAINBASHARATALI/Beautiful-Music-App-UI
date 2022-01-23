import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/views/homescreen.dart';


void main()
{
  runApp(
     const GetMaterialApp(home:HomeScreen(),debugShowCheckedModeBanner: false,),
  );
}