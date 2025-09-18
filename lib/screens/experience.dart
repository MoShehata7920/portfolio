import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/resources/icons_manager.dart';
import 'package:portfolio/resources/strings_manager.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        return SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                    AppStrings.professionalExperience,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  )
                  .animate()
                  .fadeIn(delay: 200.ms, duration: 800.ms)
                  .slideY(begin: 0.5, end: 0, duration: 800.ms),
              const SizedBox(height: 20),
              Column(
                children: [
                  _buildExperienceCard(
                    title: AppStrings.flutterDeveloper,
                    company: AppStrings.megaDev,
                    period: AppStrings.marchToPresent,
                    description: AppStrings.megaDevWorkDescription,
                    details: AppStrings.megaDevWorkDetails,
                    maxWidth: maxWidth,
                  ),
                  const SizedBox(height: 40),
                  _buildExperienceCard(
                    title: AppStrings.freelanceFlutterDeveloper,
                    company: AppStrings.mostaql,
                    period: AppStrings.freelancePeriod,
                    description: AppStrings.freelanceWorkDescription,
                    details: AppStrings.freelanceWorkDetails,
                    maxWidth: maxWidth,
                  ),
                ].animate(interval: 200.ms).fadeIn(duration: 800.ms),
              ),
            ],
          ),
        );
      },
    );
  }

  static Widget _buildExperienceCard({
    required String title,
    required String company,
    required String period,
    required String description,
    required List<String> details,
    required double maxWidth,
  }) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: cardColor,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth > 800 ? 800 : maxWidth - 40,
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                company,
                style: TextStyle(fontSize: 18, color: Colors.grey[400]),
              ),
              const SizedBox(height: 4),
              Text(
                period,
                style: TextStyle(fontSize: 16, color: Colors.grey[500]),
              ),
              const SizedBox(height: 16),
              Text(
                description,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 16),
              ...details.map(
                (detail) => Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        IconsManager.rightMark,
                        size: 16,
                        color: primaryColor,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          detail,
                          style: const TextStyle(fontSize: 16, height: 1.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
