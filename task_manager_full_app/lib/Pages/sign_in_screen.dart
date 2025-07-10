import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:task_manager_full_app/widgets/backgrounddesigning.dart';
import 'package:task_manager_full_app/widgets/form_widget.dart';



class SignInScreen extends StatelessWidget{

  void SignUpPage()
  {

  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Backgrounddesigning(childWidget: 
    
    
    Center(
      child: Container(
      
        padding: EdgeInsets.only(left:40,right:30),
        height: double.maxFinite,
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Container(
            alignment: Alignment.centerLeft,
            child: const Text("Get Started With",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 30,fontWeight: FontWeight.w800),),),
          //  FormWidget(hintText: "Email"),
          //  FormWidget(hintText: "Password")
        SizedBox(height: 10,),
          //First Form
           Form(child: 
           TextFormField(
            textInputAction: TextInputAction.next,
                   // controller: _textController,
                 
                 
                 
                 decoration: InputDecoration(
                 
                 labelText:"Email" ,
             
                 ),
                 )),
        
        //2nd form
         SizedBox(height: 10,),
         Form(child: TextFormField(
           
      
          // controller: _textController,
          obscureText:true,
          maxLength: 16,
               
               decoration: InputDecoration(
        suffixIcon: Icon(Icons.remove_red_eye),
               labelText:"password" ,
                
               ),
               )),
       SizedBox(height: 10,),
      
       SizedBox(
        width: double.infinity,
         child: ElevatedButton(
           style: ElevatedButton.styleFrom(
         backgroundColor: Colors.green,
         shape: BeveledRectangleBorder()
           ),
           
           onPressed: (){}, child: Icon(Icons.arrow_right_alt_rounded)),
       ),
      
       SizedBox(height: 10,),
       TextButton(onPressed: (){}, child: Text("Forget Password ? ",style: TextStyle(color: Colors.grey),)),
      
      RichText(text: TextSpan(
      text: "Don't have an account? ",
      style: TextStyle(
        color: Colors.black
      ),
      children: [
      TextSpan(
        text: "SignUp",
        style: TextStyle(fontWeight: FontWeight.w900,color: Colors.green),
        recognizer: TapGestureRecognizer()..onTap=(){}
      )
      ],
      ),
      
      
      
      )
      
      
      //  Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //   Text("Don't have Account?"),
      //   TextButton(onPressed: (){}, child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w900,),)),
      //  ],)
      
          ],
        ),
      ),
    ),),
   );
  }
}