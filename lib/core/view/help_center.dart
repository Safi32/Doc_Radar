// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
            SizedBox(
              width: 110,
            ),
            Text(
              'Help Center',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 21),
              SizedBox(
                height: 47,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          'FAQ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        if (selectedIndex == 0)
                          Container(
                            height: 5,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          'Contact Us',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        if (selectedIndex == 1)
                          Container(
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            width: 80,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 10),
              Divider(
                color: Colors.grey,
                thickness: 1,
                height: 0,
              ),
              if (selectedIndex == 0) buildFAQTab(),
              if (selectedIndex == 1) buildContactUsContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFAQTab() {
    return Column(
      children: [
        SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildCategoryChip('All', 0),
              buildCategoryChip('Services', 1),
              buildCategoryChip('General', 2),
              buildCategoryChip('Account', 3),
            ],
          ),
        ),
        SizedBox(height: 10),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: List.generate(6, (index) {
            return Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey, width: 1),
                color: Colors.white,
              ),
              child: ExpansionTile(
                title: Text(
                  getQuestionTitle(index),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: Text(
                      getAnswerContent(index),
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget buildContactUsContent() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
            width: 400,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey, width: 0.5),
            ),
            child: ListTile(
              leading: Icon(
                Icons.headphones,
                size: 25,
                color: Color(0xff1D3D78),
              ),
              title: Text(
                'Customer Service',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
            )),
        SizedBox(
          height: 5,
        ),
        Container(
            width: 400,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey, width: 0.5),
            ),
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.instagram,
                size: 25,
                color: Color(0xffDB2BB7),
              ),
              title: Text(
                'Instagram',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
            )),
        SizedBox(
          height: 5,
        ),
        Container(
            width: 400,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey, width: 0.5),
            ),
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.whatsapp,
                size: 25,
                color: Colors.green.withOpacity(0.75),
              ),
              title: Text(
                'WhatsApp',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
            )),
        SizedBox(
          height: 5,
        ),
        Container(
            width: 400,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey, width: 0.5),
            ),
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.intercom,
                size: 25,
                color: Color(0xff7CA3EC),
              ),
              title: Text(
                'Website',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
            )),
        SizedBox(
          height: 5,
        ),
        Container(
            width: 400,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey, width: 0.5),
            ),
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.facebook,
                size: 25,
                color: Color(0xff2F5DB4),
              ),
              title: Text(
                'Facebook',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
            )),
        SizedBox(
          height: 5,
        ),
        Container(
            width: 400,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey, width: 0.5),
            ),
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.twitter,
                size: 25,
                color: Color(0xff2F5DB4).withOpacity(0.75),
              ),
              title: Text(
                'Twitter',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
            )),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }

  int selectedChipIndex = 0;

  Widget buildCategoryChip(String label, int index) {
    bool isSelected = selectedChipIndex == index;

    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedChipIndex = index; // Update the selected chip index
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: isSelected ? Color(0xff1D3D78) : Colors.white,
            borderRadius: BorderRadius.circular(20.0), // Circular border
            border: Border.all(
              color: isSelected ? Color(0xff1D3D78) : Colors.grey,
            ),
          ),
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  String getQuestionTitle(int index) {
    return [
      "How do I schedule an appointment?",
      "Can I reschedule or cancel an appointment?",
      "How do I receive appointment reminders?",
      "How to check pre-booked appointments?",
      "How do I pay for appointments?",
      "Is telemedicine available through the app?"
    ][index];
  }

  String getAnswerContent(int index) {
    return [
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "Yes, appointments can be rescheduled or canceled up to 24 hours before the scheduled time.",
      "You can receive reminders via email or push notifications by enabling these in the app settings.",
      "To check pre-booked appointments, go to the 'My Appointments' section in the app.",
      "You can pay for appointments using credit/debit cards or online payment options available in the app.",
      "Yes, telemedicine is available. You can book a virtual consultation through the app."
    ][index];
  }
}
