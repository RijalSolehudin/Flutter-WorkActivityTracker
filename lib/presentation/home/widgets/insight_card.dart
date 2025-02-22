import 'package:flutter/material.dart';

import '../../../core/core.dart';

class InsightCard extends StatelessWidget {
  final String title;
  final String date;
  final String task;
  final Widget chart;
  const InsightCard(
      {super.key,
      required this.title,
      required this.date,
      required this.chart,
      required this.task});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      width: context.deviceWidth * 0.43,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: isDarkMode ? AppColors.black : AppColors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            date.toString(),
            style: const TextStyle(fontSize: 14, color: AppColors.gray),
          ),
          chart,
          const Divider(
            color: AppColors.stroke,
          ),
          Row(
            children: [
              Text(
                task,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              const SpaceWidth(5),
              const Text(
                "Task",
                style: TextStyle(color: AppColors.gray),
              ),
            ],
          )
        ],
      ),
    );
  }
}
