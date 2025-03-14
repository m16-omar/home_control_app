import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const Text(
            'Car Key App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          const Icon(
            Icons.directions_car,
            size: 100,
            color: Colors.purple,
          ),
          const SizedBox(height: 20),
          const Text(
            'Welcome, Umar!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildActionButton(const Icon(Icons.lock_open), 'Unlock'),
              const SizedBox(width: 25),
              _buildActionButton(const Icon(Icons.power_settings_new), 'Start'),
              const SizedBox(width: 25),
              _buildActionButton(const Icon(Icons.lock), 'Lock'),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildActionButton(
                SvgPicture.asset(
                  'assets/icons/car_trunk.svg',
                  height: 20,
                  width: 25,
                ),
                'Trunk',
              ),
              const SizedBox(width: 25),
              _buildActionButton(const Icon(Icons.ac_unit), 'A/C'),
              const SizedBox(width: 25),
              _buildActionButton(const Icon(Icons.directions_car), 'Share'),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.wifi, color: Colors.green, size: 30),
              const SizedBox(width: 10),
              const Text(
                'Connected',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(Widget icon, String label) {
    return Column(
      children: [
        FloatingActionButton(
          backgroundColor: Colors.purple,
          onPressed: () {},
          child: icon,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          heroTag: label,
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ],
    );
  }
}
