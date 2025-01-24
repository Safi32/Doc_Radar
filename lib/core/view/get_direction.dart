import 'package:flutter/material.dart';

class GetDirectionScreen extends StatelessWidget {
  const GetDirectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // Use Stack to overlay widgets on the image
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/map1.png"),
                  fit: BoxFit.cover, // Important: Cover the entire area
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ), // Added color for visibility
                  const Spacer(),
                  const Text(
                    "Get Direction",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      color: Colors.black, // Added color for visibility
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
