import 'package:flutter/material.dart';
import 'package:mini_project_fe_mobile/core/components/spaces.dart';
import 'package:mini_project_fe_mobile/core/constants/colors.dart';
import 'package:mini_project_fe_mobile/presentation/home/widgets/insight_content_bottom_sheet.dart';

class InsightBottomsheet extends StatelessWidget {
  const InsightBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return DraggableScrollableSheet(
      initialChildSize: 1,
      minChildSize: 0.9,
      maxChildSize: 1,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: isDarkMode ? AppColors.background2 : AppColors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: const Border(
                  top: BorderSide(
                color: AppColors.stroke,
              ))),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const Text(
                "Insight & Data",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SpaceHeight(10),
              const Divider(
                color: AppColors.stroke,
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: const InsightContentBottomSheet(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
