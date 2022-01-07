import 'package:flutter/material.dart';
import 'package:rio_ui_screens/screens/login.dart';
import 'package:rio_ui_screens/theme.dart';
import 'package:rio_ui_screens/widgets/primary_button.dart';
import 'package:rio_ui_screens/widgets/reset_form.dart';


class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: kDefaultPadding,
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
                'Reset Password',
                style: titleText,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Please enter your email address',
                style: subTitle.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              ResetForm(),
              SizedBox(
                height: 100,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogInScreen(),
                        ));
                  },
                  child: PrimaryButton(buttonText: 'Reset Password')),
            ],
          ),
        ),
      ),
    );
  }
}
