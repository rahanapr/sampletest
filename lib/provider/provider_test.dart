
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SampleProvider extends ChangeNotifier{

 late String _email;
 late String _paswd;

  
  String get getEmail => _email;
  String get getPassword =>_paswd;
 
  FirebaseAuth _auth = FirebaseAuth.instance;
  Future<bool> register(String email,String password  ) async{
    bool retval = false;
    try{
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      if(userCredential.user != null)
        {
          
          _email = userCredential.user.email;
          _paswd = userCredential.user.email;
          return retval = true;
        }
    }catch(e)
    {
      print(e);
    }
      return retval;
}
}