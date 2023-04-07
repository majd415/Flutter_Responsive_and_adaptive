import 'dart:io';

import 'package:flutter/material.dart';
import 'package:responsive/mobile.dart';

import 'desktop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
       home:Builder(builder: (context) {

         //for just screen use the LayputBuilder
         //for screen or editing element inside the screen like width text or any style element

         if(MediaQuery.of(context).size.width.toInt() <= 560) {
           return MediaQuery(
             data: MediaQuery.of(context).copyWith(
               textScaleFactor: 0.5,
             ),
               child: MobileScreen());
         }
         return DesktopScreen();
       },
       )
      ,//LayoutBuilder(
      //   builder: (context, constraints) {
      //     print( constraints.minWidth.toInt());
      //     if(constraints.minWidth.toInt() <=560)
      //       return MobileScreen();
      //
      //     return DesktopScreen();
      //   },
      // ),

      //mediaQ
      //        watch the video :  MediaQuery.of(context).size.width.toInt()<=60
    );
  }
}


