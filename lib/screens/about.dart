import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/resources/assets_manager.dart';
import 'package:portfolio/resources/icons_manager.dart';
import 'package:portfolio/resources/strings_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth > 800;
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(isWideScreen ? 40 : 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: AnimateList(
                interval: 200.ms,
                effects: [FadeEffect(duration: 500.ms)],
                children: [
                  ClipOval(
                    child: Image.asset(
                      AssetsManager.profile,
                      width: 160,
                      height: 160,
                      fit: BoxFit.fill,
                      errorBuilder:
                          (context, error, stackTrace) => const Icon(
                            IconsManager.person,
                            size: 80,
                            color: Colors.grey,
                          ),
                    ),
                  ).animate().fadeIn(duration: 800.ms),
                  const SizedBox(height: 20),
                  const Text(
                        AppStrings.myName,
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                      .animate()
                      .fadeIn(delay: 200.ms, duration: 800.ms)
                      .slideY(begin: 0.5, end: 0, duration: 800.ms),
                  const SizedBox(height: 10),
                  const Text(
                        AppStrings.jobTitle,
                        style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                        ),
                      )
                      .animate()
                      .fadeIn(delay: 400.ms, duration: 800.ms)
                      .slideY(begin: 0.5, end: 0, duration: 800.ms),
                  const SizedBox(height: 30),
                  ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: isWideScreen ? 800 : screenWidth - 40,
                        ),
                        child: const Text(
                          AppStrings.summary,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, height: 1.5),
                        ),
                      )
                      .animate()
                      .fadeIn(delay: 600.ms, duration: 800.ms)
                      .slideY(begin: 0.5, end: 0, duration: 800.ms),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialIcon(icon: IconsManager.email, url: myEmail),
                      const SizedBox(width: 20),
                      _buildSocialIcon(
                        icon: IconsManager.linkedIn,
                        url: myLinkedIn,
                      ),
                      const SizedBox(width: 20),
                      _buildSocialIcon(
                        icon: IconsManager.github,
                        url: myGithub,
                      ),
                      const SizedBox(width: 20),
                      _buildSocialIcon(
                        icon: IconsManager.phone,
                        url: myPhoneNumber,
                      ),
                    ],
                  ).animate().fadeIn(delay: 800.ms, duration: 800.ms),
                  const SizedBox(height: 30),
                  MouseRegion(
                    child: ElevatedButton.icon(
                      onPressed: () async {
                        final uri = Uri.parse(resumeUrl);
                        if (await canLaunchUrl(uri)) {
                          await launchUrl(
                            uri,
                            mode: LaunchMode.externalApplication,
                          );
                        } else {
                          debugPrint('Could not launch $resumeUrl');
                        }
                      },
                      icon: const Icon(IconsManager.download),
                      label: const Text(AppStrings.downloadResume),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ).animate().fadeIn(delay: 1000.ms, duration: 800.ms),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static Widget _buildSocialIcon({
    required IconData icon,
    required String url,
  }) {
    return MouseRegion(
      child: IconButton(
        icon: Icon(icon, size: 36),
        onPressed: () async {
          final uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          } else {
            debugPrint('Could not launch $url');
          }
        },
        hoverColor: Colors.blueAccent.withValues(alpha: 0.2),
      ),
    );
  }
}
