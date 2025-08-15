import 'package:flutter/material.dart';
import 'package:grad_project_iti/themes/app_theme.dart';
class ProfileScreen extends StatelessWidget {
  final String name;
  final String email;
  final String imageUrl; // رابط أو مسار الصورة

  const ProfileScreen({
    super.key,
    required this.name,
    required this.email,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
        backgroundColor:AppTheme.desertSand ,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // رأس الصفحة
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              color: AppTheme.primaryColor,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    email,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // باقي المعلومات
            ListTile(
              leading: const Icon(Icons.person, color: AppColors.battleshipGray),
              title: const Text("Full Name"),
              subtitle: Text(name),
            ),
            const Divider(),

            ListTile(
              leading: const Icon(Icons.email, color:AppColors.battleshipGray),
              title: const Text("Email"),
              subtitle: Text(email),
            ),
            const Divider(),

            ListTile(
              leading: const Icon(Icons.settings, color: AppColors.battleshipGray),
              title: const Text("Settings"),
              onTap: () {},
            ),
            const Divider(),

            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text("Log Out"),
              onTap: () {
                Navigator.pop(context); // يرجع لصفحة اللوجن
              },
            ),
          ],
        ),
      ),
    );
  }
}
