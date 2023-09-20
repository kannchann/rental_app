import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rent_me/screens/recover_password.dart';
import 'package:rent_me/widgets/input_text_field.dart';
import 'package:rent_me/widgets/button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String id = 'forgot_password_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 24.0),
        child: Column(children: [
          const Image(
            image: AssetImage(
              'images/registration.jpeg',
            ),
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'FORGOT PASSWORD?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    Text(
                      'Don\'t  worry, Enter Email ID associated with the account',
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InputTextField(label: 'Email'),
                    SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: Button(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RecoverPasswordScreen.id);
                        },
                        buttonText: 'Next',
                        buttonWidth: 226,
                        buttonHeight: 47,
                      ),
                    ),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
