import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/widgets/column_layout.dart';
import 'package:ticket_app/widgets/layout_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 105,
                width: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/img_1.png")),
                ),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.haidLineStyle1,
                  ),
                  const Gap(2),
                  Text(
                    'New-York',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  const Gap(8),
                  //this part is about the shield and the text of premium
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(5),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        ),
                        const Gap(5),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("you are tapped");
                    },
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ],
          ),
          const Gap(8),
          Divider(
            color: Colors.grey.shade300,
          ),
          const Gap(8),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              /*this part is the responssable about the bleu circle  and this widget positioned give me the right to make my cirle in every position */
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: const Color(0xFF264CD2),
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    const Gap(12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'You\'v got a new award',
                          style: Styles.haidLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'You have 95 flights in a year',
                          style: Styles.haidLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const Gap(25),
          Text(
            "Accumulated miles",
            style: Styles.haidLineStyle2,
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1)
                ]),
            child: Column(
              children: [
                const Gap(15),
                Text(
                  "192802",
                  style: TextStyle(
                      fontSize: 45,
                      color: Styles.textColor,
                      fontWeight: FontWeight.w600),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.haidLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "19 July 2023",
                      style: Styles.haidLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const Gap(4),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const Gap(4),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "23 042",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "Airlines CO",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                const Gap(12),
                const AppLayoutBuilderWidget(
                  section: 12,
                  isColor: false,
                ),
                const Gap(12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "McDoanal's",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                const Gap(12),
                const AppLayoutBuilderWidget(
                  section: 12,
                  isColor: false,
                ),
                const Gap(12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "52 340",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "DBestech",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(25),
          Center(
            child: Text(
              'How to get more miles',
              style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
