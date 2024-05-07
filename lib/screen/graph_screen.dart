import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.blueGrey,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_sharp)),
        centerTitle: true,
        title: Text('Graph'),
      ),
      body: Center(

        child: LineChart(
            LineChartData(
              titlesData: FlTitlesData(
                topTitles: AxisTitles(axisNameWidget: Text('Cost '),),
                leftTitles: AxisTitles(axisNameWidget: Text('Income '),),
              ),
            lineBarsData:[
              LineChartBarData(
              isCurved: true,
                spots: [
                  FlSpot(0, 1),
                  FlSpot(1, 4),
                  FlSpot(2, 3),
                  FlSpot(3, 4),
                ],
                  showingIndicators: [
                    1,2,3,4
                  ]
              )
            ]
        )),
      ),


    );
  }
}
