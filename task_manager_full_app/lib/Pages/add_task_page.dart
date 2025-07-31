import 'package:flutter/material.dart';
import 'package:task_manager_full_app/widgets/backgrounddesigning.dart';

class AddTaskPage extends StatefulWidget{
   static const String routeName = "/AddTaskPage";
State<AddTaskPage>createState()=> _AddTaskPageState();

}

class _AddTaskPageState extends State<AddTaskPage>
{
  @override
  Widget build(BuildContext context) {
    TextEditingController _subjectController = TextEditingController();
     TextEditingController _descriptionController = TextEditingController();
  return Backgrounddesigning(childWidget: Container(
    height: 400,
    width: 350,
    child: Column(
      children: [
        Text("Add New Task",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        SizedBox(
          height: 80,
          child: TextField(
            controller:_subjectController ,
            decoration: InputDecoration(
              hintText: "Subject",
              hintStyle: TextStyle(color: Colors.grey)
            ),
          ),
        )
      ],
    ),
  ),);
  }
}

