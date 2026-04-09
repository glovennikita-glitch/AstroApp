import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrbitaCommandPage extends StatelessWidget {
  const OrbitaCommandPage({super.key});

  static const String _topVisual = 'assets/hub_top_nebula.png';
  static const String _bottomVisual = 'assets/hub_bottom_planet.png';

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
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(_topVisual, fit: BoxFit.fitWidth),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(_bottomVisual, fit: BoxFit.fitWidth),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () => Navigator.pushNamed(context, '/'),
                        icon: const Icon(Icons.exit_to_app_rounded),
                        style: IconButton.styleFrom(
                          backgroundColor: const Color(0xFF1E293B).withValues(alpha: 0.9),
                        ),
                      ),
                    ),
                    const Spacer(),
                    _NavTile(
                      label: 'Карта місій',
                      onTap: () => Navigator.pushNamed(context, '/missions'),
                    ),
                    _divider(),
                    _NavTile(
                      label: 'Галактичні знижки',
                      onTap: () => Navigator.pushNamed(context, '/promos'),
                    ),
                    _divider(),
                    _NavTile(
                      label: 'Бортові сигнали',
                      onTap: () => Navigator.pushNamed(context, '/transmissions'),
                    ),
                    _divider(),
                    _NavTile(
                      label: 'Про флот',
                      onTap: () => Navigator.pushNamed(context, '/fleet'),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _divider() => const Divider(
        height: 1,
        thickness: 1,
        color: Color(0x22FFFFFF),
      );
}

class _NavTile extends StatelessWidget {
  const _NavTile({
    required this.label,
    required this.onTap,
  });

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withValues(alpha: 0.9),
                    letterSpacing: 0.15,
                  ),
                ),
              ),
              Icon(
                Icons.double_arrow_rounded,
                size: 22,
                color: Colors.white.withValues(alpha: 0.35),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
