import 'package:doc_radar/view/profile_screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _emailController = TextEditingController();
  final _experienceController = TextEditingController();
  final _pmdcController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _mobileController.dispose();
    _emailController.dispose();
    _experienceController.dispose();
    _pmdcController.dispose();
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
                  "Step 1/5 - Sign up",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1D3D78)),
                ),
                SizedBox(height: 20),
                _buildFormField(
                    "Your Name", _nameController, TextInputType.text, (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                }),
                SizedBox(height: 15),
                _buildFormField(
                    "Mobile Number", _mobileController, TextInputType.phone,
                    (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your mobile number';
                  }
                  return null;
                }),
                SizedBox(height: 15),
                _buildFormField(
                    "Email", _emailController, TextInputType.emailAddress,
                    (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                }),
                SizedBox(height: 15),
                _buildFormField("Years of Experience", _experienceController,
                    TextInputType.number, (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter years of experience';
                  }
                  return null;
                }),
                SizedBox(height: 15),
                _buildFormField(
                    "PMDC Number", _pmdcController, TextInputType.text,
                    (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter PMDC number';
                  }
                  return null;
                }),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Process data
                      print("Name: ${_nameController.text}");
                      print("Mobile: ${_mobileController.text}");
                      print("Email: ${_emailController.text}");
                      print("Experience: ${_experienceController.text}");
                      print("PMDC: ${_pmdcController.text}");
                      Get.to(() => ProfileScreen2());

                      // Example navigation (replace with your actual route)
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => NextScreen()),
                      // );
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

  Widget _buildFormField(String label, TextEditingController controller,
      TextInputType keyboardType, String? Function(String?)? validator) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5), // Added spacing between label and text field
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          keyboardType: keyboardType,
          validator: validator,
        ),
      ],
    );
  }
}
