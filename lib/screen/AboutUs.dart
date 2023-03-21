import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(title: const Text('About Us'),),
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
          children: <Widget>[
            SizedBox(height: 10),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'About Us',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [ Image.network('https://seeklogo.com/images/A/akij-group-logo-A3CB0BF8D8-seeklogo.com.png'),
                  const SizedBox(height: 50,width: 50),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Akij Plastics',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [ Image.network('https://seeklogo.com/images/A/akij-group-logo-A3CB0BF8D8-seeklogo.com.png'),
                  const SizedBox(height: 50,width: 50),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Akij Plastics',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [ Image.network('https://seeklogo.com/images/A/akij-group-logo-A3CB0BF8D8-seeklogo.com.png'),
                  const SizedBox(height: 50,width: 50),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Akij Plastics',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [ Image.network('https://seeklogo.com/images/A/akij-group-logo-A3CB0BF8D8-seeklogo.com.png'),
                  const SizedBox(height: 50,width: 50),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Akij Plastics',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [ Image.network('https://seeklogo.com/images/A/akij-group-logo-A3CB0BF8D8-seeklogo.com.png'),
                  const SizedBox(height: 50,width: 50),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Akij Plastics',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [ Image.network('https://seeklogo.com/images/A/akij-group-logo-A3CB0BF8D8-seeklogo.com.png'),
                  const SizedBox(height: 50,width: 50),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Akij Plastics',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )),
                ],
              ),
            ),
            SizedBox(height: 70),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Developed By- Akij Assets It Team',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 10),
                )),

          ],
        ));
  }

}