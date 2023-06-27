import 'package:flutter/material.dart';

class UiDesign extends StatelessWidget {
  const UiDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text('Ui Design'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: UiBody(),
    );
  }
}

class UiBody extends StatelessWidget {
  UiBody({Key? key}) : super(key: key);
  var arrNames = [
    'Application 01',
    'Application 02',
    'Application 03',
    'Application 04',
    'Application 05',
    'Application 06',
    'Application 07',
    'Application 08',
    'Application 09',
    'Application 10',
    'Application 11',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // SizedBox(
        //   height: 10,
        // ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(35.0),
                          ),
                        ),
                        height: 240,
                        width: 240,
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.amberAccent,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(35.0),
                                    topRight: Radius.circular(35.0)),
                              ),
                              // color: Colors.amberAccent,
                              height: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text("Mark Jackson",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18)),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(".... 8969",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14)),
                                    ],
                                  ),
                                  Column(
                                    children: const [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Icon(
                                        Icons.account_box,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("10/25",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(35.0),
                                        bottomLeft: Radius.circular(35.0)),
                                  ),
                                  // color: Colors.amberAccent,
                                  height: 140,
                                  width: 240,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Mark Jackson",
                                            style: TextStyle(
                                                color: Colors.black26,
                                                fontSize: 14)),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("\$54,575",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 30)),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Total Week Profit +15,32%",
                                            style: TextStyle(
                                                color: Colors.lightGreen,
                                                fontSize: 14)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            height: 70,
                            width: 70,
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            height: 70,
                            width: 70,
                            child: const Icon(
                              Icons.add_card,
                              color: Colors.lime,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.lightGreenAccent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            height: 70,
                            width: 70,
                            child: const Icon(
                              Icons.add_card,
                              color: Colors.lightGreen,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        decoration: const BoxDecoration(
                          // color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        height: 70,
                        width: 70,
                        child: Column(
                          children: const [
                            Icon(
                              Icons.trending_down_sharp,
                              color: Colors.red,
                            ),
                            Text("Spent",
                                style: TextStyle(color: Colors.white)),
                            Text("\$122,4544",
                                style: TextStyle(color: Colors.white)),
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Container(
                        decoration: const BoxDecoration(
                          // color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        height: 70,
                        width: 70,
                        child: Column(
                          children: const [
                            Icon(
                              Icons.trending_up_sharp,
                              color: Colors.green,
                            ),
                            Text("Earned",
                                style: TextStyle(color: Colors.white)),
                            Text("\$160.321",
                                style: TextStyle(color: Colors.white)),
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Container(
                        decoration: const BoxDecoration(
                          // color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        height: 70,
                        width: 70,
                        child: Column(
                          children: const [
                            Icon(
                              Icons.percent,
                              color: Colors.blue,
                            ),
                            Text("CashBack",
                                style: TextStyle(color: Colors.white)),
                            Text("\$2,354",
                                style: TextStyle(color: Colors.white)),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0)),
            ),
            // color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  Container(
                      height: 300,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              arrNames[index],
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            subtitle: const Text(
                              "2023-03-01 to 2023-03-05",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            trailing: const Text(
                              "Approved",
                              style: TextStyle(fontSize: 10),
                            ),
                            dense: true,
                          );
                        },
                        itemCount: arrNames.length,
                        scrollDirection: Axis.vertical,
                        separatorBuilder: (context, index) {
                          return const Divider(
                            height: 20,
                            thickness: 1,
                          );
                        },
                      )
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
