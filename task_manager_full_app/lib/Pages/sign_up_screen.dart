import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_full_app/Pages/sign_in_screen.dart';
import 'package:task_manager_full_app/widgets/backgrounddesigning.dart';
import 'package:task_manager_full_app/widgets/form_widget.dart';

class SignUpScreen extends StatefulWidget{
  static const String routeName = "/SignUpPage";
  @override
  State<SignUpScreen> createState()=> _SignUpScreenState();
}



class _SignUpScreenState extends State<SignUpScreen>{
     TextEditingController _emailController = TextEditingController();
          TextEditingController _passwordController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();   
  TextEditingController _lastNameController = TextEditingController();   
  TextEditingController _mobileNumberController = TextEditingController();  

 
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
            Text("Join with us!" ),
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
       
       
                 TextFormField(
                    controller: _firstNameController,
            textInputAction: TextInputAction.next,
         autovalidateMode: AutovalidateMode.onUserInteraction,
            // controller:passwordController,
            obscureText:true,
           
                 validator: (String? value){
                    if(value?.trim().isEmpty ?? true)
                    {
                         return "Text field can't be empty";
                    }
                    return null;
                 },
                 decoration: InputDecoration(
         
                 labelText:"First Name" ,
                 
                  
                 ),
                 ),
       
            SizedBox(height: 10,),
       
       
                 TextFormField(
                    controller: _lastNameController,
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
       
                 labelText:"Last Name" ,
                  
                 ),
                 ),
       
            SizedBox(height: 10,),
       
       
                 TextFormField(
                    controller: _mobileNumberController,
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
          
         keyboardType: TextInputType.phone,
                 
                 decoration: InputDecoration(
         
                 labelText:"Mobile" ,
                  
                 ),
                 ),
       
            SizedBox(height: 10,),
       
       
       
       
                 TextFormField(
                    controller: _passwordController,
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
            obscureText:true,
            maxLength: 16,
                 
                 decoration: InputDecoration(
         
                 hintText:"Password" ,
                  
                 ),
                 ),
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
       _emailController.dispose(); 
          _passwordController.dispose();  
  _firstNameController.dispose();  
 _lastNameController.dispose();   
  _mobileNumberController.dispose();  
  super.dispose();
  }
}