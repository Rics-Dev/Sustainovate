import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              SvgPicture.asset('assets/logo.svg', height: 30),
              SizedBox(height: 30),
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome back ,', style: TextStyle(fontSize: 14)),
                      Text(
                        'Mr Abdelmalek CHETTA',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Quick Links',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  QuickLinkItem(icon: Icons.warning, label: 'SOS\n'),
                  QuickLinkItem(icon: Icons.map, label: 'Nearby \nStations'),
                  QuickLinkItem(
                    icon: Icons.payment,
                    label: 'Buy Or \nRecharge',
                  ),
                  QuickLinkItem(icon: Icons.eco, label: 'Green \nTracker'),
                ],
              ),
              SizedBox(height: 20),
              Image.asset('assets/banner.png'),
              SizedBox(height: 20),
              Text(
                'Payments Hub',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.60,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(5, 67, 228, 1),
                              blurRadius: 1,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.credit_card,
                                    color: Color.fromRGBO(5, 67, 228, 1),
                                    size: 18,
                                  ),
                                  SizedBox(width: 8),
                                  Text("My Cards", style: TextStyle(fontSize: 12)),
                                  Spacer(),
                                  Text(
                                    "View Details",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromRGBO(5, 67, 228, 1),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 3),
                              Card(cardid: "metro #1234", renewale: "08/12/2025"),
                              SizedBox(height: 3),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width * 0.60 - 20,
                                color: const Color.fromARGB(255, 175, 175, 175),
                              ),
                              SizedBox(height: 3),
                              Card(cardid: "tramway #1234", renewale: "07/11/2026"),
                              SizedBox(height: 3),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width * 0.60 - 20,
                                color: const Color.fromARGB(255, 175, 175, 175),
                              ),
                              SizedBox(height: 3),
                              Card(cardid: "train #1234", renewale: "08/12/2025"),
                              SizedBox(height: 3),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width * 0.60 - 20,
                                color: const Color.fromARGB(255, 175, 175, 175),
                              ),
                              SizedBox(height: 3),
                              Card(cardid: "Etusa #1234", renewale: "07/11/2026"),
                              SizedBox(height: 3),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width * 0.60 - 20,
                                color: const Color.fromARGB(255, 175, 175, 175),
                              ),
                              SizedBox(height: 3),
                              Card(
                                cardid: "rokoub el mawja #1234",
                                renewale: "08/12/2025",
                              ),
                              SizedBox(height: 3),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width * 0.60 - 20,
                                color: const Color.fromARGB(255, 175, 175, 175),
                              ),
                              SizedBox(height: 3),
                              Card(cardid: "metro #1234", renewale: "08/12/2025"),
                              SizedBox(height: 3),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width * 0.60 - 20,
                                color: const Color.fromARGB(255, 175, 175, 175),
                              ),
                              SizedBox(height: 3),
                              Card(cardid: "metro #1234", renewale: "08/12/2025"),
                              SizedBox(height: 3),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width * 0.60 - 20,
                                color: const Color.fromARGB(255, 175, 175, 175),
                              ),
                              SizedBox(height: 3),
                              Card(cardid: "metro #1234", renewale: "08/12/2025"),
                              SizedBox(height: 3),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width * 0.60 - 20,
                                color: const Color.fromARGB(255, 175, 175, 175),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.28,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(5, 67, 228, 1),
                              blurRadius: 1,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.rocket_launch_outlined,
                                  color: Color.fromRGBO(5, 67, 228, 1),
                                  size: 18,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Points \nEarned",
                                  style: TextStyle(fontSize: 11),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: MediaQuery.of(context).size.width * 0.12,
                              width: MediaQuery.of(context).size.width * 0.12,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/coin.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "30 Coin",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                fontSize: MediaQuery.of(context).size.width * 0.032,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "100 points = 30% discount on your next purshase",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 165, 165, 165),
                                fontSize: MediaQuery.of(context).size.width * 0.02,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Add spacing between container and button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 110, // Set the desired width
                        height: 35, // Set the desired height
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero, // Remove default padding for gradient
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            elevation: 0,
                          ),
                          onPressed: () {},
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF0543E4), // Starting color #0543E4
                                  Color(0xFF03257E), // Ending color #03257E
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Buy Ticket',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),

              Text(
                'Sustainability Impact',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20),
              SustainabilityImpactSection(),

              SizedBox(height: 20),
              DiscoverSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String cardid;
  final String renewale;
  const Card({required this.cardid, required this.renewale, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(cardid, style: TextStyle(fontSize: 12, color: Colors.black)),
        Spacer(),
        Text(renewale, style: TextStyle(fontSize: 12, color: Colors.black)),
      ],
    );
  }
}

class QuickLinkItem extends StatelessWidget {
  final IconData icon;
  final String label;

  QuickLinkItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.18,
          width: MediaQuery.of(context).size.width * 0.18,
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(5, 67, 228, 1)),
            borderRadius: BorderRadius.circular(11),
          ),
          child: Icon(icon, size: 28, color: Color.fromRGBO(5, 67, 228, 1)),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

class SustainabilityImpactSection extends StatelessWidget {
  const SustainabilityImpactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(Icons.eco, color: Colors.green),
          SizedBox(width: 10),
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8,
              ), // 80% of screen width
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the start
                children: [
                  Text(
                    'CO₂ Saved This Month',
                    style: TextStyle(fontSize: 12, color: Colors.green),
                  ),
                  SizedBox(height: 4), // Add some spacing between the texts
                  Text(
                    'You saved 1kg of CO₂, which is equivalent to the amount of CO₂ absorbed by one tree in a year!',
                    style: TextStyle(fontSize: 12),
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

class CardItem extends StatelessWidget {
  final String cardType;
  final String cardNumber;
  final String renewalDate;

  CardItem({
    required this.cardType,
    required this.cardNumber,
    required this.renewalDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$cardType: $cardNumber', style: TextStyle(fontSize: 14)),
          Text(renewalDate, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}







class DiscoverSection extends StatelessWidget {
  const DiscoverSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Discover',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'See all',
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(5, 67, 228, 1),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DiscoverCard(
                imageUrl: 'assets/discover1.png',
                title: 'How Green Mobility is Transforming Urban Transportation',
                date: 'Sat, Nov 21 2024',
              ),
              SizedBox(width: 15),
              DiscoverCard(
                imageUrl: 'assets/discover3.png',
                title: 'The Future of Transportation & Innovation',
                date: 'Sat, Nov 21 2024',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DiscoverCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String date;

  const DiscoverCard({
    required this.imageUrl,
    required this.title,
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey.withOpacity(0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(5, 67, 228, 1),
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