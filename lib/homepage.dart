
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthcare/responsive/desktop_device.dart';
import 'package:healthcare/responsive/mobile_device.dart';
import 'package:healthcare/responsive/responsive_layout.dart';
import 'package:healthcare/responsive/tablet_device.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home Healthcare",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: const Icon(
              Icons.notifications,
              color: Colors.pink,
            ),
          )
        ],
      ),
      body: const ResponsiveLayout(
        mobileDevice: MobileDevice(),
        tabletDevice: TabletDevice(),
        desktopDevice: DesktopDevice(),
      ),
    );
  }
}
