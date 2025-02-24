import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo
              SvgPicture.asset('assets/logo.svg', height: 30),
              const SizedBox(height: 40),

              // Profile Section
              const Text(
                'Profile',
                style: TextStyle(
                  fontFamily: "Geom",
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),

              // User Info
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Abdelmalek CHETTA',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'abd*********ta@gmail.com',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Settings Options
              ListTile(
                leading: const Icon(Icons.settings_outlined),
                title: const Text('Account Settings'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.privacy_tip_outlined),
                title: const Text('Privacy Settings'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
              Divider(
                color: Colors.blueAccent.shade700,
              ),
              const SizedBox(height: 32),


              // More Section
              const Text(
                'More',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.help_outline),
                title: const Text('Help & Support'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.call_outlined),
                title: const Text('Contact Us'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}