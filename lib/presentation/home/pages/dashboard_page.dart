import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mini_project_fe_mobile/data/model/chart_data_dummy.dart';
import 'package:mini_project_fe_mobile/presentation/home/pages/insight_page.dart';
import 'package:mini_project_fe_mobile/presentation/home/widgets/insight_card.dart';
import 'package:mini_project_fe_mobile/presentation/home/widgets/insight_chart.dart';
import 'package:mini_project_fe_mobile/presentation/home/widgets/monitor_widget.dart';

import '../../../core/core.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: RefreshIndicator(
        color: AppColors.blue,
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
          setState(() {});
        },
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DateFormat("EEE ,dd MMMM").format(DateTime.now()),
                        style: const TextStyle(
                            fontSize: 18, color: AppColors.gray),
                      ),
                      const SwitchTema(),
                    ],
                  ),
                  const Text(
                    "Dashboard",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
                  ),
                  const Text(
                    "Work log focus",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                  ),
                ],
              ),
            ),
            const MonitorWidget(),
            Container(
              color: isDarkMode ? AppColors.background2 : AppColors.background,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Insight & Analytics",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          hoverColor: AppColors.gray,
                          icon: const Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 18,
                          ),
                          onPressed: () {
                            context.push(const InsightPage());
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: context.deviceWidth,
                    height: context.deviceHeight * 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const InsightCard(
                          title: "Expenditure",
                          date: "15 Jan - now",
                          task: "287",
                          chart: InsightChart(
                            data: ChartData.expenditureData,
                            color: AppColors.red,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => context.push(const InsightPage()),
                          child: const InsightCard(
                            title: "Habits Trend",
                            date: "15 Jan - now",
                            task: "786",
                            chart: InsightChart(
                              data: ChartData.habitTrendData,
                              color: AppColors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
