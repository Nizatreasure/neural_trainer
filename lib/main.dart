import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/onboarding/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Colors.transparent),
      child: const MaterialApp(
        title: 'Neural Trainer',
        home: OnboardingPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
