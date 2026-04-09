import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/theme/app_brand_theme.dart';

final List<Map<String, String>> orbitaPromotions = [
  {
    'image': 'assets/offer_night_orbit.png',
    'title': '-30% на нічні орбітальні рейси'
  },
  {
    'image': 'assets/offer_eva_tour.png',
    'title': 'Безкоштовний EVA-тур до першої місії'
  },
  {
    'image': 'assets/offer_vip_mars.png',
    'title': 'VIP-каюта в подарунок на Mars-3'
  },
];

class OrbitaPromotionsPage extends StatelessWidget {
  const OrbitaPromotionsPage({super.key});

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
                      'Галактичні знижки',
                      style: GoogleFonts.manrope(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => Navigator.pushNamed(context, '/dock'),
                      icon: const Icon(Icons.shopping_cart_checkout_rounded),
                      style: IconButton.styleFrom(backgroundColor: const Color(0xFF1E293B)),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: ListView.builder(
                    itemCount: orbitaPromotions.length,
                    itemBuilder: (context, index) {
                      final currentItem = orbitaPromotions[index];
                      return Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0B1220),
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x1A0F172A),
                              blurRadius: 18,
                              offset: Offset(0, 8),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
                              child: Image.asset(currentItem['image']!, height: 180, fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(14),
                              child: Text(
                                currentItem['title']!,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.manrope(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
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
                Text(
                  'Знижки оновлюються перед кожним запуском',
                  style: GoogleFonts.manrope(
                    fontSize: 13,
                    color: AppBrandTheme.ink.withValues(alpha: 0.6),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 14),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
