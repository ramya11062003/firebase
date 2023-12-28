import 'package:flutter/material.dart';

import '../../user_auth/presentation/pages/login_page.dart';

class splash extends StatefulWidget {
  const splash({super.key, required LoginPage child});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
 Future.delayed(
   Duration(seconds: 3),(){
     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginPage()), (route) => false);
 }
 );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Welcome to flutter firebase',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
    );
  }
}
