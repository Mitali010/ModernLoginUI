import 'package:flutter/material.dart';
import 'package:modern_login_ui/components/button.dart';
import 'package:modern_login_ui/components/squaretile.dart';
import 'package:modern_login_ui/components/textfield.dart';
import 'package:modern_login_ui/services/auth_services.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final  usernamecontroller =  TextEditingController();
  final  passwordcontroller =  TextEditingController();
  void signUserIn(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(child: 
      Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
            const SizedBox(height: 50,),
           const Icon(Icons.lock,
            size: 100,
            ),
           const SizedBox(height: 50,),
            Text("Welcome back you've been missed", style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
        
            ), ),
           const  SizedBox(height: 25,),
           Mytextfield(
            controller: usernamecontroller,
            hinttext: "Username",
            obsecureText: false,
        
           ),
           const SizedBox(height: 10,),
            Mytextfield(controller: passwordcontroller,
            hinttext: "password",
            obsecureText: true,),
             const SizedBox(height: 10,),
             Padding( padding:  const EdgeInsets.symmetric(horizontal: 25.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forget password?", style: TextStyle(color: Colors.grey[600]),)
              ],
             )
             ,),
               const SizedBox(height: 10,),
               Button(onTap:signUserIn ),
               const SizedBox(height: 30),
               Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
               child: Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey[400], thickness: 0.5,)),
                  Padding(padding:const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Or Continue with", style: TextStyle(color: Colors.grey[700]),), ),
                   Expanded(child: Divider(color: Colors.grey[400], thickness: 0.5,)),
                ],
               ),
               ),
               const SizedBox(height: 50,),
               Row( mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  SquareTile(
                    onTap: () => AuthService().signInWithGoogle(),
                    imagePath: 'lib/images/google.png'),
                        const  SizedBox(width: 25,),
                  SquareTile(
                    onTap: () {},
                    imagePath: 'lib/images/apple.png')
                ],
               ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?", style: TextStyle(color: Colors.grey[700]),),
                     const SizedBox(width: 4,),
                   const Text("Register now",style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),)                ],
                )
                   
          ]),
        ),
      )
      ),
    );
  }
}