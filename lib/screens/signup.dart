import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var email;
  var password;
  var confirm;

  final auth_ = FirebaseAuth.instance;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image:  DecorationImage(
                image: NetworkImage('https://c1.wallpaperflare.com/preview/190/67/674/affection-afterglow-backlit-blur.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 120,),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 40,right: 40,bottom: 20),
                child: TextField(
                    onChanged: (value){
                      setState(() {
                        email = value;
                      });
                    },
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      hintText: 'Enter user name',
                      filled: true,
                      fillColor: Colors.white24,
                      focusedBorder: OutlineInputBorder(),
                    )
                ),
              ),
              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 40,right: 40,bottom: 20),
                child: TextField(
                    onChanged: (value){
                      setState(() {
                        password = value;
                      });
                    },
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      hintText: 'Enter password',
                      filled: true,
                      fillColor: Colors.white24,
                      focusedBorder: OutlineInputBorder(),
                    )
                ),
              ),
              const SizedBox(height:5,),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 40,right: 40,bottom: 20),
                child: TextField(
                    onChanged: (value){
                      setState(() {
                        confirm = value;
                      });
                    },
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      hintText: 'confirm your password',
                      filled: true,
                      fillColor: Colors.white24,
                      focusedBorder: OutlineInputBorder(),
                    )
                ),
              ),

            ElevatedButton(onPressed: (){
// Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
try{
final newUser = auth_.createUserWithEmailAndPassword(email: email, password: password);
if(newUser != null){
Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
}
}
catch (e) {
print(e);
}
}, child: Text('SignUp', style: TextStyle(color: Colors.white54),))
            ],
          ),
        ),
      ),
    );

  }
}


// Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Container(
// width: 200,
// height: 40,
// margin: EdgeInsets.all(10),
// color: Colors.blue.shade300,
// child: TextField(
// onChanged: (value){
// setState(() {
// email = value;
// });
// },
// decoration: InputDecoration(
// labelText: 'Email',
// border: InputBorder.none,
// labelStyle: TextStyle(color: Colors.white),
// ),
// ),
// ),
// Container(
// width: 200,
// height: 40,
// margin: EdgeInsets.all(10),
// color: Colors.blue.shade300,
// child: TextField(
// onChanged: (value){
// setState(() {
// password = value;
// });
// },
// decoration: InputDecoration(
// labelText: 'Password',
// border: InputBorder.none,
// labelStyle: TextStyle(color: Colors.white),
// ),
// obscureText: true,
// ),
// ),
// ElevatedButton(onPressed: (){
// // Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
// try{
// final newUser = auth_.createUserWithEmailAndPassword(email: email, password: password);
// if(newUser != null){
// Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
// }
// }
// catch (e) {
// print(e);
// }
// }, child: Text('SignUp', style: TextStyle(color: Colors.blue),))
//
// ],
//)