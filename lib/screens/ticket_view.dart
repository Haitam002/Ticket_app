import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/widgets/column_layout.dart';
import 'package:ticket_app/widgets/layout_builder.dart';
import 'package:ticket_app/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    //i create this var to call the appLayout class for getting the size
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 188,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //showing the blue part of the card/ticket
            Container(
              decoration: BoxDecoration(
                  color:
                      isColor == null ? const Color(0xFF526799) : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      //this place for NYC
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.haidLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.haidLineStyle3,
                      ),
                      //this widget make the space between things (push things left and right) with same distance
                      const Spacer(),

                      ThickContainer(
                        isColor: isColor,
                      ),
                      //this widget it the same like spacer
                      Expanded(
                          /*
                  
                  The Stack widget in Flutter allows for the overlay of multiple widgets,
                  enabling them to be positioned on top of each other in a visually layered manner.
                  
                  */
                          child: Stack(children: [
                        const SizedBox(
                            height: 24,
                            /*
                          
                          Layout builder is the responsable about the size of the (dash)----
                          
                          
                          */
                            child: AppLayoutBuilderWidget(
                                isColor: true, section: 8)),
                        Center(
                          //this widget give me the right to rotate the icon airplan
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: isColor == null
                                  ? Colors.white
                                  : const Color(0xFF8ACCF7),
                            ),
                          ),
                        ),
                      ])),

                      ThickContainer(
                        isColor: isColor,
                      ),

                      const Spacer(),
                      Text(
                        //this place for LDN destination
                        ticket['to']['code'],
                        style: isColor == null
                            ? Styles.haidLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.haidLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        //this place for new-york
                        child: Text(ticket['from']['name'],
                            style: isColor == null
                                ? Styles.haidLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.haidLineStyle4),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.haidLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.haidLineStyle4
                                .copyWith(color: Colors.black),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          //refere to london
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.haidLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.haidLineStyle4,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )

            //showing the orange part of the card
            ,
            Container(
              color: isColor == null
                  ? Styles.orangColor
                  : Colors.white, //const Color(0xFFF37B67),
              child: Row(children: [
                SizedBox(
                  //this sizedbox containe the left smal circle
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                  ),
                ),
                //this part edite the small circul in the sides of the ticket
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: isColor == null
                                              ? Colors.white
                                              : Colors.grey.shade300)),
                                )),
                      );
                    },
                  ),
                )),
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                  ),
                ),
              ]),
            ),
            //Bottom part of the orange card
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                      bottomRight: Radius.circular(isColor == null ? 21 : 0))),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 13),
              child: Column(
                children: [
                  Row(
                    //this widget give me the right to make the 2 column one in the start an the 2ed in the end
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //this class do the smae rl as the athere column
                      AppColumnLayout(
                          firstText: ticket['date'],
                          secondText: 'Date',
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor),
                      AppColumnLayout(
                          firstText: ticket['departure_time'],
                          secondText: 'Departure time',
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor),
                      AppColumnLayout(
                          firstText: ticket['number'].toString(),
                          secondText: 'Number',
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
