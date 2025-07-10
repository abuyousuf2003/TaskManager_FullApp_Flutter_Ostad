import 'package:flutter/material.dart';
import 'package:task_manager_full_app/utils/image_path.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Backgrounddesigning extends StatelessWidget{
 final  Widget childWidget;
 const  Backgrounddesigning({required this.childWidget});
  @override
  Widget build(BuildContext context) {
   return Stack(
  children: [
    Positioned.fill(child: SvgPicture.asset(ImagePath.backgroundSvg,fit: BoxFit.cover,)),
    Column(
      children: [
      Expanded(child: childWidget),
      ],
    )

  ],
   );
  }
}