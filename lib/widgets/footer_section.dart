import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
      color: Colors.grey[900],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.rocket_launch,
                color: Colors.white,
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                '코리아스타트업포럼',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 24,
            runSpacing: 12,
            children: [
              _buildFooterLink(context, '포럼소개'),
              _buildFooterLink(context, '정책활동'),
              _buildFooterLink(context, 'Media'),
              _buildFooterLink(context, '인재채용'),
              _buildFooterLink(context, '뉴스레터'),
              _buildFooterLink(context, '문의하기'),
            ],
          ),
          const SizedBox(height: 32),
          Divider(color: Colors.white24),
          const SizedBox(height: 24),
          Text(
            '© 2025 코리아스타트업포럼. All rights reserved.',
            style: TextStyle(
              color: Colors.white54,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            '스타트업의 성장을 도와 세상의 혁신을 이끌어 갑니다',
            style: TextStyle(
              color: Colors.white38,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLink(BuildContext context, String text) {
    return InkWell(
      onTap: () {},
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 14,
        ),
      ),
    );
  }
}
