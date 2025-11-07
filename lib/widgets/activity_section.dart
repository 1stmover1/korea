import 'package:flutter/material.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      color: Colors.grey[50],
      child: Column(
        children: [
          Text(
            '포럼 활동',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
          ),
          const SizedBox(height: 40),
          LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth > 800;
              
              if (isWide) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _buildActivityCard(
                      context,
                      '정책활동',
                      '스타트업 생태계 발전을 위한 정책 제안 및 의견 수렴',
                      Icons.policy,
                      Colors.blue,
                    )),
                    const SizedBox(width: 24),
                    Expanded(child: _buildActivityCard(
                      context,
                      'Media',
                      '포럼 활동 및 스타트업 생태계 소식 전파',
                      Icons.article,
                      Colors.orange,
                    )),
                  ],
                );
              } else {
                return Column(
                  children: [
                    _buildActivityCard(
                      context,
                      '정책활동',
                      '스타트업 생태계 발전을 위한 정책 제안 및 의견 수렴',
                      Icons.policy,
                      Colors.blue,
                    ),
                    const SizedBox(height: 24),
                    _buildActivityCard(
                      context,
                      'Media',
                      '포럼 활동 및 스타트업 생태계 소식 전파',
                      Icons.article,
                      Colors.orange,
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildActivityCard(BuildContext context, String title, String description, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 32, color: color),
          ),
          const SizedBox(height: 24),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.black54,
                  height: 1.6,
                ),
          ),
          const SizedBox(height: 24),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward),
            label: const Text('더보기'),
            style: TextButton.styleFrom(
              foregroundColor: color,
            ),
          ),
        ],
      ),
    );
  }
}
