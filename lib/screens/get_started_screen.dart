import 'package:flutter/material.dart';
import 'package:rent_me/screens/login_screen.dart';
import 'package:rent_me/widgets/button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  static String id = 'Get_started screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF1E1E1E),
          image: DecorationImage(
            image: AssetImage('images/startingpage.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          padding:
              const EdgeInsets.symmetric(horizontal: 35.0, vertical: 119.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            RichText(
              text: TextSpan(
                text: 'Car Service',
                style: Theme.of(context).textTheme.displayLarge,
                children: const <TextSpan>[
                  TextSpan(
                      text: ' for you anytime',
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            const Text(
              'Book now,hop on',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Button(
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              buttonText: 'Get Started',
              buttonWidth: 120,
              buttonHeight: 41,
            ),
          ]),
        ),
      ),
    );
  }
}
