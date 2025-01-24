import 'package:flutter/material.dart';

class DoctorPopUp extends StatelessWidget {
  const DoctorPopUp({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Expanded(
        child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 4,
              ),
            ],
          ),
          child: const Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage:
                    NetworkImage("https://via.placeholder.com/150"),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Dr. John Doe",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "5.0",
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Image(
                        image: AssetImage(
                          "assets/person_running.png",
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Text(
                        "3.5km/50min",
                      ),
                    ],
                  ),
                  Text("Dentist"),
                  Text(
                    "Consulation fees : 1000PKR",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
