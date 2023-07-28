import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matrimonials/screens/signup.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email;
  var password;
  final auth_ = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image:  DecorationImage(
                image: NetworkImage('https://cdn.pixabay.com/photo/2014/09/07/16/53/couple-437968_1280.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Text('Matrimony App',
                // style: TextStyle(
                //   fontSize: 40,
                //   fontWeight: FontWeight.bold
                // ),
                style:  GoogleFonts.cabinSketch(
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                  fontSize: 40
                ),
              ),
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


              ElevatedButton(onPressed: (){
// Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
                try{
                  final newUser = auth_.signInWithEmailAndPassword(email: email, password: password);
                  if(newUser != null){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                  }
                }
                catch (e) {
                  print(e);
                }
              }, child: Padding(
                padding: const EdgeInsets.only(left: 80,right: 80),
                child: Text('Login', style: TextStyle(color: Colors.white),),
              )),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignUpPage();
                }));
              }, child: Padding(
                padding: const EdgeInsets.only(left: 70,right: 70),
                child: Text('New User'),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
