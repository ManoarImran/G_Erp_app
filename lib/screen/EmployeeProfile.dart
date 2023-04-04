import 'package:flutter/material.dart';
import 'HomePage.dart';

class EmployeeProfilePage extends StatelessWidget {
  const EmployeeProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile'),),
      body: EmployeeProfileBody(),
    );
  }
}

class EmployeeProfileBody extends StatelessWidget {
  const EmployeeProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                    NetworkImage(
                      'https://media.istockphoto.com/id/1162121279/vector/brown-haired-caucasian-man-in-suit-and-tie-abstract-male-avatar-vector-illustration.jpg?s=612x612&w=0&k=20&c=iKZCExsMPlczN6nEX6IAaHBcg-FgdxIxUZPfTbPDrHU=',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Md. ..............',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Software Engineer',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'abc******@.com',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'AAA BBB CCC, Road',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
