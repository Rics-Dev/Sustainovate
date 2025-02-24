import 'package:flutter/material.dart';

class OptionsPopup extends StatefulWidget {
  @override
  _OptionsPopupState createState() => _OptionsPopupState();
}

class _OptionsPopupState extends State<OptionsPopup> {
  double walkingDistance = 50;
  double walkingSpeed = 5;
  double timeCostBalance = 50;
  double directRoutes = 50;
  bool bus = true;
  bool tram = true;
  bool metro = true;
  bool car = true;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Icon(Icons.settings_outlined , color: Color.fromRGBO(5, 67, 228, 1),),
              SizedBox(width: 10,),
              Text("Options", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
            ],),
            SizedBox(height: 16),
            
            Text("Walking Preferences" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.w700),),
            SizedBox(height : 20,),
            // Walking Preferences
            _buildSlider("Maximum Walking Distance", walkingDistance, (value) {
              setState(() => walkingDistance = value);
            }),
            _buildSlider("Walking Speed (km/h)", walkingSpeed, (value) {
              setState(() => walkingSpeed = value);
            }),
            
            // Priority Weights
            _buildSlider("Time vs Cost Balance", timeCostBalance, (value) {
              setState(() => timeCostBalance = value);
            }),
            _buildSlider("Prefer Direct Routes", directRoutes, (value) {
              setState(() => directRoutes = value);
            }),
            
            SizedBox(height : 20,),
            Text("Priority Weights" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.w700),),
            SizedBox(height : 10,),
            // Transport Modes
            _buildSwitch("Bus", bus, (value) => setState(() => bus = value)),
            _buildSwitch("Tram", tram, (value) => setState(() => tram = value)),
            _buildSwitch("Metro", metro, (value) => setState(() => metro = value)),
            _buildSwitch("Car", car, (value) => setState(() => car = value)),
            
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Save" , style: TextStyle(color : Colors.white),),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
                minimumSize: Size(double.infinity, 40),
                backgroundColor: Color.fromRGBO(5, 67, 228, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSlider(String label, double value, ValueChanged<double> onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.w500, color: const Color.fromARGB(255, 155, 155, 155))),
        Slider(
          value: value,
          min: 0,
          max: 100,
          onChanged: onChanged,
          activeColor: Color.fromRGBO(5, 67, 228, 1),
        ),
      ],
    );
  }

  Widget _buildSwitch(String label, bool value, ValueChanged<bool> onChanged) {
    return SwitchListTile(
      title: Text(label, style: TextStyle(color: Colors.black)),
      value: value,
      onChanged: onChanged,
      activeColor: Color.fromRGBO(5, 67, 228, 1),
    );
  }

}
