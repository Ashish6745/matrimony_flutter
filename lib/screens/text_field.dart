import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home.dart';


class InputFields extends StatefulWidget {
   InputFields({super.key});

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  var emailAddress;
  var password;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.black26,
      child: Column(
        children: [
          // ----Row Ended here ----------
          // ----UserName starts here -------
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Username',
                  style: GoogleFonts.aladin(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                const SizedBox(width: 5,),
                const Icon(Icons.person,color: Colors.red,)
              ],
            ),
          ),
          // user name textfield ----
           Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: TextField(
                 controller: emailAddress,
                cursorColor: Colors.black26,
                decoration: const InputDecoration(
                  hintText: 'Enter user name',
                  filled: true,
                  fillColor: Colors.black26,
                  focusedBorder: OutlineInputBorder(),
                )
            ),
          ),



          // password text field
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Password',
                  style: GoogleFonts.aladin(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                const SizedBox(width: 5,),
                const Icon(Icons.lock,color: Colors.red,)
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: TextField(
              controller: password,
                obscureText: true,
                maxLength: 6,

                cursorColor: Colors.black26,
                decoration: const InputDecoration(
                  hintText: 'Enter your Password',
                  filled: true,
                  fillColor: Colors.black26,
                  focusedBorder: OutlineInputBorder(),
                )
            ),
          ),


          ElevatedButton(onPressed: (){
            try {
               if(emailAddress == "" || password == ""){
                  FirebaseAuth.instance.signInWithEmailAndPassword(
                     email: emailAddress,
                     password: password,
                 );
               }

            } on FirebaseAuthException catch (e) {
              if (e.code == 'user-not-found') {
                print('No user found for that email.');
              } else if (e.code == 'wrong-password') {
                print('Wrong password provided for that user.');
              }
            }
          }, child: Text('Login'))

        ],
      ),
    );
  }
}
