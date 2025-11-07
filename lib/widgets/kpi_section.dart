import 'package:flutter/material.dart';

class KPISection extends StatelessWidget {
  const KPISection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Responsive layout
          final isWide = constraints.maxWidth > 800;
          
          if (isWide) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: _buildKPICard(context, '전체 회원사 수', '320', '개사', Icons.business)),
                const SizedBox(width: 24),
                Expanded(child: _buildKPICard(context, '누적 투자금액', '5,240', '억원', Icons.account_balance)),
                const SizedBox(width: 24),
                Expanded(child: _buildKPICard(context, '누적 고용인원', '12,500', '명', Icons.people)),
              ],
            );
          } else {
            return Column(
              children: [
                _buildKPICard(context, '전체 회원사 수', '320', '개사', Icons.business),
                const SizedBox(height: 24),
                _buildKPICard(context, '누적 투자금액', '5,240', '억원', Icons.account_balance),
                const SizedBox(height: 24),
                _buildKPICard(context, '누적 고용인원', '12,500', '명', Icons.people),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildKPICard(BuildContext context, String title, String value, String unit, IconData icon) {
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
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 48,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
              ),
              const SizedBox(width: 4),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  unit,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
