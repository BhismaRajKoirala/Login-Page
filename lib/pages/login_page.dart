import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/components/my_textfeild.dart';
import 'package:flutter_application_1/components/square_tile.dart';
class Loginpage extends StatelessWidget{
Loginpage({super.key});
  // text editing controller
   final usernameController = TextEditingController();
   final passwordController = TextEditingController();
  
  //signUserin method
  void signUserin() {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                SizedBox( height: 100,),
                //logo
                Icon(Icons.lock,
                size: 100,
                ),
            
              SizedBox(height:50),
            
                //Welcome back, you've been missed
              Text(
                "Welcome back you\'ve been missed!",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 102, 99, 99),
                ),
              ),
            
              SizedBox(height: 25,),
                // username textfeild
               MyTextfeild(
                controller: usernameController,
                hinttext: 'Username',
                obscureText: false,
               ),
            
                SizedBox(height: 15,),
                // password textfeild
               MyTextfeild(
                controller: passwordController,
                hinttext: 'Password',
                obscureText: true,
               ),
            
               SizedBox(height: 10,),
            
               //forgot password?
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text("Forgot Password?",
                     style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade600,
                     ),),
                   ],
                 ),
               ),
            
            SizedBox(height: 25,),
                //sign in button
              Signin(
                onTap: signUserin,
              ),
              
              SizedBox(height: 50,),
            
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text('Or continue with',style: TextStyle(fontSize: 16,color: Colors.grey.shade700),),
                    ),
                    Expanded(child: Divider(thickness: 0.5,color:Colors.grey.shade400))
                  ],
                ),
              ),
                //or continue with
              SizedBox(height: 50,),
            
                //google + apple sign in buttotn
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                  //google button
                  SquareTile(imagePath: "assets/images/apple.png"),
                SizedBox(width: 30,),
                 SquareTile(imagePath: "assets/images/google.png"),
                 //apple buttom
                 
                ],
              ),
              SizedBox(height: 25,),
                //not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member? ",style: TextStyle(
                    color: Colors.grey.shade700
                  ),),
                  SizedBox(width: 4,),
                  Text("Register Now",style: TextStyle(
                    color: Colors.blue.shade400,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}