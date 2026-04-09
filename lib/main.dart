import 'package:flutter/material.dart';
import 'package:mobile_app/pages/orbita_command_page.dart';
import 'package:mobile_app/pages/orbita_crew_reviews_page.dart';
import 'package:mobile_app/pages/orbita_fleet_about_page.dart';
import 'package:mobile_app/pages/orbita_docking_cart_page.dart';
import 'package:mobile_app/pages/orbita_launch_page.dart';
import 'package:mobile_app/pages/orbita_mission_catalog_page.dart';
import 'package:mobile_app/pages/orbita_promotions_page.dart';
import 'package:mobile_app/theme/app_brand_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const OrbitaLaunchPage(),
        '/dock': (context) => const OrbitaDockingCartPage(),
        '/fleet': (context) => const OrbitaFleetAboutPage(),
        '/hub': (context) => const OrbitaCommandPage(),
        '/missions': (context) => const OrbitaMissionCatalogPage(),
        '/promos': (context) => const OrbitaPromotionsPage(),
        '/transmissions': (context) => const OrbitaCrewReviewsPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Orbita Space',
      theme: AppBrandTheme.lightTheme,
    );
  }
}
