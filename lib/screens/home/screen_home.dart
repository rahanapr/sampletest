import 'package:flutter/material.dart';
import 'package:test_sample/screens/home/add_details.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child:AddEmployeeDetails(),
      ),
    );
  }
  }