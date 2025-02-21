import 'package:flutter/material.dart';
import 'package:mini_project_fe_mobile/core/core.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
  double circularPercent = 0.0;
  double linearPercent1 = 0.0;
  double linearPercent2 = 0.0;
  double linearPercent3 = 0.0;

  @override
  void initState() {
    _restartAnimation();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MonitorWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _restartAnimation();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  void _restartAnimation() {
    setState(() {
      circularPercent = 0;
      linearPercent1 = 0;
    });
    Future.delayed(
      const Duration(milliseconds: 100),
      () {
        setState(() {
          circularPercent = 0.4;
          linearPercent1 = 0.7;
        });
      },
    );
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
              _restartAnimation();
            },
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: context.deviceHeight * 0.2,
                    margin: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Flexible(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "566",
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Remaining",
                                  style: TextStyle(
                                      fontSize: 14, color: AppColors.gray),
                                ),
                              ],
                            )),
                        Flexible(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircularPercentIndicator(
                                  radius: 80,
                                  lineWidth: 6,
                                  percent: circularPercent,
                                  progressColor: Colors.blue,
                                  startAngle: 240,
                                  animation: true,
                                  animationDuration: 2000,
                                  arcBackgroundColor: AppColors.gray,
                                  arcType: ArcType.FULL,
                                  center: const SizedBox(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "465",
                                          style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Working",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: AppColors.gray),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        const Flexible(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "1220",
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "target",
                                  style: TextStyle(
                                      fontSize: 14, color: AppColors.gray),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: Column(
                            children: [
                              const Text("Failed"),
                              Container(
                                decoration: const BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      blurRadius: 6,
                                      color: Color.fromARGB(59, 0, 0, 0),
                                      spreadRadius: 0.0,
                                      offset: Offset(5, 3))
                                ]),
                                child: LinearPercentIndicator(
                                  width: 100,
                                  lineHeight: 6,
                                  percent: linearPercent1,
                                  progressColor: AppColors.red,
                                  animationDuration: 2000,
                                  animation: true,
                                ),
                              ),
                              const Text("42 / 77 %")
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              const Text("Progress"),
                              Container(
                                decoration: const BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      blurRadius: 6,
                                      color: Color.fromARGB(59, 0, 0, 0),
                                      spreadRadius: 0,
                                      offset: Offset(5, 3))
                                ]),
                                child: LinearPercentIndicator(
                                  width: 100,
                                  lineHeight: 5,
                                  percent: linearPercent1,
                                  progressColor: AppColors.yellow,
                                  animationDuration: 2000,
                                  animation: true,
                                ),
                              ),
                              const Text("20 / 40 %")
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              const Text("Success"),
                              Container(
                                decoration: const BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Color.fromARGB(59, 0, 0, 0),
                                      spreadRadius: 0.0,
                                      offset: Offset(5, 3))
                                ]),
                                child: LinearPercentIndicator(
                                  width: 100,
                                  lineHeight: 5,
                                  percent: linearPercent1,
                                  progressColor: AppColors.green,
                                  animationDuration: 2000,
                                  animation: true,
                                ),
                              ),
                              const Text("85 / 136 %")
                            ],
                          ),
                        ),
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
