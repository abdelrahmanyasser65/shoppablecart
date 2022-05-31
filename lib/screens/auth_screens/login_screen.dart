import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shoppablecart/components/components.dart';
import 'package:shoppablecart/screens/auth_screens/register_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  String email='';
  String password='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(255, 255, 255, 0.97),
      body: SingleChildScrollView(
        padding:const EdgeInsets.only(
          top: 125,
          left: 15,right: 15,bottom: 48
        ),
        child: Column(
          children: [
            Container(

              height: 427,
              padding:const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                          Text('Welcome,',style:
                          TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                          ),),
                          SizedBox(height: 10,),
                          Text("Log in to Continue",style:
                            TextStyle(
                              fontSize: 14,fontWeight: FontWeight.w300
                            ),)
                        ],
                      ),
                     const Spacer(),
                     InkWell(
                       onTap: (){
                          navigateTo(context, const RegisterScreen());
                       },
                       child: const Text("Sign Up",style:
                        TextStyle(
                            fontWeight: FontWeight.w400,fontSize: 18,color:Colors.black
                        ),),
                     ),
                    ],
                  ),
                  const  SizedBox(height: 48,),
                  defultText(data: 'Email'),
                  TextField(
                    onChanged: (val){
                      setState((){
                        email=val;
                      });
                    },
                    controller: emailController,
                    showCursor: false,
                    keyboardType: TextInputType.emailAddress,
                   style:const TextStyle(fontWeight:FontWeight.w400,
                       fontSize: 17 ),
                   decoration:const  InputDecoration(

                     hintText: 'Enter your email',
                     hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color:Colors.grey)
                   ),
                    ),
                    const SizedBox(height: 38,),
                  defultText(data: 'Password'),
                  TextField(
                    onChanged: (val){
                      setState((){
                        password=val;
                      });
                    },
                    controller: passwordController,
                    showCursor: false,
                    obscureText: true,
                    style:const TextStyle(fontSize: 25,fontWeight: FontWeight.w500,letterSpacing: 2),
                    keyboardType: TextInputType.visiblePassword,
                    decoration:const  InputDecoration(
                        hintText: 'Enter the password',
                        hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color:Colors.grey)
                    ),

                  ),

                 const SizedBox(height: 23,),
                  Row(
                    children: [
                  const   Spacer(),
                      InkWell(
                        onTap: (){},
                        child:const Text("Forgot Password?",style: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.w400
                        ),),
                      )
                    ],
                  ),
                 const SizedBox(height: 23,),
                  EElevatedButton(
                    radius: 5,
                      text: 'LOG IN',
                      prColor: '#092547',
                      textColor: Colors.white,
                      onPressed:(email.isNotEmpty&&password.length>6)? (){}:null,
                      width: 311,
                      height: 50)
                ],
              ),
            ),
            const SizedBox(height: 28,),
            const Center(child: Text("-OR-",style:
              TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),),
            const SizedBox(height: 43,),
            Container(
              height: 50, decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: HexColor('#DDDDDD'),
                  width: 1),
            ),
              child: Row(
                children: [
                 const SizedBox(width: 30,),
                  Image.asset('assets/images/Icon_Facebook.png'),
                 const SizedBox(width:60 ,),
                  const Text("Log in with Facebook",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                  ),)
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: HexColor('#DDDDDD'),
                    width: 1),
              ),
              child: Row(
                children: [
                 const  SizedBox(width: 30,),
                  Image.asset('assets/images/icons8_Google_2.png'),
                  const SizedBox(width:60 ,),
                  const Text("Log in with Google",style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 14
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
