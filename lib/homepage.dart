import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackthon/WinnerPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CandidateBox(
                name: "elmaksiki",
                photo: AssetImage(".dart_tool/assets/candidate1.jpg"),
              ),
            ),
            CandidateBox(
              name: "elmaksiki",
              photo: AssetImage(".dart_tool/assets/candidate.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}

class CandidateBox extends StatelessWidget {
  final String name;
  final ImageProvider photo;

  const CandidateBox({
    super.key,
    required this.name,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: photo,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Checkbox(
              value: false,
              onChanged: (bool? value) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WinnerPage(
                      name: 'elmaksiki',
                      photoUrl: '.dart_tool/assets/candidate.jpg',
                      votes: 69,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
