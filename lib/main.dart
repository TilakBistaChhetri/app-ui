import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/dashboard/splash_screen.dart';
import 'package:laligurashapp/providers/bottomnavigation_provider.dart';
import 'package:laligurashapp/providers/select_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => BottomnavigationProvider()),
          ChangeNotifierProvider(create: (_) => SelectionProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        ));
  }
}
