import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/resources/strings_manager.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount =
        screenWidth > 1200
            ? 4
            : screenWidth > 800
            ? 3
            : 2;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: AnimateList(
          interval: 200.ms,
          effects: [FadeEffect(duration: 500.ms)],
          children: [
            const Text(
                  AppStrings.skills,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                )
                .animate()
                .fadeIn(delay: 200.ms, duration: 800.ms)
                .slideY(begin: 0.5, end: 0, duration: 800.ms),
            const SizedBox(height: 40),
            _buildSkillSection(
              context,
              title: AppStrings.techSkills,
              skills: technicalSkills,
              crossAxisCount: crossAxisCount,
            ),
            const SizedBox(height: 40),
            _buildSkillSection(
              context,
              title: AppStrings.softSkills,
              skills: softSkills,
              crossAxisCount: crossAxisCount,
            ),
            const SizedBox(height: 40),
            const Text(
                  AppStrings.languages,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                )
                .animate()
                .fadeIn(delay: 200.ms, duration: 800.ms)
                .slideY(begin: 0.5, end: 0, duration: 800.ms),
            const SizedBox(height: 20),
            Wrap(
              spacing: 20,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                _buildLanguagePill(AppStrings.arabic),
                _buildLanguagePill(AppStrings.english),
                _buildLanguagePill(AppStrings.german),
              ],
            ).animate().fadeIn(duration: 800.ms),
          ],
        ),
      ),
    );
  }

  static Widget _buildSkillSection(
    BuildContext context, {
    required String title,
    required List<Map<String, dynamic>> skills,
    required int crossAxisCount,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ).animate().fadeIn(duration: 800.ms).slideX(begin: -0.5, end: 0),
        ),
        const SizedBox(height: 20),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: 2.0,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: skills.length,
          itemBuilder: (context, index) {
            return _buildSkillCard(
                  name: skills[index]['name'],
                  icon: skills[index]['icon'],
                )
                .animate()
                .fadeIn(delay: (200 * index).ms, duration: 800.ms)
                .scale(
                  begin: const Offset(0.8, 0.8),
                  end: const Offset(1.0, 1.0),
                );
          },
        ),
      ],
    );
  }

  static Widget _buildSkillCard({
    required String name,
    required IconData icon,
  }) {
    return MouseRegion(
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: const Color(0xFF212121),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: primaryColor),
              const SizedBox(height: 8),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildLanguagePill(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF212121),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.blueAccent),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
