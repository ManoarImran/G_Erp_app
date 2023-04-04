import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Page1Body extends StatefulWidget {
  const Page1Body({Key? key}) : super(key: key);



  @override
  State<Page1Body> createState() => _Page1BodyState();
}

class _Page1BodyState extends State<Page1Body> {
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
      body: SfCircularChart(
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
