import 'package:flutter/material.dart';


class DesktopView extends StatefulWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Table(
      children:const [
        TableRow(
          children: [
           Text('Employee Id'), 
           Text('First Name'), 
           Text('Last Name'), 
           Text('Phone'), 
           Text('E-Mail'), 
           Text('Password'), 
          ]
        )
      ],
    ),
  ) ;
     
  }
}