import 'package:doc_radar/utils/colors.dart';
import 'package:doc_radar/view/confirmation.dart';
import 'package:doc_radar/widgets/auth_button.dart';
import 'package:doc_radar/widgets/doctor_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorDetailDragsheet extends StatelessWidget {
  const DoctorDetailDragsheet({super.key});

  void _showDraggableBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.4,
          minChildSize: 0.2,
          maxChildSize: 0.8,
          builder: (context, scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: DoctorsDetailSheet(
                scrollController: scrollController,
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => _showDraggableBottomSheet(context));

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/maps.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 100,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: GestureDetector(
                    onTap: () {
                      Get.to(() => const Confirmation());
                    },
                    child: const Icon(
                      Icons.search,
                    ),
                  ),
                  hintText: "Avenue",
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorsDetailSheet extends StatelessWidget {
  final ScrollController scrollController;

  const DoctorsDetailSheet({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      padding: const EdgeInsets.all(10),
      children: [
        const SizedBox(height: 10),
        Center(
          child: Container(
            width: 50,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Column(
          children: [
            const Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                ),
                Text(
                  "Doctor Details",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: AppColors.circleAvatar,
                    ),
                    Positioned(
                      bottom: 5,
                      right: 0,
                      child: Image(
                        image: AssetImage(
                          "assets/done_profile.png",
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.Zaman Zaheer",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Dentist",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage(
                              "assets/profile_location.png",
                            ),
                          ),
                          Text(
                            "  HIT, Taxila",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Image(
                            image: AssetImage(
                              "assets/Icon.png",
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "1000 PKR",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1.0,
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DoctorDetailsWidget(
                  imageUrl: "assets/doc_details_image1.png",
                  title: '7,500 + \n Patients',
                ),
                DoctorDetailsWidget(
                  imageUrl: "assets/doc_details_image2.png",
                  title: '10 + \n Year Exp.',
                ),
                DoctorDetailsWidget(
                  imageUrl: "assets/doc_details_image 3.png",
                  title: '4.9+ \n Ratings',
                ),
                DoctorDetailsWidget(
                  imageUrl: "assets/doc_details_image4.png",
                  title: '4,956 \n Review',
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "About",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.share,
                  ),
                ],
              ),
            ),
            const Text.rich(
              TextSpan(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, \n sed do eiusmod tempor incididunt ut labore et dolore \n magna aliqua ",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "Read More",
                    style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            AuthButton(
              title: "Accept",
              onPressed: () {
                Get.to(
                  () => const Confirmation(),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
