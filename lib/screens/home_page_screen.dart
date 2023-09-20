import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageScreen extends StatelessWidget {
  static String id = 'home_page_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 44.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Kathmandu,Nepal'),
                Text(
                  'Change Location',
                  style: TextStyle(
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          hintText: 'Search'),
                    ),
                  ),
                ),
                FaIcon(FontAwesomeIcons.sliders, color: Colors.black54),
              ],
            ),
            Text(
              'Popular',
              style: TextStyle(
                fontSize: 20,
                decoration: TextDecoration.underline,
                decorationThickness: 3,
                decorationColor: Color(0xFFFF0000),
              ),
            ),
            Card(
              
                elevation: 5.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mahendra Scorpio',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text('Manual')
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
