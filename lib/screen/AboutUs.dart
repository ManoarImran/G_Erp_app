import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(
        // elevation: 0,
        // backgroundColor: Colors.red,
        // backgroundColor: Colors.transparent,
        title: const Text('About Us'),
      ),
      body: AboutUsPageBody(),
    );
  }
}

class AboutUsPageBody extends StatelessWidget {
  const AboutUsPageBody({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children:
          <Widget>[
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [
                  Expanded(child: Center(child: Image.asset('assets/Logo.jpg'))),
                  // Image.network('https://seeklogo.com/images/A/akij-group-logo-A3CB0BF8D8-seeklogo.com.png'),
                  const SizedBox(height: 40, width: 40),
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        // padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Context',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [
                  Expanded(child: Center(child: Image.asset('assets/Logo.jpg'))),
                  // Image.network('https://seeklogo.com/images/A/akij-group-logo-A3CB0BF8D8-seeklogo.com.png'),
                  const SizedBox(height: 40, width: 40),
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        // padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Context',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [
                  Expanded(child: Center(child: Image.asset('assets/Logo.jpg'))),
                  // Image.network('https://seeklogo.com/images/A/akij-group-logo-A3CB0BF8D8-seeklogo.com.png'),
                  const SizedBox(height: 40, width: 40),
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        // padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Context',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [
                  Expanded(child: Center(child: Image.asset('assets/Logo.jpg'))),
                  // Image.network('https://seeklogo.com/images/A/akij-group-logo-A3CB0BF8D8-seeklogo.com.png'),
                  const SizedBox(height: 40, width: 40),
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        // padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Context',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [
                  Expanded(child: Center(child: Image.asset('assets/Logo.jpg'))),
                  // Image.network('https://seeklogo.com/images/A/akij-group-logo-A3CB0BF8D8-seeklogo.com.png'),
                  const SizedBox(height: 40, width: 40),
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        // padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Context',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [
                  Expanded(child: Center(child: Image.asset('assets/Logo.jpg'))),
                  // Image.network('https://seeklogo.com/images/A/akij-group-logo-A3CB0BF8D8-seeklogo.com.png'),
                  const SizedBox(height: 40, width: 40),
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        // padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Context',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Developed By - It Team',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 10),
                )),
          ],
        ));
  }
}
