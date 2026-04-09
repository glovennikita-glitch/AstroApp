import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Екран «Про флот» — окремо від каталогу місій.
class OrbitaFleetAboutPage extends StatelessWidget {
  const OrbitaFleetAboutPage({super.key});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 16, 12),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pushNamed(context, '/hub'),
                      icon: const Icon(Icons.keyboard_return_rounded),
                      style: IconButton.styleFrom(backgroundColor: const Color(0xFF1E293B)),
                    ),
                    Expanded(
                      child: Text(
                        'Про флот Orbita',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.manrope(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 48),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: Text(
                    'Orbita — це флот орбітальних і міжпланетних рейсів нового покоління. '
                    'Ми поєднуємо безпеку, комфорт і точність маршрутів.\n\n'
                    'Наша місія — зробити космічні подорожі зрозумілими та доступними: '
                    'від тренувань на орбіті до VIP-круїзів між планетами.',
                    style: GoogleFonts.manrope(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 1.45,
                      color: Colors.white.withValues(alpha: 0.88),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
