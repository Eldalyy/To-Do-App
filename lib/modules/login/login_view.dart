import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/route_names.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool secured = false;
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                  "Login",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Text(
                  "Welcome Back!",
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
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
              InkWell(
                child: Text(
                  "Forget Password",
                  style: theme.textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
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
                     Navigator.pushReplacementNamed(context, RouteNames.layout);

                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Login",
                            style: theme.textTheme.bodyMedium,
                          ),
                          Icon(Icons.arrow_forward),
                        ])),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context,RouteNames.registration);
                },
                child: Text(
                  "Or Create My Account",
                  style: theme.textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
