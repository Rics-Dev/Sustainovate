import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SosScreen extends StatelessWidget {
  const SosScreen({super.key});

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _copyToClipboard(String text, BuildContext context) async {
    await Clipboard.setData(ClipboardData(text: text));
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Number copied to clipboard')),
      );
    }
  }

  Widget _buildEmergencyCard({
    required String title,
    required String number,
    required IconData icon,
    required Color iconColor,
    required BuildContext context,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF0543E4)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, color: iconColor, size: 24),
            const SizedBox(width: 12),
            Flexible(
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFF0543E4),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    number,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
              child: OutlinedButton(
                onPressed: () => _makePhoneCall(number),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.green),
                  backgroundColor: Colors.green.shade100,
                  foregroundColor: Colors.green,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.phone, size: 16),
                    SizedBox(width: 4),
                    Text('Call'),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              height: 35,
              child: OutlinedButton(
                onPressed: () => _copyToClipboard(number, context),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue),
                  backgroundColor: Colors.blue.shade50,
                  foregroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.copy, size: 16),
                    SizedBox(width: 4),
                    Text('Copy'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              SvgPicture.asset('assets/logo.svg', height: 30),
            ],
          ),
          actions: [
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'SOS',
                      style: TextStyle(
                        fontFamily: "Geom",
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    IconButton(
                      color: Colors.blueAccent.shade700,
                      icon: const Icon(Icons.settings),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              _buildEmergencyCard(
                title: 'Police station',
                number: '1548',
                icon: Icons.local_police,
                iconColor: Colors.blue,
                context: context,
              ),
              _buildEmergencyCard(
                title: 'Medical Emergency',
                number: '1457',
                icon: Icons.medical_services,
                iconColor: Colors.red,
                context: context,
              ),
              _buildEmergencyCard(
                title: 'Firefighters',
                number: '2564',
                icon: Icons.fire_truck,
                iconColor: Colors.red,
                context: context,
              ),
              _buildEmergencyCard(
                title: 'Road Assistance',
                number: '0456562521',
                icon: Icons.build,
                iconColor: Colors.grey,
                context: context,
              ),
              _buildEmergencyCard(
                title: 'Electricity & Gaz',
                number: '0456562521',
                icon: Icons.bolt,
                iconColor: Colors.amber,
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}