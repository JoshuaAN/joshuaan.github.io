import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:testproject/constants.dart';
import 'package:testproject/io/database_team.dart';

class HChart extends StatelessWidget {
  const HChart({Key? key,
    required this.xAxis,
    required this.yAxis,
    required this.maxY,
    required this.colors,
  }) : super(key: key);

  final List<double> xAxis;
  final List<List<double>> yAxis;
  final double maxY;
  final List<Color> colors;

  @override build(BuildContext context) {
    return LineChart(
      LineChartData(
        minY: 0,
        maxY: maxY,
        titlesData: FlTitlesData(
          show: true,
          topTitles: SideTitles(),
          rightTitles: SideTitles(),
          leftTitles: SideTitles(
            interval: 5,
            getTitles: (final double value) {
              return value.toString();
            },
            showTitles: true,
            getTextStyles: (final BuildContext context, final double value) => TextStyle(
              color: kComplementaryColor,
              fontWeight: FontWeight.bold
            ),
          ),
          bottomTitles: SideTitles(
            interval: 1,
            getTitles: (final double value) {
              return (xAxis[value.toInt()]).toString();
            },
            showTitles: true,
            getTextStyles: (final BuildContext context, final double value) => TextStyle(
              color: kComplementaryColor,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        borderData: FlBorderData(
          show: false
        ),
        lineBarsData: List<LineChartBarData>.generate(
          yAxis.length,
            (lineIndex) => LineChartBarData(
              dotData: FlDotData(
                show: false
              ),
              belowBarData: BarAreaData(
                show: true,
                colors: [
                  Color.fromRGBO(
                    colors[lineIndex].red,
                    colors[lineIndex].green,
                    colors[lineIndex].blue,
                    colors[lineIndex].opacity * 0.3)
                ]
              ),
              colors: [colors[lineIndex]],
              spots: List<FlSpot>.generate(
                yAxis[lineIndex].length,
                  (index) => FlSpot(index.toDouble(), yAxis[lineIndex][index])
              )
            )
        )
      )
    );
  }
}