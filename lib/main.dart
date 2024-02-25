import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginapp/screens/login.dart';
import 'package:loginapp/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primaryColor: AppTheme.primaryColor,
        colorScheme: ColorScheme.light(
          // seedColor: AppTheme.primaryColor,
          primary: AppTheme.primaryColor,
          secondary: AppTheme.secondaryColor,
        ),
        iconTheme: const IconThemeData(
          color: AppTheme.primaryTextColor,
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
