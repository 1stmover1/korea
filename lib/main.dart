import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const KStartupForumApp());
}

class KStartupForumApp extends StatelessWidget {
  const KStartupForumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '코리아스타트업포럼',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0066FF),
          brightness: Brightness.light,
        ),
        textTheme: GoogleFonts.notoSansKrTextTheme(),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
