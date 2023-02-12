import 'package:flutter/material.dart';

class WinnerPage extends StatelessWidget {
  final String name;
  final String photoUrl;
  final int votes;

  const WinnerPage(
      {super.key,
      required this.name,
      required this.photoUrl,
      required this.votes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(photoUrl),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Total votes: $votes',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
