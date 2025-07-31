import 'package:flutter/material.dart';
import 'package:task_manager_full_app/Pages/add_task_page.dart';
import 'package:task_manager_full_app/Pages/new_task_widget.dart';
import 'package:task_manager_full_app/widgets/app_bar_widget.dart';

class MainNavScreen extends StatefulWidget{
  static const String routeName = "/main_nav_screen";
  @override
  State< MainNavScreen> createState()=> _MainNavScreenState();
}



class _MainNavScreenState  extends State< MainNavScreen> {
   int _selectedIndex = 0;
    List<Widget> screens = [
      NewTaskWidget()
    ];
@override
  Widget build(BuildContext context) {
    void _onTapFloatingActionButton()
    {
      Navigator.pushNamed(context,AddTaskPage.routeName );
    }
   
  return Scaffold(
    floatingActionButton: FloatingActionButton(child: Icon(Icons.add),  onPressed: (){_onTapFloatingActionButton();}),
    appBar: AppBarWidget(),
    body: screens[_selectedIndex],
    bottomNavigationBar: NavigationBar(
      selectedIndex:_selectedIndex ,
      onDestinationSelected:(int index){
        _selectedIndex =index;
        setState(() {
          
        });
      } ,
      destinations: [
      NavigationDestination(icon: Icon(Icons.new_label_outlined), label: "New"),
       NavigationDestination(icon: Icon(Icons.arrow_circle_right_outlined), label: "Progressed"),
        NavigationDestination(icon: Icon(Icons.done), label: "completed"),
         NavigationDestination(icon:Icon(Icons.cancel), label: "Cancelled"),

    ]),
  );
  }

}