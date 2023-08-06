import 'package:flutter/material.dart';
import 'package:garments_erp/screen/page1.dart';
import 'package:garments_erp/screen/page2.dart';
import 'package:garments_erp/screen/page3.dart';
import 'package:garments_erp/screen/LeaveApplication.dart';
import 'package:garments_erp/screen/page5.dart';
import 'package:garments_erp/screen/page6.dart';
import 'AboutUs.dart';
import 'AttendanceReport.dart';
import 'ChatBox.dart';
import 'EmployeeProfile.dart';
import 'MapPage.dart';
import 'MovementApplication.dart';
import 'SalaryStatement.dart';
import 'UiDesign.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text('Home Page')),
      ),
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
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
          'https://wallpaperaccess.com/full/3034393.jpg',
        ),
      )),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EmployeeProfilePage()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white30, // Background color
                      ),
                      child: const Text('Employee Profile'),
                    )),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AttendanceReportPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white30, // Background color
                      ),
                      child: const Text('Attendance Report'),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    height: 50,
                    width: 180,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SalaryStatementPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white30, // Background color
                      ),
                      child: const Text('Salary Statement'),
                    )),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                    height: 50,
                    width: 180,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LeaveApplication()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white30, // Background color
                      ),
                      child: const Text(
                        'Leave Application',
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    height: 50,
                    width: 180,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MovementApplicationPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white30, // Background color
                      ),
                      child: const Text(
                        'Movement Application',
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                    height: 50,
                    width: 180,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChatBoxPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white30, // Background color
                      ),
                      child: const Text(
                        'ChatBox',
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Page1Body()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white30, // Background color
                      ),
                      child: const Text('P1'),
                    )),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                    height: 50,
                    width: 180,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Page2page()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white30, // Background color
                      ),
                      child: const Text(
                        'P2',
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Page3()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white30, // Background color
                      ),
                      child: const Text('P3'),
                    )),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page5()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white30, // Background color
                      ),
                      child: const Text('P5'),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UiDesign()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white30, // Background color
                      ),
                      child: const Text(
                        'UiD',
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AboutUsPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white30, // Background color
                      ),
                      child: const Text(
                        'About Us',
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Page6()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white30, // Background color
                      ),
                      child: const Text(
                        'P6',
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
              Expanded(
                child: Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyGMap()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white30, // Background color
                      ),
                      child: const Text(
                        'GMap',
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
