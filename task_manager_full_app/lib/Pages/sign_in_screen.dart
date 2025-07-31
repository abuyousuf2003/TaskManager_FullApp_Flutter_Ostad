import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_full_app/Pages/forgot_password_email_screen.dart';
import 'package:task_manager_full_app/Pages/main_nav_screen.dart';
import 'package:task_manager_full_app/Pages/sign_up_screen.dart';

import 'package:task_manager_full_app/widgets/backgrounddesigning.dart';
import 'package:task_manager_full_app/widgets/form_widget.dart';


class SignInScreen extends StatefulWidget{
 static const String routeName = "/signInPage";
  @override
  State<SignInScreen> createState()=>_SignInScreenState() ;
}



class _SignInScreenState extends State<SignInScreen>{


bool _obscureText = false;

 
 TextEditingController emailController = TextEditingController();
 TextEditingController passwordController = TextEditingController();

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
                   controller: emailController,
                 autovalidateMode: AutovalidateMode.onUserInteraction,
                 
                 
                 decoration: InputDecoration(
                 
                 labelText:"Email" ,
             
                 ),
                 )),
        
        //2nd form
         SizedBox(height: 10,),
         Form(child: TextFormField(
          
       autovalidateMode: AutovalidateMode.onUserInteraction,
          controller:passwordController,
         obscureText: _obscureText,
          maxLength: 16,
               
               decoration: InputDecoration(
        suffixIcon: IconButton(onPressed: (){
          setState(() {
            _obscureText = !_obscureText;
          });
        }, icon:Icon(_obscureText ? Icons.visibility_off : Icons.visibility) ),

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
           
           onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, MainNavScreen.routeName,(predicate) =>false);
           }, child: Icon(Icons.arrow_right_alt_rounded)),
       ),
      
       SizedBox(height: 10,),
       TextButton(onPressed: (){Navigator.pushNamed(context, ForgotPasswordEmailScreen.routeName);}, child: Text("Forget Password ? ",style: TextStyle(color: Colors.grey),)),
      
      RichText(text: TextSpan(
      text: "Don't have an account? ",
      style: TextStyle(
        color: Colors.black
      ),
      children: [
      TextSpan(
        text: "SignUp",
        style: TextStyle(fontWeight: FontWeight.w900,color: Colors.green),
        recognizer: TapGestureRecognizer()..onTap=(){
          Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
        }
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