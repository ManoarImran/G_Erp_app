import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'LeavePopup.dart';

class LeaveApplication extends StatefulWidget {
  const LeaveApplication({Key? key}) : super(key: key);

  @override
  State<LeaveApplication> createState() => _LeaveApplicationState();
}

class _LeaveApplicationState extends State<LeaveApplication> {
  late List<GDPData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Leave Application'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Card(
              child: Container(
                height: 250,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                  ),
                  children: [
                    SfCircularChart(
                      // title: ChartTitle(text: 'Medical'),
                      // legend:
                      // Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
                      tooltipBehavior: _tooltipBehavior,
                      series: <CircularSeries>[
                        // PieSeries<GDPData,String>
                        // RadialBarSeries<GDPData,String>
                        DoughnutSeries<GDPData, String>(
                            dataSource: _chartData,
                            xValueMapper: (GDPData data, _) => data.continent,
                            yValueMapper: (GDPData data, _) => data.gdp,
                            dataLabelSettings:
                                DataLabelSettings(isVisible: true),
                            enableTooltip: true),
                      ],
                    ),
                    SfCircularChart(
                      // title: ChartTitle(text: 'Medical'),
                      // legend:
                      // Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
                      tooltipBehavior: _tooltipBehavior,
                      series: <CircularSeries>[
                        // PieSeries<GDPData,String>
                        // RadialBarSeries<GDPData,String>
                        DoughnutSeries<GDPData, String>(
                            dataSource: _chartData,
                            xValueMapper: (GDPData data, _) => data.continent,
                            yValueMapper: (GDPData data, _) => data.gdp,
                            dataLabelSettings:
                                DataLabelSettings(isVisible: true),
                            enableTooltip: true),
                      ],
                    ),
                    SfCircularChart(
                      // title: ChartTitle(text: 'Medical'),
                      // legend:
                      // Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
                      tooltipBehavior: _tooltipBehavior,
                      series: <CircularSeries>[
                        // PieSeries<GDPData,String>
                        // RadialBarSeries<GDPData,String>
                        DoughnutSeries<GDPData, String>(
                            dataSource: _chartData,
                            xValueMapper: (GDPData data, _) => data.continent,
                            yValueMapper: (GDPData data, _) => data.gdp,
                            dataLabelSettings:
                                DataLabelSettings(isVisible: true),
                            enableTooltip: true),
                      ],
                    ),
                    SfCircularChart(
                      // title: ChartTitle(text: 'Medical'),
                      // legend:
                      // Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
                      tooltipBehavior: _tooltipBehavior,
                      series: <CircularSeries>[
                        // PieSeries<GDPData,String>
                        // RadialBarSeries<GDPData,String>
                        DoughnutSeries<GDPData, String>(
                            dataSource: _chartData,
                            xValueMapper: (GDPData data, _) => data.continent,
                            yValueMapper: (GDPData data, _) => data.gdp,
                            dataLabelSettings:
                                DataLabelSettings(isVisible: true),
                            enableTooltip: true),
                      ],
                    ),
                    SfCircularChart(
                      // title: ChartTitle(text: 'Medical'),
                      // legend:
                      // Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
                      tooltipBehavior: _tooltipBehavior,
                      series: <CircularSeries>[
                        // PieSeries<GDPData,String>
                        // RadialBarSeries<GDPData,String>
                        DoughnutSeries<GDPData, String>(
                            dataSource: _chartData,
                            xValueMapper: (GDPData data, _) => data.continent,
                            yValueMapper: (GDPData data, _) => data.gdp,
                            dataLabelSettings:
                                DataLabelSettings(isVisible: true),
                            enableTooltip: true),
                      ],
                    ),
                    SfCircularChart(
                      // title: ChartTitle(text: 'Medical'),
                      // legend:
                      // Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
                      tooltipBehavior: _tooltipBehavior,
                      series: <CircularSeries>[
                        // PieSeries<GDPData,String>
                        // RadialBarSeries<GDPData,String>
                        DoughnutSeries<GDPData, String>(
                            dataSource: _chartData,
                            xValueMapper: (GDPData data, _) => data.continent,
                            yValueMapper: (GDPData data, _) => data.gdp,
                            dataLabelSettings:
                                DataLabelSettings(isVisible: true),
                            enableTooltip: true),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                height: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Name, Enroll , Designation',
                            style: TextStyle(
                              fontSize: 16,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Text(
                'Application',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Card(
                child: Container(
                    height: 260,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Text(
                          arrNames[index],
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        );
                      },
                      itemCount: arrNames.length,
                      scrollDirection: Axis.vertical,
                      separatorBuilder: (context, index) {
                        return Divider(
                          height: 20,
                          thickness: 1,
                        );
                      },
                    ))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.deepPurpleAccent,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LeavePopUp()));
        },
        child: Icon(Icons.add),
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
}

class GDPData {
  GDPData(this.continent, this.gdp);

  final String continent;
  final int gdp;
}
