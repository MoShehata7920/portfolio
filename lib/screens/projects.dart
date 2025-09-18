import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/resources/strings_manager.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

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
                    AppStrings.keyProjects,
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
                children: List.generate(projects.length, (index) {
                  final project = projects[index];
                  return _buildProjectCard(
                        title: project['title'] as String,
                        description: project['description'] as String,
                        imagePaths: project['images'] as List<String>,
                        maxWidth: maxWidth,
                        context: context,
                      )
                      .animate()
                      .fadeIn(delay: (200 * index).ms, duration: 800.ms)
                      .slideY(begin: 0.5, end: 0, duration: 800.ms);
                }),
              ),
            ],
          ),
        );
      },
    );
  }

  static Widget _buildProjectCard({
    required BuildContext context,
    required String title,
    required String description,
    required List<String> imagePaths,
    required double maxWidth,
  }) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: cardColor,
      margin: const EdgeInsets.only(bottom: 40),
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
              const SizedBox(height: 16),
              Text(
                description,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 24),
              MouseRegion(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 300,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    enlargeCenterPage: true,
                    viewportFraction: 0.6,
                    onPageChanged: (index, reason) {},
                  ),
                  items:
                      imagePaths.map((path) {
                        return GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder:
                                  (_) => Dialog(
                                    child: Image.asset(path, fit: BoxFit.fill),
                                  ),
                            );
                          },
                          child: Animate(
                            effects: const [ScaleEffect()],
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 8,
                                    ),
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.black,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(32),
                                    child: Image.asset(
                                      path,
                                      fit: BoxFit.fill,
                                      width: 200,
                                      height: 300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
