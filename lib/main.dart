import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/responsive/mobilescreen.dart';
import 'package:instagramclone/responsive/responsive_layout.dart';
import 'package:instagramclone/responsive/webscreen.dart';
import 'package:instagramclone/screens/login_screen.dart';
import 'package:instagramclone/screens/sugnup_screen.dart';
import 'package:instagramclone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: ResponsiveLayout(
      //   Webscreen: const Webscreen(),
      //   MobileScreenLayout: const MobileScreenLayout(),
      // ),
      home: SignUp(),
      
    );
  }
}
