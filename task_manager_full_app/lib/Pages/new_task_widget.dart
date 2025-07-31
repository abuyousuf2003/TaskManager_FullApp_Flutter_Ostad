import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewTaskWidget extends StatefulWidget{ 
State<NewTaskWidget> createState()=> _NewTaskWidgetState();

}
class _NewTaskWidgetState extends State<NewTaskWidget>
{
@override
  Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(8),
    height: 80,
    child: 
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Card(
              shadowColor: Colors.blueGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("09",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text("Cancelled")
              ],
            ),),
          ),
          Expanded(
            child: Card(
               shadowColor: Colors.blueGrey,
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("09",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text("Completed")
              ],
            ),),
          ),
         Expanded(
           child: Card(
             shadowColor: Colors.blueGrey,
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("09",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text("Progress")
              ],
            ),),
         ),
        Expanded(
          child: Card(
             shadowColor: Colors.blueGrey,
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text("09",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text("NewTask")
              ],
            ),),
        )
      
        ],
      ),
    );
 
  }
}