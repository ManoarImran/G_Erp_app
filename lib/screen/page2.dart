import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Page2page extends StatefulWidget {
  const Page2page({Key? key}) : super(key: key);

  @override
  State<Page2page> createState() => _Page2pageState();
}

class _Page2pageState extends State<Page2page> {
  late List<GDPData> _chartData;
  late TooltipBehavior _tooltipBehavior;
  late DateTime _selectedDate;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('P2 Leave Balance'),
          ),
          body: Column(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage:
                          NetworkImage(
                            'https://media.istockphoto.com/id/1162121279/vector/brown-haired-caucasian-man-in-suit-and-tie-abstract-male-avatar-vector-illustration.jpg?s=612x612&w=0&k=20&c=iKZCExsMPlczN6nEX6IAaHBcg-FgdxIxUZPfTbPDrHU=',
                          ),
                        ),
                        SizedBox(height: 10,width: 20,),
                        Column(
                          children: [
                            Text(
                              'Md. .........',
                              style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              'Software Engineer',
                              style: TextStyle(
                                fontSize: 11,
                                // fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),

                    // SizedBox(height: 10),
                    // Text(
                    //   'mono******@.com',
                    //   style: TextStyle(
                    //     fontSize: 11,
                    //     // fontWeight: FontWeight.w500,
                    //   ),
                    // ),
                    // SizedBox(height: 10),
                    // Text(
                    //   'Tejgaon Gulshan Link Road',
                    //   style: TextStyle(
                    //     fontSize: 11,
                    //     fontWeight: FontWeight.w500,
                    //   ),
                    // ),
                  ],
                ),
              ),
              SfCircularChart(
                title: ChartTitle(text: 'Total Leave Balance Chart'),
                legend:
                Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
                tooltipBehavior: _tooltipBehavior,
                series: <CircularSeries>[
                  // PieSeries<GDPData,String>
                  // RadialBarSeries<GDPData,String>
                  DoughnutSeries<GDPData, String>
                    (
                      dataSource: _chartData,
                      xValueMapper: (GDPData data, _) => data.continent,
                      yValueMapper: (GDPData data, _) => data.gdp,
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                      enableTooltip: true),
                ],
              ),

              Card(
                child: Container(
                  height: 140,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed:()=> _selectDate,
                            child: Text("FromDate"),
                          ),
                          ElevatedButton(
                            onPressed:()=> _selectDate,
                            child: Text("To Date"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            // or Container
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Enter Reason',
                                hintText: 'Enter Your Reason',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            // or Container
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Address',
                                hintText: 'Enter Your Address',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          DropdownButton(
                            value: "A",
                            items: [
                              //add items in the dropdown
                              DropdownMenuItem(child: Text("A"), value: "A"),

                              DropdownMenuItem(
                                child: Text("B"),
                                value: "B",
                              ),

                              DropdownMenuItem(
                                child: Text("C"),
                                value: "C",
                              )
                            ],
                            onChanged: (value) {
                              //get value when changed
                              print("You selected $value");
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            child: const Text('Submit'),
                            onPressed: () {
                              // print(emailController.text);
                              // print(passwordController.text);
                              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HomePage()));
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ));
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Earn Leave', 1),
      GDPData('Casual Leave', 2),
      GDPData('Material Leave', 3),
      GDPData('Medical Leave', 4),
      GDPData('Bereavement Leave', 5),
      GDPData('LWP', 6),
      GDPData('PL', 7),
    ];
    return chartData;
  }
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022, 8),
        lastDate: DateTime(2050));
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }
}


class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}

