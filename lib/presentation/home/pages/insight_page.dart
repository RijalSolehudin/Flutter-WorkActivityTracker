import 'package:flutter/material.dart';
import 'package:mini_project_fe_mobile/core/core.dart';

import '../widgets/insight_bottomSheet.dart';

class InsightPage extends StatelessWidget {
  const InsightPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Habits",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: isDarkMode ? AppColors.black : AppColors.appbar,
      ),
      body: const InsightBottomsheet(),
    );
  }
}


// void _showInsightModal() {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     backgroundColor: Colors.transparent,
  //     builder: (context) => InsightBottomsheet(),
  //   );
  // }