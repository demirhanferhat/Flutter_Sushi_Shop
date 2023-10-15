import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushishop/components/button.dart';
import 'package:sushishop/theme/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
            //shop Name
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25),

            //Icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/sushi6.png'),
            ),

            const SizedBox(height: 25),

            //title
            Text(
              "THE TASTE OF JAPANSE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 34,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            //subtitle

            Text(
              "Feel the taste of the most popular Japanse food from anywhere and anytime",
              style: TextStyle(
                color: Colors.grey[300],
                height: 2,
              ),
            ),

            const SizedBox(height: 25),

            //get started button
            MyButton(
              text: "Get Started",
              onTap: () {
                //go to menu page
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
