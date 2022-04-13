import 'package:bank_ui/screens/Login_Screen.dart';
import 'package:bank_ui/screens/SignUp.dart';
import 'package:bank_ui/screens/launch_screen.dart';
import 'package:bank_ui/screens/bank_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(720, 1600),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/bankHome',
        routes: {
          'launch': (context) => const Launch(),
          '/login': (context) => const LoginScreen(),
          '/signUp': (context) => const SignUp(),
          '/bankHome': (context) => const BankHome(),
        },
      ),
    );
  }
}
