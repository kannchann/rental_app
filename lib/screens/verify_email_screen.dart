import 'package:flutter/material.dart';
import 'package:rent_me/widgets/button.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyEmailScreen extends StatelessWidget {
  static String id = 'verify_email_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 24.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const Image(
            image: AssetImage(
              'images/registration.jpeg',
            ),
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '\nWe\'ve sent you OTP code,',
                  ),
                  Text(
                    'Verify your Email ID',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                  OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 30,
                    style: TextStyle(fontSize: 17),
                    textFieldAlignment: MainAxisAlignment.spaceEvenly,
                    fieldStyle: FieldStyle.underline,
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                  SizedBox(
                    height: 30.0,
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
          )
        ]),
      ),
    );
  }
}
