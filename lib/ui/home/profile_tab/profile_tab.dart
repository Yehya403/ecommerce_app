import 'package:flutter/material.dart';

import '../../auth/login/login_screen.dart';
import '../../utils/shared_preference_utils.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  SharedPreferenceUtils.removeData(key: 'token');
                  Navigator.of(context)
                      .pushReplacementNamed(LoginScreen.routeName);
                },
                icon: const Icon(
                  Icons.logout,
                  size: 32,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                'Welcome, Yehya',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
