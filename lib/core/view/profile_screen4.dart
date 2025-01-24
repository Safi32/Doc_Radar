import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'congratulation_screen.dart';

class ClinicDetailsScreen extends StatefulWidget {
  @override
  _ClinicDetailsScreenState createState() => _ClinicDetailsScreenState();
}

class _ClinicDetailsScreenState extends State<ClinicDetailsScreen> {
  TimeOfDay _startTime = TimeOfDay(hour: 12, minute: 00);
  TimeOfDay _endTime = TimeOfDay(hour: 12, minute: 00);
  Map<String, bool> _selectedDays = {
    "Mon": false,
    "Tue": false,
    "Wed": false,
    "Thur": false,
    "Fri": false,
    "Sat": false,
    "Sun": false,
  };
  bool _fixedTime = false;
  bool _flexibleTime = false;
  bool _anyTime = false;

  Future<void> _selectTime(BuildContext context, bool isStart) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: isStart ? _startTime : _endTime,
    );
    if (picked != null) {
      setState(() {
        if (isStart) {
          _startTime = picked;
        } else {
          _endTime = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Create your Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Step 5/5 - Add Clinic Details",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1D3D78)),
              ),
              SizedBox(height: 20),
              Text("Select Days",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Column(
                children: [
                  Row(
                    children: [
                      _buildDayCheckbox("Mon"),
                      _buildDayCheckbox("Tue"),
                      _buildDayCheckbox("Wed"),
                      _buildDayCheckbox("Thur"),
                    ],
                  ),
                  Row(
                    children: [
                      _buildDayCheckbox("Fri"),
                      _buildDayCheckbox("Sat"),
                      _buildDayCheckbox("Sun"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                      child: _buildTimePicker("Start Time", _startTime, true)),
                  SizedBox(width: 10),
                  Expanded(
                      child: _buildTimePicker("End Time", _endTime, false)),
                ],
              ),
              SizedBox(height: 15),
              _buildTextField("Your Fee"),
              SizedBox(height: 15),
              _buildSwitchWithText("Fixed Time", _fixedTime,
                  (value) => setState(() => _fixedTime = value)),
              _buildTextDescription(),
              SizedBox(height: 10),
              _buildSwitchWithText("Flexible Time", _flexibleTime,
                  (value) => setState(() => _flexibleTime = value)),
              _buildTextDescription(),
              SizedBox(height: 10),
              _buildSwitchWithText("Any Time", _anyTime,
                  (value) => setState(() => _anyTime = value)),
              _buildTextDescription(),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => ProfileCreatedScreen());

                  // Handle continue
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff1D3D78),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                child: Text("Continue to next step",
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder())),
      ],
    );
  }

  Widget _buildTimePicker(String label, TimeOfDay time, bool isStart) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        InkWell(
          onTap: () => _selectTime(context, isStart),
          child: InputDecorator(
            decoration: InputDecoration(border: OutlineInputBorder()),
            child: Text(time.format(context)),
          ),
        ),
      ],
    );
  }

  Widget _buildDayCheckbox(String day) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: _selectedDays[day],
          onChanged: (bool? value) {
            setState(() {
              _selectedDays[day] = value!;
            });
          },
        ),
        Text(day),
      ],
    );
  }

  Widget _buildSwitchWithText(
      String text, bool value, Function(bool) onChanged) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween, // Align switch to the right
      children: [
        Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
        Switch(
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }

  Widget _buildTextDescription() {
    return Text(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.",
      style: TextStyle(fontSize: 12),
    );
  }
}
