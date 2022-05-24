import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 0,
          shadowColor: Colors.blue[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        child:const ListTile(
          leading:Text("Employeid") ,
          title: Text("First Name Last Name"),
          subtitle: Text("Email"),
          trailing:Text("Phone"),
        ),
        );
          },
       separatorBuilder: (BuildContext context, int index) {  
         return const SizedBox(height: 10,);
       }, 
      itemCount:10,
        
      ),
    );
  }
}