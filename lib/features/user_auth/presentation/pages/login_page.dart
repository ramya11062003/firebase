import 'package:firebasenew/features/user_auth/presentation/pages/signup_page.dart';
import 'package:firebasenew/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              FormContainerWidget(
                hintText: 'email',
                isPasswordField:false,
              ),
              SizedBox(height: 30,),
              FormContainerWidget(
                hintText: 'password',
                isPasswordField:true,
              ),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
              height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
          child: Center(
            child: Text('login',style: TextStyle(
              fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
            ),),
          ),
              ),
          SizedBox(
            height: 20,
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Don't have an account?"),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => signupPage()),
                    (route) => false,
              );
            },
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),),

            ],
          ),
  ],
        ),
      ),),
    );

  }
}
