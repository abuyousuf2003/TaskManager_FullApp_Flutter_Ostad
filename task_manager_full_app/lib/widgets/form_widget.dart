import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget{
  String _hintText;
FormWidget({ required  String hintText}):_hintText = hintText;

TextEditingController _textController = TextEditingController();

@override
  Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(8),
    height: 80,
    width: 300,
    child: Form(child: TextFormField(
      controller: _textController,
      obscureText:true,
      maxLength: 16,
    
    decoration: InputDecoration(
      border: OutlineInputBorder(borderSide: BorderSide.none),
      errorBorder:  OutlineInputBorder(borderSide: BorderSide.none),
      focusedBorder:  OutlineInputBorder(borderSide: BorderSide.none),
      
     contentPadding: EdgeInsets.all(8),
    filled: true,
    fillColor: Colors.white,
    labelText:_hintText ,
    ),
    )),
  );
  }



}