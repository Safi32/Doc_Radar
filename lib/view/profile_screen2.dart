import 'package:doc_radar/view/profile_screen3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen2 extends StatefulWidget {
  @override
  _ProfileScreen2State createState() => _ProfileScreen2State();
}

class _ProfileScreen2State extends State<ProfileScreen2> {
  final _formKey = GlobalKey<FormState>();

  // Use lists to manage multiple degrees/designations
  List<TextEditingController> _degreeControllers = [TextEditingController()];
  List<TextEditingController> _instituteControllers = [TextEditingController()];
  List<TextEditingController> _designationControllers = [
    TextEditingController()
  ];
  List<TextEditingController> _hospitalControllers = [TextEditingController()];

  @override
  void dispose() {
    _degreeControllers.forEach((c) => c.dispose());
    _instituteControllers.forEach((c) => c.dispose());
    _designationControllers.forEach((c) => c.dispose());
    _hospitalControllers.forEach((c) => c.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context); // Correctly navigate back
          },
        ),
        title: Text(
          "Create your Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
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
                  "Step 2/5 - About You",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1D3D78)),
                ),
                SizedBox(height: 20),
                _buildTextField("Your Speciality"),
                SizedBox(height: 15),
                _buildTextField("Any Other Speciality"),
                SizedBox(height: 15),
                _buildTextField("Your Category"),
                SizedBox(height: 20),
                Text("Your Qualification",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      _degreeControllers.length,
                      (index) => _buildDualTextFieldRow(
                            "Degree",
                            _degreeControllers[index],
                            "Institute/University",
                            _instituteControllers[index],
                          )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          _degreeControllers.add(TextEditingController());
                          _instituteControllers.add(TextEditingController());
                        });
                      },
                      child: Text("ADD MORE")),
                ),
                SizedBox(height: 20),
                Text("Years of Experience",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      _designationControllers.length,
                      (index) => _buildDualTextFieldRow(
                            "Designation",
                            _designationControllers[index],
                            "Hospital/Clinic",
                            _hospitalControllers[index],
                          )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          _designationControllers.add(TextEditingController());
                          _hospitalControllers.add(TextEditingController());
                        });
                      },
                      child: Text("ADD MORE")),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Get.to(() => PracticeDetailsScreen());

                      // Process data
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

  Widget _buildDualTextFieldRow(
      String label1,
      TextEditingController controller1,
      String label2,
      TextEditingController controller2) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label1, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                TextFormField(
                    controller: controller1,
                    decoration: InputDecoration(border: OutlineInputBorder())),
              ],
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label2, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                TextFormField(
                    controller: controller2,
                    decoration: InputDecoration(border: OutlineInputBorder())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
