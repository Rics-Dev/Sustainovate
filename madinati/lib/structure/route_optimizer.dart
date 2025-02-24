import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:madinati/structure/popups/routepopup.dart';

class RouteOptimizer extends StatelessWidget {
  const RouteOptimizer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('logo.svg', height: 30),
          SizedBox(height:MediaQuery.of(context).size.height*0.06),
          Container(
            height: MediaQuery.of(context).size.width * 0.94,
            width: MediaQuery.of(context).size.width * 0.94,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.03,
                top: 15
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Location',
                labelText: 'Enter Your Location',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.03,
                top: 10
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Location',
                labelText: 'Enter Your Distination',
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            width: MediaQuery.of(context).size.width*0.94,
            height: 40,
            child: ElevatedButton(
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return OptionsPopup(); // Show the popup widget
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(5, 67, 228, 1),
                    alignment: Alignment.center,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11))
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search , size: 23,color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("Find Route" ,style: TextStyle(color: Colors.white , fontSize: 18),)
                  ],

                )
            ),
          )

        ],
      ),
    );
  }
}