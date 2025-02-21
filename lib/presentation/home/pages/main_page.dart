import 'package:flutter/material.dart';
import 'package:mini_project_fe_mobile/core/core.dart';
import 'package:mini_project_fe_mobile/presentation/home/pages/analytic_page.dart';
import 'package:mini_project_fe_mobile/presentation/home/pages/dashboard_page.dart';
import 'package:mini_project_fe_mobile/presentation/home/pages/profile_page.dart';
import 'package:mini_project_fe_mobile/presentation/home/pages/work_log_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const DashboardPage(),
    const WorkLogPage(),
    const AnalyticPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    final Color primaryColor = isDarkMode ? AppColors.white : AppColors.black;
    final Color secondaryColor = isDarkMode ? AppColors.gray : AppColors.gray;
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          currentIndex: _selectedIndex,
          selectedItemColor: primaryColor,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Assets.icons.dashboard.svg(
                  width: _selectedIndex == 0 ? 23 : 20,
                  colorFilter: ColorFilter.mode(
                      _selectedIndex == 0 ? primaryColor : secondaryColor,
                      BlendMode.srcIn)),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Assets.icons.workLog.svg(
                  width: _selectedIndex == 1 ? 23 : 20,
                  colorFilter: ColorFilter.mode(
                      _selectedIndex == 1 ? primaryColor : secondaryColor,
                      BlendMode.srcIn)),
              label: 'Work Log',
            ),
            BottomNavigationBarItem(
              icon: Assets.icons.analytic.svg(
                  width: _selectedIndex == 2 ? 23 : 20,
                  colorFilter: ColorFilter.mode(
                      _selectedIndex == 2 ? primaryColor : secondaryColor,
                      BlendMode.srcIn)),
              label: 'Analytic',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                  height: 20,
                  child: Assets.icons.profile.svg(
                      width: _selectedIndex == 3 ? 23 : 20,
                      colorFilter: ColorFilter.mode(
                          _selectedIndex == 3 ? primaryColor : secondaryColor,
                          BlendMode.srcIn))),
              label: 'Profile',
            )
          ]),
    );
  }

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }
}
