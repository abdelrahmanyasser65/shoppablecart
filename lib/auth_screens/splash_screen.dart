import 'package:flutter/material.dart';
import 'package:shoppablecart/auth_screens/login_screen.dart';
import 'package:shoppablecart/components/components.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
 void initState(){
   Future.delayed(const Duration(seconds: 5),(){
   navigateTo(context, const LoginScreen());
   });
   super.initState();
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset('assets/images/Content.png',fit: BoxFit.cover,),
      ),
    );
  }
}
