import 'package:flutter/material.dart';

import '../services/auth_service.dart';
import 'change_password_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();
    final user = authService.currentUser;

    return Scaffold(
      appBar: AppBar(title: const Text('My Profile')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Signed in as: ${user?.email ?? 'Unknown'}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChangePasswordScreen(),
                  ),
                );
              },
              child: const Text('Change Password'),
            ),

            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                await authService.signOut();
              },
              child: const Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
