import 'package:flutter/material.dart';

class AttendanceReportPage extends StatelessWidget {
  const AttendanceReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🗓️ Attendance Report'),),
      body: LoginPageBody(),
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
              child: Row(
                children: [ Center(child: Image.asset("assets/A.jpg")),
                  // Image.network('https://seeklogo.com/images/A/akij-group-logo-A3CB0BF8D8-seeklogo.com.png'),
                  const SizedBox(height: 40,width: 40),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Plastics',
                        style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.w500,
                            fontSize: 15),
                      )),
                ],
              ),
            ),
          ],
        ));
  }
}



