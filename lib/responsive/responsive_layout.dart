import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileDevice;
  final Widget tabletDevice;
  final Widget desktopDevice;

  const ResponsiveLayout({
    super.key,
    required this.mobileDevice,
    required this.tabletDevice,
    required this.desktopDevice,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileDevice;
      } else if (constraints.maxWidth >= 600 && constraints.maxWidth < 1200) {
        return tabletDevice;
      } else {
        return desktopDevice;
      }
    });
  }
}
