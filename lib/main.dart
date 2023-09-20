import 'package:flutter/material.dart';
import 'package:rent_me/screens/forgot_password_screen.dart';
import 'package:rent_me/screens/get_started_screen.dart';
import 'package:rent_me/screens/home_page_screen.dart';
import 'package:rent_me/screens/login_screen.dart';
import 'package:rent_me/screens/recover_password.dart';
import 'package:rent_me/screens/registration_screen.dart';
import 'package:rent_me/screens/verify_email_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Poppins',
          textTheme: const TextTheme(
            displayLarge: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFF0000)),
            titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(fontSize: 16),
          ),
        ),
        initialRoute: GetStartedScreen.id,
        routes: {
          GetStartedScreen.id: (context) => GetStartedScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          VerifyEmailScreen.id: (context) => VerifyEmailScreen(),
          ForgotPasswordScreen.id: (context) => ForgotPasswordScreen(),
          RecoverPasswordScreen.id: (context) => RecoverPasswordScreen(),
          HomePageScreen.id: (context) => HomePageScreen(),
        });
  }
}
