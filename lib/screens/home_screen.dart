import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/screens/hotel_screen.dart';
import 'package:ticket_app/screens/ticket_view.dart';
import 'package:ticket_app/utils/app_info_liste.dart';
import 'package:ticket_app/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
//this is page will be displayed when i m cliking on the home icon
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            //this padding make the space in the beguining and the end of the secreen
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(25),
                Row(
                  //this widget helped me to make the photo at the end
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Column(
                      //this widget give me the right to make my text starting at the beginning
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.haidLineStyle3,
                        ),
                        //Gap is like the widget SizedBoX(horizontal: 5 ) ; gap know how to make the space it's depending if it is a Row or a column
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.haidLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/img_1.png"))),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.grey,
                      ),
                      Text(
                        'Search',
                        style: Styles.haidLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Flights',
                      style: Styles.haidLineStyle2,
                    ),
                    //inkwell widget make the text interactive
                    InkWell(
                      onTap: () {
                        // print("you are taped");
                      },
                      child: Text(
                        'View all',
                        style:
                            //the widget copywith give me the possibility to change the color of the text color who is already declared
                            Styles.textStyle
                                .copyWith(color: Styles.primaryColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              //here i set the liste of the tickets
              children: ticketList
                  .map((SingelTicket) => TicketView(
                        ticket: SingelTicket,
                        //here when i declare this proprietie null any change in the class ticketview don't affect this part
                        isColor: null,
                      ))
                  .toList(),
            ),
          ),
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotels',
                  style: Styles.haidLineStyle2,
                ),
                //inkwell widget make the text interactive
                InkWell(
                  onTap: () {
                    // print("you are taped");
                  },
                  child: Text(
                    'View all',
                    style:
                        //the widget copywith give me the possibility to change the color of the text color who is already declared
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              //this map contain 3 part that why i have three  blocs(tsawar dyal hotel )
              children: hotelList
                  .map((Singlehotel) => HotelScreen(hotel: Singlehotel))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
