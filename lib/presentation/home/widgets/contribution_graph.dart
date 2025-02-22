import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mini_project_fe_mobile/core/core.dart';

class ContributionGraph extends StatelessWidget {
  final int rowCount = 30;
  final int colCount = 7;

  const ContributionGraph({super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final List<bool> trackedDays =
        List.generate(210, (_) => random.nextDouble() < 0.3);
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Center(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: rowCount,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemCount: rowCount * colCount,
        itemBuilder: (context, index) {
          return Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: trackedDays[index]
                  ? AppColors.blue
                  : isDarkMode
                      ? AppColors.rectangle
                      : AppColors.grayMuda,
              borderRadius: BorderRadius.circular(2),
            ),
          );
        },
      ),
    );
  }
}
