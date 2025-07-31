import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_full_app/Pages/sign_in_screen.dart';
import 'package:task_manager_full_app/widgets/backgrounddesigning.dart';
import 'package:task_manager_full_app/widgets/form_widget.dart';

class PasswordChangeScreen extends StatefulWidget{
  static const String routeName = "/passwordChange";
  @override
  State<PasswordChangeScreen> createState()=> _PasswordChangeScreenState();
}



class _PasswordChangeScreenState extends State<PasswordChangeScreen>{
     TextEditingController _passwordChangeController = TextEditingController();
          TextEditingController _confirmPasswordChangeController = TextEditingController();
   


 
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
           Text("Create Password",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 30,fontWeight: FontWeight.w800),),
             Text("Minimum length password 8 character with letter and number combination",style: TextStyle(color: Color.fromARGB(255, 141, 141, 141)),),
            SizedBox(height: 20,),
       
            TextFormField(
               controller: _passwordChangeController,
               textInputAction: TextInputAction.next,
           validator: (String? value){
                    if((value?.length?? 0)<=6)
                    {
                     
                      
                         return "Enter a valid password";
                    }
                    return null;
                 },
         autovalidateMode: AutovalidateMode.onUserInteraction,
            // controller:passwordController,
          
                 
                 decoration: InputDecoration(
         
                 labelText:"Password" ,
                  
                 ),
                 ),
       
       
            SizedBox(height: 10,),
       
       
                 TextFormField(
                    controller: _confirmPasswordChangeController,
            textInputAction: TextInputAction.next,
         autovalidateMode: AutovalidateMode.onUserInteraction,
           
            obscureText:true,
           
                 validator: (String? value){
                    if((value ?? '') != _passwordChangeController.text)
                    {
                         return "Password doesn't match";
                    }
                    return null;
                 },
                 decoration: InputDecoration(
         
                 labelText:"Confirm Password",
                 
                  
                 ),
                 ),
       
            SizedBox(height: 10,),
       
       
           
       
            SizedBox(height: 10,),
       
       
              
       
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
       _passwordChangeController.dispose();
       _confirmPasswordChangeController.dispose(); 
  super.dispose();
  }
}