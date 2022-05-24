import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_sample/provider/provider_test.dart';
import 'package:test_sample/screens/home/screen_home.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseFirestore.instance;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
       providers: [
       ChangeNotifierProvider(create:(context)=>SampleProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SampleUi',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
