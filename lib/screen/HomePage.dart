import 'package:flutter/material.dart';
import 'AboutUs.dart';
import 'AttendanceReport.dart';
import 'Page2.dart';
import 'ChatBox.dart';
import 'EmployeeProfile.dart';
import 'LeaveApplication.dart';
import 'MovementApplication.dart';
import 'SalaryStatement.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Home Page')),),

      body: const LoginPageBody(),
    );
  }
}


class LoginPageBody extends StatefulWidget {
  const LoginPageBody({Key? key}) : super(key: key);

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Employee Profile'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EmployeeProfilePage()));
                  },
                )),
            SizedBox(height: 10),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Page2'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page2()));
                  },
                )),
            SizedBox(height: 10),
            Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 50,
                child: ElevatedButton(
                  child: const Text('Attendance Report'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AttendanceReportPage()));
                  },
                )),
            SizedBox(height: 10),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Salary Statement'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SalaryStatementPage()));
                  },
                )),
            SizedBox(height: 10),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Leave Application'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LeaveApplicationPage()));
                  },
                )),
            SizedBox(height: 10),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Movement Application'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MovementApplicationPage()));
                  },
                )),
            SizedBox(height: 10),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('ChatBox'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatBoxPage()));
                  },
                )),
            SizedBox(height: 10),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('About Us'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutUsPage()));
                  },
                )),
          ],
        ));
  }
}