import 'package:expence_app/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupPage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController againpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp-Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // name
              SizedBox(
                height: 15,
              ),
              Text("Enter Name"),
              SizedBox(
                height: 7,
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Enter Name",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ButtonColor.primaryColor, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                height: 7,
              ),
              //Email
              Text("Enter Email"),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "Enter Email",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ButtonColor.primaryColor, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                height: 7,
              ),
              //Mobile number
              Text("Enter Mobile"),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: mobileController,
                decoration: InputDecoration(
                    hintText: "Enter Mobile Number",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ButtonColor.primaryColor, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                height: 7,
              ),
              //password
              Text("Enter Password"),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "Enter a password",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ButtonColor.primaryColor, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                height: 7,
              ),
              //again password
              Text("Enter Again-Password"),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: againpasswordController,
                decoration: InputDecoration(
                    hintText: "Enter Again Password",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ButtonColor.primaryColor, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: ButtonColor.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: Text(
                    "Sign-Up",
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
