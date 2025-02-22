import 'package:flutter/material.dart';
import 'package:mini_project_fe_mobile/presentation/auth/dialog/auth_dialog.dart';

import '../../../core/core.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? AppColors.black : AppColors.background,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: context.deviceWidth,
            color: isDarkMode ? AppColors.black : AppColors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SpaceHeight(15),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 38,
                      backgroundColor: AppColors.background2,
                      child: Center(
                        child: Text(
                          "RS",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Rijal Solehuddin',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        subtitle: Text(
                          'Member since 10 January 2025',
                          style: TextStyle(color: AppColors.gray),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SpaceHeight(16.0),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "General",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            decoration: BoxDecoration(
                color: isDarkMode ? AppColors.black : AppColors.white,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    DialogHelper.authDialog(context, "Menu Ditekan");
                  },
                  leading: const Icon(Icons.person_2),
                  title: const Text(
                    'Profile',
                  ),
                  trailing: const Icon(Icons.chevron_right),
                ),
                const Divider(
                  color: AppColors.stroke,
                ),
                ListTile(
                  onTap: () {
                    DialogHelper.authDialog(context, "Menu Ditekan");
                  },
                  leading: const Icon(Icons.privacy_tip),
                  title: const Text(
                    'Data & Privacy',
                  ),
                  trailing: const Icon(Icons.chevron_right),
                ),
                const Divider(
                  color: AppColors.stroke,
                ),
                ListTile(
                  onTap: () {
                    DialogHelper.authDialog(context, "Menu Ditekan");
                  },
                  leading: const Icon(Icons.credit_card),
                  title: const Text(
                    'Subscription',
                  ),
                  trailing: const Icon(Icons.chevron_right),
                ),
                const Divider(
                  color: AppColors.stroke,
                ),
                ListTile(
                  onTap: () {
                    DialogHelper.authDialog(context, "Menu Ditekan");
                  },
                  leading: const Icon(Icons.lock),
                  title: const Text(
                    'Password',
                  ),
                  trailing: const Icon(Icons.chevron_right),
                ),
                const Divider(
                  color: AppColors.stroke,
                ),
                ListTile(
                  onTap: () {
                    DialogHelper.authDialog(context, "Menu Ditekan");
                  },
                  leading: const Icon(Icons.logout),
                  title: const Text(
                    'Sign out',
                  ),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
