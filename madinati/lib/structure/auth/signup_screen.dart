import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:madinati/structure/auth/validation.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? firstName, lastName, email, phoneNumber, password;
  String? selectedCountryCode = '+213';
  List<String> countryCodes = ['+213', '+1', '+44', '+33'];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Center(child: SvgPicture.asset('assets/logo.svg', height: 30)),
              SizedBox(height: 30),
              Text(
                'Create Your \nAccount!',
                style: TextStyle(
                  fontFamily: "Geom",
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: Colors.blue.shade900,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Enter Your Personal Information",
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Urbanist",
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 25),
              buildTextField('First Name', 'Abdelkader'),
              buildTextField('Last Name', 'Saidi'),
              buildTextField('Email', 'abdou@gmail.com'),
              SizedBox(height: 15),
              Text(
                'Phone Number',
                style: TextStyle(color: Color.fromARGB(255, 182, 182, 182), fontSize: 14),
              ),
              Row(
                children: [
                  DropdownButton<String>(
                    value: selectedCountryCode,
                    underline: Container(),
                    items:
                        countryCodes.map((String code) {
                          return DropdownMenuItem<String>(
                            value: code,
                            child: Text(code, style: TextStyle(fontSize: 16 , color: Color.fromARGB(255, 182, 182, 182))),
                          );
                        }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCountryCode = newValue;
                      });
                    },
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: '0000000000',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 182, 182, 182),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              buildPasswordField('Password', '****************'),
              SizedBox(height: 10),
              Text(
                "Your password should be at least 8 characters long and include a mix of uppercase letters, lowercase letters, numbers, and special characters.",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>PhoneVerificationScreen()));
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacementNamed(context, '/signin'),
                  child: Text(
                    "Already have an account? Log in",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(child: Text("Or")),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/google.svg', height: 20),
                      SizedBox(width: 10),
                      Text(
                        'Sign up with Google',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: Colors.grey, fontSize: 14)),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 182, 182, 182),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget buildPasswordField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: Colors.grey, fontSize: 14)),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 182, 182, 182),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
        ),
      ],
    );
  }
}
