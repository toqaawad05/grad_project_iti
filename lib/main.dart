import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project_iti/blocs/bloc.dart';
import 'package:grad_project_iti/firebase/auth.dart';
import 'package:grad_project_iti/screens/login_screen.dart' hide AuthBloc;
import 'package:grad_project_iti/screens/signup_screen.dart';
import 'package:grad_project_iti/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';
import 'themes/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    BlocProvider<AuthBloc>(
      create: (_) => AuthBloc(authRepository: AuthRepository()),
      child: const MyApp(),
    ),
  );
}

Future<bool> checkLoginStatus() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('isLoggedIn') ?? false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // لو لسه بيجيب الحالة
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
          // لو مسجّل دخول يروح الهوم
          if (snapshot.hasData) {
            return HomeScreen();
          }
          // لو مش مسجّل يروح اللوجن
          return LoginScreen();
        },
      ),
    );
  }
}
