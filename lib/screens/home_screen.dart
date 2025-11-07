import 'package:flutter/material.dart';
import '../widgets/hero_section.dart';
import '../widgets/kpi_section.dart';
import '../widgets/activity_section.dart';
import '../widgets/recruitment_section.dart';
import '../widgets/newsletter_section.dart';
import '../widgets/footer_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.rocket_launch,
              color: Theme.of(context).colorScheme.primary,
              size: 28,
            ),
            const SizedBox(width: 8),
            Text(
              '코리아스타트업포럼',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('포럼소개'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('활동'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('채용'),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            KPISection(),
            ActivitySection(),
            RecruitmentSection(),
            NewsletterSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
