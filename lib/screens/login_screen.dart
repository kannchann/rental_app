import 'package:flutter/material.dart';
import 'package:rent_me/screens/forgot_password_screen.dart';
import 'package:rent_me/screens/home_page_screen.dart';
import 'package:rent_me/screens/registration_screen.dart';
import 'package:rent_me/widgets/button.dart';
import 'package:rent_me/widgets/input_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String id = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const Image(
            image: AssetImage(
              'images/login_image.jpeg',
            ),
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Welcome!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Color.fromARGB(255, 255, 0, 0)),
              ),
              Text('Sign in to continue'),
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
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ForgotPasswordScreen.id);
                  },
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Button(
                  onPressed: () {
                    Navigator.pushNamed(context, HomePageScreen.id);
                  },
                  buttonText: 'Login',
                  buttonWidth: 301,
                  buttonHeight: 44,
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Don\'t have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  child: const Text('Sign up',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0),
                      )),
                ),
              ])
            ]),
          )
        ]),
      ),
    );
  }
}
