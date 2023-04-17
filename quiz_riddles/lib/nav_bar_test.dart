import 'package:flutter/material.dart';

class navigatorBar extends StatelessWidget {
  const navigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.white,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        NavigationDestination(
          icon: Icon(Icons.file_copy),
          label: 'Actividades',
        ),
        NavigationDestination(
          icon: Icon(Icons.leaderboard),
          label: 'Estadísticas',
        ),
        NavigationDestination(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
    );
  }
}
