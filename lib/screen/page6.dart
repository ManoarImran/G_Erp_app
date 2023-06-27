import 'package:flutter/material.dart';

class Page6 extends StatefulWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: const Text('Page6'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Page6Body(),
    );
  }
}


class Page6Body extends StatefulWidget {
  const Page6Body({Key? key}) : super(key: key);

  @override
  State<Page6Body> createState() => _Page6BodyState();
}

class _Page6BodyState extends State<Page6Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container( height: 450,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35.0),
                bottomRight: Radius.circular(35.0)),
          ),
          // color: Colors.white,
          child: Column(
            children: [
              Container(
                  // height: 500,
                   ),
            ],
          ),
        ),
        Expanded(
          child: Container(



          ),
        ),
      ],

    );
  }
}
