import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_full_app/Pages/pin_varification_screen.dart';
import 'package:task_manager_full_app/Pages/sign_in_screen.dart';
import 'package:task_manager_full_app/widgets/backgrounddesigning.dart';
import 'package:task_manager_full_app/widgets/form_widget.dart';

class ForgotPasswordEmailScreen extends StatefulWidget{
  static const String routeName = "/ForgotPasswordEmail";
  @override
  State<ForgotPasswordEmailScreen> createState()=>_ForgotPasswordEmailScreenState();
}



class _ForgotPasswordEmailScreenState extends State<ForgotPasswordEmailScreen>{
     TextEditingController _emailController = TextEditingController();
          

 
  @override
  Widget build(BuildContext context) {
  return Scaffold(
     body: Center(
       child: Container(
          padding: EdgeInsets.only(left:40,right:30),
          height: double.maxFinite,
        child: Backgrounddesigning(childWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your Email Address",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 30,fontWeight: FontWeight.w800),),
            Text("A 6 digit varification pin will send to your email address",style: TextStyle(color: Color.fromARGB(255, 141, 141, 141)),),
            SizedBox(height: 20,),
       
            TextFormField(
               controller: _emailController,
               textInputAction: TextInputAction.next,
           validator: (String? value){
                    if(value?.trim().isEmpty ?? true)
                    {
                         return "Text field can't be empty";
                    }
                    return null;
                 },
         autovalidateMode: AutovalidateMode.onUserInteraction,
            // controller:passwordController,
          
                 
                 decoration: InputDecoration(
         
                 labelText:"Email" ,
                  
                 ),
                 ),
       
       
            SizedBox(height: 10,),
       
       
                
       
       
       
       
       
                 
                   SizedBox(
        width: double.infinity,
         child: ElevatedButton(
           style: ElevatedButton.styleFrom(
         backgroundColor: Colors.green,
         foregroundColor: Colors.white,
         shape: BeveledRectangleBorder()
           ),
           
           onPressed: (){
            Navigator.pushNamed(context, PinVarificationScreen.routeName);
           }, child: Icon(Icons.arrow_right_alt_rounded,)),
       ),

       SizedBox(height: 20,),

         RichText(text: TextSpan(
      text: "Already Have an account? ",
      style: TextStyle(
        color: Colors.black
      ),
      children: [
      TextSpan(
        text: "SignIn",
        style: TextStyle(fontWeight: FontWeight.w900,color: Colors.green),
        recognizer: TapGestureRecognizer()..onTap=(){
          Navigator.pushReplacementNamed(context, SignInScreen.routeName);
        }
      )
      ],
      ),
      
      
      
      )
       
          ],
        )),
       ),
     )
     
     
  ,
  );
  }

  @override 
  void dispose()
  {
       _emailController.dispose(); 
       
  super.dispose();
  }
}