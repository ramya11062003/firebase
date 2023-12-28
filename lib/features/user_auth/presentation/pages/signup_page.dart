import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasenew/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:firebasenew/features/user_auth/user_auth_implementation/firebase_auth%20services.dart';
import 'package:firebasenew/login.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
import 'login_page.dart';

class signupPage extends StatefulWidget {
  const signupPage({super.key});

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  Null g= null;

  int? a;

  final FirebaseAuthservices _auth =FirebaseAuthservices();

  TextEditingController _usernameController=TextEditingController();
  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text('Signup'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Signup',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              FormContainerWidget(
                controller: _usernameController,
                hintText: 'username',
                isPasswordField:false,
              ),
              SizedBox(height: 30,),
              FormContainerWidget(
                controller: _emailController,
                hintText: 'email',
                isPasswordField:false,
              ),
              SizedBox(height: 30,),
              FormContainerWidget(
                controller: _passwordController,
                hintText: 'password',
                isPasswordField:true,
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: _signup,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text('Signup',style: TextStyle(
                        fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                            (route) => false,
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
  void _signup() async {
    String username=_usernameController.text;
    String email=_emailController.text;
    String password=_passwordController.text;

    User? user= await _auth.signUpWithEmailAndPassword(email, password);
    if(user !=null){
      print('user is successfully created');
      Navigator.pushNamed(context, "/home");
    }else
      {
        print('some error happend');
      }

  }
}


a()
{
  return ElevatedButton(onPressed: (){}, child: Text(""));
}


class asd extends StatelessWidget {
  const asd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          a()
        ],
      ),
    );
  }
}
