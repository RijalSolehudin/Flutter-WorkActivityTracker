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
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat("EEE ,dd MMMM").format(DateTime.now()),
                  style: const TextStyle(fontSize: 18, color: AppColors.gray),
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
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Insight & Analytics",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  hoverColor: AppColors.gray,
                  icon: const Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 18,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
