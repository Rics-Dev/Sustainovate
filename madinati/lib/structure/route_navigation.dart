import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RouteNavigation extends StatefulWidget {
  const RouteNavigation({super.key});

  @override
  State<RouteNavigation> createState() => _RouteNavigationState();
}

class _RouteNavigationState extends State<RouteNavigation> {
  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _toController = TextEditingController();

  @override
  void dispose() {
    _fromController.dispose();
    _toController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/logo.svg', height: 30),
                    IconButton(
                      icon: const Icon(Icons.settings),
                      color: Colors.blueAccent.shade700,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Route Optimizer',
                  style: TextStyle(
                    fontFamily: "Geom",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _fromController,
                  decoration: InputDecoration(
                    hintText: 'USTHB',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.all(16),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _toController,
                  decoration: InputDecoration(
                    hintText: 'Ain benian',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.all(16),
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent.shade700,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'Find route',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _buildRouteOption(
                          icon: Icons.tram,
                          iconColor: Colors.blue,
                          leafIcon: Icons.eco,
                          leafColor: Colors.green,
                          transportType: 'Tramway',
                          from: 'Université de Bab Zouar',
                          to: 'Ruisseau',
                          distance: '960m',
                          duration: '2min',
                          cost: '25DZD',
                        ),
                        _buildRouteOption(
                          icon: Icons.subway,
                          iconColor: Colors.blue,
                          transportType: 'Metro',
                          from: 'Ruisseau',
                          to: 'Plaçe des Martyrs',
                          distance: '960m',
                          duration: '2min',
                          cost: '25DZD',
                        ),
                        _buildRouteOption(
                          icon: Icons.directions_bus,
                          iconColor: Colors.blue,
                          transportType: 'Bus',
                          from: 'Plaçe des Martyrs',
                          to: 'Ain benian',
                          distance: '960m',
                          duration: '2min',
                          cost: '25DZD',
                          isLast: true,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blue.shade50,
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(12),
                            ),
                            side: BorderSide(color: Colors.blue)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.check, color: Colors.blue),
                              SizedBox(width: 8),
                              Text(
                                'Take this route',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildCarOption(
                          from: 'Université de Bab Zouar',
                          to: 'Ruisseau',
                          distance: '11km',
                          duration: '20min',
                          cost: '700DZD',
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent.shade700,
                                  minimumSize: const Size(double.infinity, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.check, color: Colors.white),
                                    SizedBox(width: 8),
                                    Text(
                                      'Covoiturage',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade50,
                                  minimumSize: const Size(double.infinity, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  side: BorderSide(color: Colors.blue),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(width: 8),
                                    Image.asset(
                                      'assets/yassir.png',
                                      height: 20,
                                    ),
                                    const Text(
                                      'Book with Yassir',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRouteOption({
    required IconData icon,
    required Color iconColor,
    IconData? leafIcon,
    Color? leafColor,
    required String transportType,
    required String from,
    required String to,
    required String distance,
    required String duration,
    required String cost,
    bool isLast = false,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: iconColor),
            ),
            if (leafIcon != null) ...[
              const SizedBox(width: 4),
              Icon(leafIcon, color: leafColor, size: 16),
            ],
            const SizedBox(width: 8),
            Text(
              transportType,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(width: 20),
            Container(
              width: 2,
              height: 60,
              color: isLast ? Colors.transparent : Colors.blue,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$from → $to',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Distance: $distance   Duration: $duration   Cost: $cost',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCarOption({
    required String from,
    required String to,
    required String distance,
    required String duration,
    required String cost,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.directions_car, color: Colors.blue),
            ),
            const SizedBox(width: 8),
            const Text(
              'Car',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          '$from → $to',
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 4),
        Text(
          'Distance: $distance   Duration: $duration   Cost: $cost',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}