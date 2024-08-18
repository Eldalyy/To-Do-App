import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/route_names.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  @override
  bool secured = false;
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/login_background.png"),
              fit: BoxFit.cover,
            )),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: Text(
                  "Create Account",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Column(

                  children: [
                    TextFormField(
                      validator: (value) {
                        if(value==null || value.trim().isEmpty) {
                          return "Please Enter Your Full Name";
                        }
                        return null;
                      },
                      controller: nameController,
                      cursorColor: theme.primaryColor,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      decoration: InputDecoration(
                        errorStyle: TextStyle( fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        hintText: "Enter Your Name",
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: theme.primaryColor)),
                        label: Text("Full Name", style: theme.textTheme.displaySmall),
                        suffixIcon:  Icon(Icons.person),
                      ),
                      obscureText: secured,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if(value==null || value.trim().isEmpty) {
                          return "Please Enter Your Email Address";
                        }
                        var regex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                        if(!regex.hasMatch(value)){
                          return "Invalid Email";
                        }
                        return null;
                      },
                      controller: emailController,
                      cursorColor: theme.primaryColor,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: theme.primaryColor)),
                        hintText: "Enter Your Email Address",
                        label: Text("E-mail", style: theme.textTheme.displaySmall),
                        suffixIcon: Icon(Icons.email)
                        ,errorStyle: TextStyle( fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if(value==null || value.trim().isEmpty) {
                          return "Please Enter Your Password";
                        }
                        return null;
                      },
                      controller: passwordController,
                      cursorColor: theme.primaryColor,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      decoration: InputDecoration(
                        errorStyle: TextStyle( fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        hintText: "Enter Your Password",
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: theme.primaryColor)),
                        label: Text("Password", style: theme.textTheme.displaySmall),
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                secured=!secured;
                              });
                            },
                            child:  Icon(secured? Icons.visibility: Icons.visibility_off_rounded)),
                      ),
                      obscureText: secured,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FilledButton(
                          style: FilledButton.styleFrom(
                              backgroundColor: theme.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              )
                          ),
                          onPressed: () {
                            if(formKey.currentState!.validate()){
                              print("It's Validated");
                            }

                          },
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Create",
                                  style: theme.textTheme.bodyMedium,
                                ),
                                Icon(Icons.arrow_forward),
                              ])),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
  }

