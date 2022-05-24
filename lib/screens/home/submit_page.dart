
import 'package:flutter/material.dart';
import 'package:test_sample/responsive/responsive_ui.dart';
import 'package:test_sample/screens/desktop/desktopview.dart';
import 'package:test_sample/screens/mobile/mobileview.dart';


class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                style: ButtonStyle(elevation:MaterialStateProperty.all(0)),
                onPressed: (){
                layoutResponse();
                }, 
                child:const Text('Submit'),
                );
  }
  ResponsiveUi layoutResponse() {
    return const ResponsiveUi(
        mobile: MobileView(), 
        desktop:DesktopView(),
        );
}
}