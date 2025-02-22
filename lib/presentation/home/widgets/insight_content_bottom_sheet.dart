import 'package:flutter/material.dart';
import 'package:mini_project_fe_mobile/core/core.dart';
import 'package:mini_project_fe_mobile/presentation/home/widgets/contribution_graph.dart';
import 'package:percent_indicator/percent_indicator.dart';

class InsightContentBottomSheet extends StatelessWidget {
  const InsightContentBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.deviceHeight * 0.25,
            child: Center(
              child: CircularPercentIndicator(
                radius: 90,
                lineWidth: 8,
                percent: 1,
                progressColor: Colors.blue,
                animation: true,
                animationDuration: 2000,
                center: const SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "100%",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "January",
                        style: TextStyle(fontSize: 14, color: AppColors.gray),
                      ),
                      Text(
                        "Tracked Rate",
                        style: TextStyle(fontSize: 14, color: AppColors.gray),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text("Work Streaks",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                  height: 60, width: 60, child: Assets.images.ribbon.image()),
              const SizedBox(width: 10),
              const SizedBox(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Longest & Current"),
                  Row(
                    children: [
                      Text("29",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                      SpaceWidth(8),
                      Text("Days")
                    ],
                  ),
                  Text(
                    "11 January 2025 - Today",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              )),
            ],
          ),
          const SpaceHeight(20),
          const Text("Yearly View",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SpaceHeight(20),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  color: AppColors.blue,
                  margin: const EdgeInsets.only(right: 5),
                ),
                const Text("Tracked"),
                const SpaceWidth(40),
                Container(
                  width: 10,
                  height: 10,
                  color: isDarkMode ? AppColors.rectangle : AppColors.grayMuda,
                  margin: const EdgeInsets.only(right: 5),
                ),
                const Text("Untracked")
              ],
            ),
          ),
          const SpaceHeight(16),
          const Text(
            "2025",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          ),
          const SpaceHeight(16),
          const SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Jan  Feb   Mar   Apr   May   Jun   Jul   Aug   Sept    Oct   Nov   Des",
                  style: TextStyle(fontSize: 11),
                )
              ],
            ),
          ),
          const SpaceHeight(16),
          const SizedBox(height: 100, child: ContributionGraph()),
        ],
      ),
    );
  }
}
