import 'package:flutter/material.dart';
import 'package:task_manager_full_app/Pages/sign_in_screen.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget{
   @override
 Size get preferredSize=>Size.fromHeight(kToolbarHeight);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
  return 
  AppBar(
      backgroundColor: Colors.green,
      title: Row(
        children: [
          CircleAvatar(),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name",style: TextStyle(fontSize: 20,color: Colors.white),),
                Text("email@gmail.com",style: TextStyle(fontSize: 15,color: Colors.white),),
              ],
            ),
          ),
          IconButton(
            
            onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, SignInScreen.routeName, (predicate)=> false);
            }, icon: Icon(Icons.logout))
        ],
      ),
    );
  
  }


}