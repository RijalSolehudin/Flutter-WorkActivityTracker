import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
                      SwitchTema(),
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
              color: isDarkMode ? AppColors.background1 : AppColors.background,
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
                          onPressed: () {},
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
                        Container(
                          width: context.deviceWidth * 0.43,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Expenditure",
                                style: TextStyle(
                                    fontSize: 16, color: AppColors.black),
                              ),
                              Text(
                                "19 aug - now",
                                style: TextStyle(
                                    fontSize: 14, color: AppColors.gray),
                              ),
                            ],
                          ),
                        ),

                        //insight caard
                        Container(
                          width: context.deviceWidth * 0.43,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Habits Trend",
                                style: TextStyle(
                                    fontSize: 16, color: AppColors.black),
                              ),
                              Text(
                                "19 aug - now",
                                style: TextStyle(
                                    fontSize: 14, color: AppColors.gray),
                              ),
                              Divider(
                                color: AppColors.gray,
                              )
                            ],
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
