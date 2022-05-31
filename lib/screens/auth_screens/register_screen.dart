import 'package:flutter/material.dart';
import 'package:shoppablecart/components/components.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var nameController=TextEditingController();
  String email='';
  String password='';
  String name='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(255, 255, 255, 0.97),
      body:  SingleChildScrollView(
        padding:const EdgeInsets.only(
            top: 80,
            left: 17,right: 17
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
                child:const Icon(Icons.arrow_back_ios,
                  size: 18,)),
           const SizedBox(height: 57,),
            Container(
              padding:const EdgeInsets.only(
                left: 16,right: 16,top: 12,bottom: 16
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
              ),height:503,
              width:double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Text("Sign Up",style:
                  TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 30
                  ),),
                const  SizedBox(height: 47,),
                  defultText(data: 'Name'),
                  TextField(
                    onChanged: (val){
                      setState((){
                        name=val;
                      });
                    },
                    controller: nameController,
                    showCursor: false,
                    keyboardType: TextInputType.text,
                    style:const TextStyle(fontWeight:FontWeight.w400,
                        fontSize: 17 ),
                    decoration:const  InputDecoration(

                        hintText: 'Enter your name',
                        hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color:Colors.grey)
                    ),
                  ),
                  const SizedBox(height: 38,),
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

                        hintText: 'Enter your Email',
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
                  const SizedBox(height: 60,),
                  EElevatedButton(
                      radius: 5,
                      text: 'SIGN UP',
                      prColor: '#092547',
                      textColor: Colors.white,
                      onPressed:(email.isNotEmpty&&
                          password.length>6&&name.isNotEmpty)? (){}:null,
                      width: 311,
                      height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
