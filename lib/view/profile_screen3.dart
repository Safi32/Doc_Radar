import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile_screen4.dart';

class PracticeDetailsScreen extends StatefulWidget {
  @override
  _PracticeDetailsScreenState createState() => _PracticeDetailsScreenState();
}

class _PracticeDetailsScreenState extends State<PracticeDetailsScreen> {
  final _formKey = GlobalKey<FormState>();
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
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Create your Profile"),
        actions: [
          TextButton(
            onPressed: () {
              // Handle Skip
            },
            child: Text("Skip", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "Step 3/5 - Practice Details",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                _buildTextField("Select City"),
                SizedBox(height: 15),
                _buildTextField("Select Hospital"),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                        child: Text("Areas of Interests",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Expanded(child: _buildTextField("Interest")),
                  ],
                ),
                SizedBox(height: 15),
                Text("Review Address",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(height: 15),
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
                      child: _buildTimePicker("Start Time", _startTime, true),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: _buildTimePicker("End Time", _endTime, false),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                _buildTextField("Your Fee"),
                SizedBox(height: 15),
                _buildTextField("Assistant Name"),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Get.to(() => ClinicDetailsScreen());

                      // Process Data
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff1D3D78),
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: Text(
                    "Continue to next step",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
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
}
