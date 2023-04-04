import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);


  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Pie Chart for...'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: SfCircularChart(
                          // title: ChartTitle(text: 'Medical'),
                          // legend:
                          // Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
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
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: SfCircularChart(
                          // title: ChartTitle(text: 'Medical'),
                          // legend:
                          // Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
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
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: SfCircularChart(
                          // title: ChartTitle(text: 'Medical'),
                          // legend:
                          // Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
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
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: SfCircularChart(
                          // title: ChartTitle(text: 'Medical'),
                          // legend:
                          // Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
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
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: SfCircularChart(
                          // title: ChartTitle(text: 'Medical'),
                          // legend:
                          // Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
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
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: SfCircularChart(
                          // title: ChartTitle(text: 'Medical'),
                          // legend:
                          // Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
