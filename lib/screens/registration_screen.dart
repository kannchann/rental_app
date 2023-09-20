import 'package:flutter/material.dart';
import 'package:rent_me/widgets/button.dart';
import 'package:rent_me/widgets/input_text_field.dart';
import 'package:rent_me/screens/verify_email_screen.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});
  static String id = 'registration_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Hero(
              tag: 'registrationImage',
              child: const Image(
                image: AssetImage(
                  'images/registration.jpeg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fill in the',
                      style: TextStyle(
                        height: 3.0,
                      ),
                    ),
                    Text(
                      'INFORMATION!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Color.fromARGB(255, 255, 0, 0),
                        height: 0.5,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    InputTextField(
                      label: 'Name',
                      textInputType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    InputTextField(
                      label: 'Email',
                      textInputType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    const InputTextField(
                      label: 'Password',
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Hero(
                      tag: 'sameButtonToRegister',
                      child: Center(
                        child: Button(
                          onPressed: () {
                            Navigator.pushNamed(context, VerifyEmailScreen.id);
                          },
                          buttonText: 'Next',
                          buttonWidth: 226,
                          buttonHeight: 47,
                        ),
                      ),
                    ),
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}
