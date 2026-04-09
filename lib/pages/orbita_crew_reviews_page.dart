import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/theme/app_brand_theme.dart';

final List<String> orbitaCrewReviews = [
  'Неймовірний вид на Землю з ілюмінатора, команда топ.',
  'Підготовка до польоту чітка, сервіс преміум-рівня.',
  'Маршрут до орбіти пройшов комфортно і без стресу.',
  'Найкраща пригода року, бронюємо наступну місію.',
];

class OrbitaCrewReviewsPage extends StatelessWidget {
  const OrbitaCrewReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF020617), Color(0xFF0F172A)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pushNamed(context, '/hub'),
                      icon: const Icon(Icons.space_dashboard_rounded),
                      style: IconButton.styleFrom(backgroundColor: const Color(0xFF1E293B)),
                    ),
                    const Spacer(),
                    Text(
                      'Бортові сигнали',
                      style: GoogleFonts.manrope(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => Navigator.pushNamed(context, '/missions'),
                      icon: const Icon(Icons.grid_view_rounded),
                      style: IconButton.styleFrom(backgroundColor: const Color(0xFF1E293B)),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: ListView.builder(
                    itemCount: orbitaCrewReviews.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 14),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0B1220),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x120F172A),
                              blurRadius: 16,
                              offset: Offset(0, 8),
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.format_quote_rounded, color: AppBrandTheme.accent),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                orbitaCrewReviews[index],
                                style: GoogleFonts.manrope(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
