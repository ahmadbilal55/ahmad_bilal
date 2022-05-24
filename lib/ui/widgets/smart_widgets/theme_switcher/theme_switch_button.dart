import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key, required this.initialIcon, required this.endIcon}) : super(key: key);

  final IconData initialIcon;
  final IconData endIcon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => getThemeManager(context).toggleDarkLightTheme(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: AnimateIcons(
                duration: const Duration(milliseconds: 300),
                size: 24,
                endIcon: Icons.dark_mode,
                startIcon: Icons.light_mode,
                onStartIconPress: () {
                  getThemeManager(context).toggleDarkLightTheme();
                  return true;
                },
                onEndIconPress: () {
                  getThemeManager(context).toggleDarkLightTheme();
                  return true;
                },
                controller: AnimateIconController()),
          ),
        ),
      ),
    );
  }
}
