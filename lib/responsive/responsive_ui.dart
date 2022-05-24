import 'package:flutter/material.dart';

class ResponsiveUi extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  const ResponsiveUi({ Key? key, required this.mobile, required this.desktop }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) { 
        if(constraints.maxWidth<650){
          return mobile;
        }
        else{
          return desktop;
        }
       },
      
    );
  }
}