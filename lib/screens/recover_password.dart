import 'package:flutter/material.dart';

import 'package:rent_me/widgets/input_text_field.dart';
import 'package:rent_me/widgets/button.dart';

class RecoverPasswordScreen extends StatelessWidget {
  static String id = 'recover_password_screen';

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
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'RECOVER PASSWORD',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          color: Color.fromARGB(255, 255, 0, 0),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      InputTextField(label: 'New Password'),
                      SizedBox(
                        height: 10.0,
                      ),
                      InputTextField(label: 'Confirm Password'),
                      SizedBox(
                        height: 60,
                      ),
                      Center(
                        child: Button(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          buttonText: 'Next',
                          buttonWidth: 226,
                          buttonHeight: 47,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
