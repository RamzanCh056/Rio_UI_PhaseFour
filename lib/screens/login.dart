import 'package:flutter/material.dart';
import 'package:rio_ui_screens/screens/reset_password.dart';
import 'package:rio_ui_screens/screens/signup.dart';
import 'package:rio_ui_screens/widgets/login_form.dart';
import 'package:rio_ui_screens/widgets/primary_button.dart';

import '../theme.dart';
class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Container(

                height: 140,
                width: 130,
                //height: MediaQuery.of(context).size.height/4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/Rio Logo.png")

                    )
                ),
              ),

              Text(
                'Welcome Back!' ,
                style: titleText,
              ),
              SizedBox(
                height: 5,
              ),
              Row(

                children: [
                  Text(
                    'Login to your Rio Account to get started ',
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 5,
                  ),

                ],
              ),
              SizedBox(
                height: 10,
              ),
              LogInForm(),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResetPasswordScreen()));
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 17,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  ),
                ),
              ),

              SizedBox(

                height: 200,
              ),
              PrimaryButton(
                buttonText: 'Log In',
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account? ',
                    style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold, fontSize: 16,),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },

                    child: Text(
                      ' Sign Up',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ],
              ),



              SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
