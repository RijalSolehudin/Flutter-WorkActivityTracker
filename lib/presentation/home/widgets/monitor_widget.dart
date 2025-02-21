import 'package:flutter/material.dart';
import 'package:mini_project_fe_mobile/core/core.dart';

import '../../auth/widgets/auth_toggle.dart';

class MonitorWidget extends StatefulWidget {
  const MonitorWidget({super.key});

  @override
  State<MonitorWidget> createState() => _MonitorWidgetState();
}

class _MonitorWidgetState extends State<MonitorWidget> {
  int _currentPage = 0;
  bool isSelected = true;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: context.deviceWidth,
          height: context.deviceHeight * 0.4,
          child: PageView.builder(
            controller: _pageController,
            itemCount: 3,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: context.deviceHeight * 0.2,
                    margin: const EdgeInsets.only(top: 20),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("566"),
                                Text(
                                  "Remaining",
                                  style: TextStyle(color: AppColors.gray),
                                ),
                              ],
                            )),
                        Flexible(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("656"),
                                Text(
                                  "Working",
                                  style: TextStyle(color: AppColors.gray),
                                ),
                              ],
                            )),
                        Flexible(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("1220"),
                                Text(
                                  "target",
                                  style: TextStyle(color: AppColors.gray),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Failed"),
                        Text("Progress"),
                        Text("Success"),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AuthToggle(
                            isSelected: isSelected,
                            onToggle: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            title: "Worked",
                            title2: "Remaining"),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
                width: _currentPage == index ? 10.0 : 6.0,
                height: _currentPage == index ? 10.0 : 6.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index ? AppColors.black : Colors.grey,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
