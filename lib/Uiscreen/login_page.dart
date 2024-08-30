import 'package:expence_app/Uiscreen/dashBoard_page.dart';
import 'package:expence_app/Uiscreen/signUp_page.dart';
import 'package:expence_app/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Loginscreen extends StatefulWidget {
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Screen",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
      ),
      body: Container(
        color: AppColor.primaryColor,
        child: Column(
          children: [
            Text(
              "Welcome to Expense App \nTrack Your Finances Effortlessly!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            //login page
            SizedBox(
              height: 20,
            ),
            Container(
              color: AppColor.primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ***** EMAILD ID *****//
                  Container(
                    width: 270,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email-Id :",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Please Enter Your Email",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: ButtonColor.primaryColor,
                                      width: 1.5)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black54, width: 1.5),
                                  borderRadius: BorderRadius.circular(10))),
                          controller: emailController,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        // ***** PASSWORD *****//
                        Text(
                          "Password :",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Please Enter Your Password",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: ButtonColor.primaryColor,
                                      width: 1.5)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black54, width: 1.5),
                                  borderRadius: BorderRadius.circular(10))),
                          controller: passwordController,
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        InkWell(
                          onTap: () {
                            if (emailController.text.isEmpty ||
                                passwordController.text.isEmpty) {
                              setState(() {
                                errorMessage =
                                    "Please Enter valid Email or Password";
                              });

                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => Loginscreen(),
                              //     ));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DashboardPage(),
                                  ));
                            }
                          },
                          child: Container(
                            width: 270,
                            height: 35,
                            decoration: BoxDecoration(
                              color: ButtonColor.primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Login in to My Account",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        //error message
                        Text(
                          textAlign: TextAlign.center,
                          errorMessage,
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        //dont have an account
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("You Don't Have an Account "),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignupPage(),
                                    ));
                              },
                              child: Text(
                                " Sign-Up",
                                style:
                                    TextStyle(color: ButtonColor.primaryColor),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  Container(
                      child: Opacity(
                    opacity: 0.7,
                    child: Image.asset(
                      'asset/images/login_screen.PNG',
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "By Continuing , you agree to Expense App \nTerm and Service Policy ",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
