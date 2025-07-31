import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_full_app/Pages/password_change_screen.dart';
import 'package:task_manager_full_app/Pages/sign_in_screen.dart';
import 'package:task_manager_full_app/widgets/backgrounddesigning.dart';
import 'package:task_manager_full_app/widgets/form_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinVarificationScreen extends StatefulWidget{
  static const String routeName = "/PinVarification";
  @override
  State<PinVarificationScreen> createState()=>_PinVarificationScreenState();
}



class _PinVarificationScreenState extends State<PinVarificationScreen>{
     TextEditingController _pinController = TextEditingController();
          

 
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
            Text("Pin Varification",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 30,fontWeight: FontWeight.w800),),
            Text("A 6 digit varification pin has been sent in your email address",style: TextStyle(color: Color.fromARGB(255, 141, 141, 141)),),
            SizedBox(height: 20,),
       PinCodeTextField(
        keyboardType: TextInputType.phone,
      
  length: 6,
  obscureText: false,
  animationType: AnimationType.fade,
  pinTheme: PinTheme(
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(5),
    fieldHeight: 50,
    fieldWidth: 40,
    activeColor: Colors.white,
    selectedFillColor: Colors.black,
  inactiveColor: const Color.fromARGB(255, 247, 179, 179)
  ),
  animationDuration: Duration(milliseconds: 300),
  backgroundColor: Colors.transparent,
  enableActiveFill: true,
 
  controller: _pinController,
 
appContext: context,
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
            Navigator.pushNamed(context, PasswordChangeScreen.routeName);
           }, child: Text("Verify")),
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
       _pinController.dispose(); 
       
  super.dispose();
  }
}