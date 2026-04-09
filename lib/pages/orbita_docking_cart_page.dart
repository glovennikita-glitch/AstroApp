import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/theme/app_brand_theme.dart';

class OrbitaDockingCartPage extends StatelessWidget {
  const OrbitaDockingCartPage({super.key});

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
                      'Стикувальний модуль',
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
                const SizedBox(height: 20),
                const _CartDishCard(),
                const SizedBox(height: 14),
                const _CartDishCard(),
                const Spacer(),
                SizedBox(
                  width: 200,
                  child: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      backgroundColor: AppBrandTheme.accent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    ),
                    child: Text(
                      'Підтвердити бронювання',
                      style: GoogleFonts.manrope(fontWeight: FontWeight.w700, fontSize: 13),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 28),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CartDishCard extends StatelessWidget {
  const _CartDishCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF0B1220),
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [BoxShadow(color: Color(0x1A0F172A), blurRadius: 18, offset: Offset(0, 8))],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
            child: Image.asset(
              'assets/cart_mission.png',
              width: double.infinity,
              height: 128,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Row(
              children: [
                Text(
                  'Місія Luna-1',
                  style: GoogleFonts.manrope(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                Text(
                  '150 000 credits',
                  style: GoogleFonts.manrope(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppBrandTheme.accent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
