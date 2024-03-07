import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/widgets/double_text_widget.dart';
import 'package:ticket_app/widgets/icon_text_widget.dart';
import 'package:ticket_app/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            'What are\nyou looking for?',
            style: Styles.haidLineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          const AppTicketTabs(
            firstTab: 'Airline Tickets ',
            secondTab: 'Hotels',
          ),
          const Gap(25),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          const Gap(20),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          const Gap(25),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xD91130CE),
              ),
              child: Center(
                child: Text(
                  'Find tickes',
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              )),
          const Gap(20),
          const AppDoubleTextWidget(
              bigText: "Upcoming flights", smallText: "view all"),
          const Gap(15),
          //this is the  Row that containe
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 430,
                width: size.width * 0.42,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/sit.jpg"))),
                    ),
                    const Gap(12),
                    Text(
                      '20% discount the early booking of this flight. Don\'t miss ',
                      style: Styles.haidLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: 220,
                        decoration: BoxDecoration(
                            color: const Color(0xFF3ABBBB),
                            borderRadius: BorderRadius.circular(18)),
                        padding:
                          const  EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey",
                                style: Styles.haidLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            const Gap(10),
                            Text(
                                "Take the survay about our services and get  discount",
                                style: Styles.haidLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                      //this container is the responssable about the ring
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  const Gap(10),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    width: size.width * 0.44,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: Styles.haidLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(20),
                        RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: 38),
                            ),
                            TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: 50),
                            ),
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 38),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
