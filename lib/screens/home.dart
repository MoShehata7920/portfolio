import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/resources/icons_manager.dart';
import 'package:portfolio/resources/strings_manager.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/experience.dart';
import 'package:portfolio/screens/projects.dart';
import 'package:portfolio/screens/skills.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  final List<Widget> _pages = [
    const AboutMePage(),
    const ExperiencePage(),
    const ProjectsPage(),
    const SkillsPage(),
  ];
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPageIndex = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isWideScreen = MediaQuery.of(context).size.width > 800;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            children: _pages,
          ),
          if (isWideScreen)
            Positioned(
              right: 20,
              top: MediaQuery.of(context).size.height / 2 - 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: List.generate(_pages.length, (index) {
                    return GestureDetector(
                      onTap:
                          () => _pageController.animateToPage(
                            index,
                            duration: animationDuration,
                            curve: Curves.easeInOut,
                          ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              _currentPageIndex == index
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final nextIndex = (_currentPageIndex + 1) % _pages.length;
          _pageController.animateToPage(
            nextIndex,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        tooltip: AppStrings.nextSection,
        backgroundColor: primaryColor,
        child: const Icon(IconsManager.download),
      ),
    );
  }
}
