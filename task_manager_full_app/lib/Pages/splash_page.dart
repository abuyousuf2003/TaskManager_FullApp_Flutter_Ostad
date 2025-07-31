import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager_full_app/Pages/sign_in_screen.dart';
import 'package:task_manager_full_app/utils/image_path.dart';
import 'package:task_manager_full_app/widgets/backgrounddesigning.dart';

class SplashPage extends StatefulWidget{
  static const String routeName = "/";
  @override
  State<SplashPage> createState()=> _stateSplashPage();
}
class _stateSplashPage extends  State<SplashPage> 
{



 @override
  void initState() {
    super.initState();
    moveToNextScreen();
  }
 Future<void> moveToNextScreen()async
 {
       await Future.delayed(Duration(seconds: 1),(){
Navigator.pushReplacementNamed(context, '/signInPage');
       });
 }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Backgrounddesigning(childWidget: Center(
      
      child: 
      SvgPicture.asset(ImagePath.logoSvg)  
     ,)),
   );
  }
}