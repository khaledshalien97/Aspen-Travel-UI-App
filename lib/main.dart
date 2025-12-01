import 'package:aspen_travel_app_ui/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aspen Travel App',
    
      home:  OnBoardingScreen(),
    );
  }
}


