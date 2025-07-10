


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'package:flutter/foundation.dart';
import 'package:task_manager_full_app/Pages/page_interface.dart';


void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);
class MyApp extends StatelessWidget
{
@override
  Widget build(BuildContext context) {
   return MaterialApp(
    theme: ThemeData(
      textButtonTheme: TextButtonThemeData(    style: ElevatedButton.styleFrom(
   foregroundColor: Colors.green,

     ),
     
             
      ),
      inputDecorationTheme:    InputDecorationTheme(
                   border: OutlineInputBorder(borderSide: BorderSide.none),
                   errorBorder:  OutlineInputBorder(borderSide: BorderSide.none),
                   focusedBorder:  OutlineInputBorder(borderSide: BorderSide.none),
                   
                  contentPadding: EdgeInsets.all(10),
                 filled: true,
                 fillColor: Colors.white,
                 
                 labelStyle: TextStyle(color: Colors.grey),
                 ),
    ),
    home: MyHomePage(),
   );
  }
}
class MyHomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return PageInterface();
  }
}

