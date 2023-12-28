import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
backgroundColor: Colors.deepOrange,
        title: Text('Login page'),
      ),
      body: Form(
        key: _formKey1,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.lightBlue,
                ),
                hintText: 'Email id',

              ),
              validator: (value){
                if(value==null|| !RegExp
                  (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                  return "Enter Correct Email Address";
                }else{
                  return null;
                }
              },

            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.lightBlue,
                ),
                hintText: 'Password ',

              ),
              validator: (value){
                if(value==null|| value.length<10){
                  return "Enter correct password";
                }else{
                  return null;
                }
              },

            ),
            ElevatedButton(onPressed: (){

              if(_formKey1.currentState!.validate())
              {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("valid ok")));
              }

            }, child: Text('Register')),
          ],
        ),
      ),
    );
  }
}
