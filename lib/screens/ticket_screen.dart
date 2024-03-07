
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/screens/ticket_view.dart';
import 'package:ticket_app/utils/app_info_liste.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/widgets/column_layout.dart';
import 'package:ticket_app/widgets/layout_builder.dart';
import 'package:ticket_app/widgets/ticket_tabs.dart';
class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const Gap(40),
              Text(
                'Tickets',
                style: Styles.haidLineStyle1,
              ),
              const Gap(20),
              const AppTicketTabs(firstTab: "Upcoming ", secondTab: "Previous"),
              const Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: 'Haitam Agh',
                            secondText: 'Passenger',
                            alignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          AppColumnLayout(
                            firstText: '5221 364869',
                            secondText: 'passport',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      const Gap(15),
                      const AppLayoutBuilderWidget(
                        isColor: true,
                        section: 15,
                        width: 5,
                      ),
                      const Gap(15),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: '844848902749',
                            secondText: 'Number of E-ticket',
                            alignment: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          AppColumnLayout(
                            firstText: 'B2SG28',
                            secondText: 'Booking code',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                      const Gap(15),
                      const AppLayoutBuilderWidget(
                        isColor: true,
                        section: 15,
                        width: 5,
                      ),
                      const Gap(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/visa.png',
                                    scale: 11,
                                  ),
                                  Text(
                                    "***2467",
                                    style: Styles.haidLineStyle3,
                                  )
                                ],
                              ),
                              const Gap(5),
                              Text(
                                'Payement method',
                                style: Styles.haidLineStyle4,
                              ),
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: '\$249.99',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      ),
                    ],
                  )),
              const SizedBox(
                height: 1,
              ),
              /*
                     bar code
                     */
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(21),
                        bottomLeft: Radius.circular(21))),
                margin: const EdgeInsets.only(left: 15, right: 15),
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://gethub.com/martinovovo',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              const Gap(15),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          /*
          this part is reponsible for the circles in the pages 
          */
          Positioned(
            left: 25,
            top: 300,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: 25,
            top: 300,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
