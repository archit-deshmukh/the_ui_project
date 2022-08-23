import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:theuiproject/Screens/app_dashboard.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}
class _SignupScreenState extends State<SignupScreen> {

  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
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
              SizedBox(height: 20,),
              //First Two Lines
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sign Up', style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),),
                      SizedBox(height: 20,),
                      Text('Please enter the following details to continue using the app', style: TextStyle(fontSize: 16,letterSpacing: 1, fontWeight: FontWeight.bold ),),
                    ]
                ),
              ),
              SizedBox(height: 10,),
              //TextFields
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    //Image Upload Tab
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 55,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/004/607/806/small/man-face-emotive-icon-smiling-bearded-male-character-in-yellow-flat-illustration-isolated-on-white-happy-human-psychological-portrait-positive-emotions-user-avatar-for-app-web-design-vector.jpg'),
                        radius: 50,
                      ),
                    ),
                    SizedBox(height: 10),
                    //Full Name Tab
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
                                    color: Colors.red,
                                    width: 2,
                                  )
                                ),
                                hintText: "Enter Full Name",
                                hintStyle: TextStyle(color: Colors.black),
                                suffixIcon: Icon(Icons.person),

                              ),
                            ),
                    SizedBox(height: 10,),
                    //DOB Tab
                    TextField(
                          controller: dateInput,
                          readOnly: true,
                          textInputAction: TextInputAction.done,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2100));

                            if(pickedDate != null) {
                              print(pickedDate);

                              String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                              print(formattedDate);

                              setState(() {
                                dateInput.text = formattedDate;

                              });
                            } else{
                              print('Date is not selected');
                            }
                          },
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
                                  color: Colors.red,
                                  width: 2,
                                )
                            ),
                            hintText: "Select the DOB",
                            hintStyle: TextStyle(color: Colors.black),
                            suffixIcon: Icon(Icons.date_range_rounded),
                          ),
                        ),
                    SizedBox(height: 10,),
                    //Email ID Tab
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
                                  color: Colors.red,
                                  width: 2,
                                )
                            ),
                            hintText: "Enter Email ID",
                            hintStyle: TextStyle(color: Colors.black),
                            suffixIcon: Icon(Icons.email_rounded),
                          ),
                        ),
                    SizedBox(height: 10,),
                    //Create Password Tab
                    TextField(
                          obscureText: true,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            iconColor: Colors.black,
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
                                  color: Colors.red,
                                  width: 2,
                                )
                            ),
                            hintText: "Create Password",
                            hintStyle: TextStyle(color: Colors.black),
                            suffixIcon: Icon(Icons.remove_red_eye),

                          ),
                        ),
                  ],
                ),
              ),
                SizedBox(height: 5,),
              //Already Register Button
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextButton(
                  onPressed: (){},
                  child: Text('I have an already registered.', style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 5,),
              //Signup Button
              ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    fixedSize: MaterialStateProperty.all(const Size(330 , 50)),
                    side: MaterialStateProperty.all(const BorderSide(color: Colors.black, width: 3)),
                    backgroundColor: MaterialStateProperty.all(Colors.white)
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AppDashboard()));
                  },
                  child: Text('Sign Up', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, letterSpacing: 2, fontSize: 20),))
            ],
          ),
        ),
      ),
    ));
  }
}
