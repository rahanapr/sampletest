import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:test_sample/provider/provider_test.dart';
import 'package:test_sample/screens/home/screen_home.dart';
import 'package:test_sample/screens/home/submit_page.dart';

class AddEmployeeDetails extends StatefulWidget {
  const AddEmployeeDetails({ Key? key }) : super(key: key);

  @override
  State<AddEmployeeDetails> createState() => _AddEmployeeDetailsState();
}

class _AddEmployeeDetailsState extends State<AddEmployeeDetails> {
  final TextEditingController firstn = TextEditingController();
  final TextEditingController lastn = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController employeeid = TextEditingController();
    void _register(String email,String password,BuildContext context) async{
      SampleProvider _providerState = Provider.of<SampleProvider>(context,listen: false);
      try{
        if(await _providerState.register(email,password,)){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        }
      }catch(e)
      {
        print(e);
      }

    }
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body:SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Register',
            style: TextStyle(fontSize:30, fontWeight: FontWeight.bold,color: Colors.teal[900]),
            ),
            const SizedBox(height:30),
            TextFormField(
              controller:employeeid,
              decoration:const InputDecoration(border: OutlineInputBorder(),label: Text("Employee ID"),
               ),

              ),
            const SizedBox(height:10),
            TextFormField(
              controller: firstn,
              decoration:const InputDecoration(border: OutlineInputBorder(),label: Text("First Name"),
               ),
              ),
            const SizedBox(height:10),
            TextFormField(
              controller:lastn,
              decoration:const InputDecoration(border: OutlineInputBorder(),label: Text("Last Name"),
               ),
              ),
            const SizedBox(height:10),
            TextFormField(
              controller: email,
              decoration:const InputDecoration(border: OutlineInputBorder(),label: Text("E-mail"),
               ),
              ),
            const SizedBox(height:10),
            TextFormField(
              controller: phone,
              decoration:const InputDecoration(border: OutlineInputBorder(),label: Text("Phone"),
               ),
              ),
              const SizedBox(height:10),
            TextFormField(
              controller: password,
              decoration:const InputDecoration(border: OutlineInputBorder(),label: Text("Password"),
               ),
              ),
            const SizedBox(height:20),
           const SizedBox(
              width: double.maxFinite,
              child: SubmitButton(),
            ),
            const SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                SizedBox(width:_width/2-40,child:const Divider(),),
                const Text('Or', style: TextStyle(color: Colors.grey),),
                SizedBox(width:_width/2-40,child:const Divider(),),
              ],
            ),
            const SizedBox(height:10),
            ElevatedButton(
              style:ButtonStyle(elevation:MaterialStateProperty.all(0), 
              backgroundColor:MaterialStateProperty.all(const Color(0xFFE4E7EA))),
                onPressed: (){}, 
                child:Padding(padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SvgPicture.asset("image/Google__G__Logo.svg", width:30,),
                    const SizedBox(height:10,),
                    const Text('Sign in With Google', style: TextStyle(color: Colors.black),),
                  ],
                ),
                ),
                ),
              ],
            ),
          ),
        )
      ) ,
    );
  }
}