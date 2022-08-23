import 'package:flutter/material.dart';
import 'package:theuiproject/Screens/signup_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.greenAccent.shade100, Colors.green])
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 25,),
                    //First Two Lines
                    Container(
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Login', style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                          letterSpacing: 2),),
                            SizedBox(height: 20,),
                            Text('Please login to continue using the app', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ]
                      ),
                    ),
                    SizedBox(height: 20,),
                    //Third Line
                    Text('Enter via Social Network', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    //Horizontol Icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_circle_outlined, size: 50),
                        SizedBox(width: 20,),
                        Icon(Icons.add_circle_outlined, size: 50,)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text('or', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text('login via email', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    SizedBox(height: 25,),
                    //Email Tab
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          TextField(
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      )
                                  ),
                                  hintText: "Enter Email ID",
                                  hintStyle: TextStyle(color: Colors.black),
                                  suffixIcon: Icon(Icons.email_rounded),
                                ),
                              ),
                          SizedBox(height: 15,),
                          //Password Tab
                          TextField(
                                textInputAction: TextInputAction.next,
                                obscureText: true,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      )
                                  ),
                                    hintText: "Enter Password",
                                    hintStyle: TextStyle(color: Colors.black),
                                    suffixIcon: Icon(Icons.remove_red_eye),
                                ),
                              ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    //Forgot Password Tab
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextButton(
                        onPressed: (){},
                        child: Text('Forgot Password?', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    SizedBox(height: 10,),
                    //Login Button
                  ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                          fixedSize: MaterialStateProperty.all(const Size(330, 50)),
                          side: MaterialStateProperty.all(const BorderSide(color: Colors.black, width: 3)),
                          backgroundColor: MaterialStateProperty.all(Colors.white)
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen()));
                      },
                      child: Text('Login', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20),))
                        ],
                      ),
              ),
                  ),
        ),
    );
  }
}
