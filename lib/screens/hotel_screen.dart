import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  //here i call the hotelList from app_info_Liste
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    //print("Hotel price is ${hotel['price']}");
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height:350,
      //this paddig who make the space bitween the images
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      //this margin helped us to make the color separeted
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 1)
          ]),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"))),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: Styles.haidLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: Styles.haidLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            ' \$${hotel['price']}/night',
            style: Styles.haidLineStyle3.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
