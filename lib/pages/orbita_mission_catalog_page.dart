import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/theme/app_brand_theme.dart';

final List<Map<String, String>> orbitaMissionCatalog = [
  {
    'image': 'assets/mission_luna.png',
    'title': 'Орбіта Luna-1',
    'price': 'від 150 000 credits'
  },
  {
    'image': 'assets/mission_mars.png',
    'title': 'Політ Mars-3',
    'price': 'від 300 000 credits'
  },
  {
    'image': 'assets/mission_saturn.png',
    'title': 'Круїз Saturn Ring',
    'price': 'від 520 000 credits'
  },
];

class OrbitaMissionCatalogPage extends StatelessWidget {
  const OrbitaMissionCatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF020617), Color(0xFF111827)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pushNamed(context, '/hub'),
                      icon: const Icon(Icons.keyboard_return_rounded),
                      style: IconButton.styleFrom(backgroundColor: const Color(0xFF1E293B)),
                    ),
                    const Spacer(),
                    Text(
                      'Каталог місій',
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
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(bottom: 18),
                  children: const [
                    _MenuSection(title: 'Найближчі запуски'),
                    _MenuSection(title: 'Міжпланетні маршрути'),
                    _MenuSection(title: 'VIP-круїзи'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuSection extends StatelessWidget {
  const _MenuSection({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text(
              title,
              style: GoogleFonts.manrope(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppBrandTheme.ink.withValues(alpha: 0.9),
              ),
            ),
          ),
          SizedBox(
            height: 215,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: orbitaMissionCatalog.length,
              itemBuilder: (context, index) => _DishCard(item: orbitaMissionCatalog[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class _DishCard extends StatelessWidget {
  const _DishCard({required this.item});

  final Map<String, String> item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      margin: const EdgeInsets.only(right: 14, bottom: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF0B1220),
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(color: Color(0x140F172A), blurRadius: 16, offset: Offset(0, 8)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
            child: Image.asset(item['image']!, height: 145, fit: BoxFit.cover),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['title']!,
                    style: GoogleFonts.manrope(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    item['price']!,
                    style: GoogleFonts.manrope(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppBrandTheme.accent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
