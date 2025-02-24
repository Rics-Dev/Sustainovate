import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
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
              Center(child: SvgPicture.asset('assets/logo.svg', height: 30)),
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
              Image.asset('banner.png'),
              SizedBox(height: 20),
              Text(
                'Payments Hub',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
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
                          blurRadius: 3,
                          spreadRadius: 2,
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
                          card(cardid: "metro #1234", renewale: "08/12/2025"),
                          SizedBox(height: 3),
                          Container(
                            height: 1,
                            width:
                                MediaQuery.of(context).size.width * 0.60 - 20,
                            color: const Color.fromARGB(255, 175, 175, 175),
                          ),

                          SizedBox(height: 3),
                          card(cardid: "tramway #1234", renewale: "07/11/2026"),
                          SizedBox(height: 3),
                          Container(
                            height: 1,
                            width:
                                MediaQuery.of(context).size.width * 0.60 - 20,
                            color: const Color.fromARGB(255, 175, 175, 175),
                          ),

                          SizedBox(height: 3),
                          card(cardid: "train #1234", renewale: "08/12/2025"),
                          SizedBox(height: 3),
                          Container(
                            height: 1,
                            width:
                                MediaQuery.of(context).size.width * 0.60 - 20,
                            color: const Color.fromARGB(255, 175, 175, 175),
                          ),

                          SizedBox(height: 3),
                          card(cardid: "Etusa #1234", renewale: "07/11/2026"),
                          SizedBox(height: 3),
                          Container(
                            height: 1,
                            width:
                                MediaQuery.of(context).size.width * 0.60 - 20,
                            color: const Color.fromARGB(255, 175, 175, 175),
                          ),

                          SizedBox(height: 3),
                          card(
                            cardid: "rokoub el mawja #1234",
                            renewale: "08/12/2025",
                          ),
                          SizedBox(height: 3),
                          Container(
                            height: 1,
                            width:
                                MediaQuery.of(context).size.width * 0.60 - 20,
                            color: const Color.fromARGB(255, 175, 175, 175),
                          ),

                          SizedBox(height: 3),
                          card(cardid: "metro #1234", renewale: "08/12/2025"),
                          SizedBox(height: 3),
                          Container(
                            height: 1,
                            width:
                                MediaQuery.of(context).size.width * 0.60 - 20,
                            color: const Color.fromARGB(255, 175, 175, 175),
                          ),

                          SizedBox(height: 3),
                          card(cardid: "metro #1234", renewale: "08/12/2025"),
                          SizedBox(height: 3),
                          Container(
                            height: 1,
                            width:
                                MediaQuery.of(context).size.width * 0.60 - 20,
                            color: const Color.fromARGB(255, 175, 175, 175),
                          ),

                          SizedBox(height: 3),
                          card(cardid: "metro #1234", renewale: "08/12/2025"),
                          SizedBox(height: 3),
                          Container(
                            height: 1,
                            width:
                                MediaQuery.of(context).size.width * 0.60 - 20,
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
                          blurRadius: 3,
                          spreadRadius: 2,
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
                              image: AssetImage("coin.png"),
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

              SizedBox(height: 20),
              Text(
                'Sustainability Impact',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20),
              SustainabilityImpactSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  final String cardid;
  final String renewale;
  const card({required this.cardid, required this.renewale, super.key});

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
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.8,
            ), // 80% of screen width
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Aligns text to the start
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
