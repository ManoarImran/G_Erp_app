import 'package:flutter/material.dart';

import 'HomePage.dart';

class EmployeeProfilePage extends StatelessWidget {
  const EmployeeProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile'),),
    );
  }
}
