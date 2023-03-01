import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/widgets/double_text_view.dart';
import 'package:ticket_booking/widgets/icon_text.dart';
import 'package:ticket_booking/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding:EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children : [
          Gap(AppLayout.getHeight(90)),
          Text("What are\n you looking for?", style: Styles.headerStyle.copyWith(fontSize: AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(50)),
          const TicketTab(firstTab: "Airline tickets", secondTab: "Hotels"),
          Gap(AppLayout.getHeight(50)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(30)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(30)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(20),
                horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              color: Color(0xD91130CE),
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10))
            ),
            child:Center(
              child: Text(
                "find tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),),
            )
          ),
          Gap(AppLayout.getHeight(45)),
          const AppTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(455),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(20),
                    vertical:  AppLayout.getWidth(20),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 3,
                      spreadRadius: 2,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(25)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/sit.jpg"
                          )
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out",
                      style: Styles.headerStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: AppLayout.getHeight(180),
                        decoration: BoxDecoration(
                            color: const Color(0xFF3ABBBB),
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getHeight(15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headerStyle2.copyWith(fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the services survey today and get the discount",
                              style: Styles.headerStyle2.copyWith(fontWeight: FontWeight.w400,
                                  color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -30,
                          top: -20,
                          child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(20)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color: Color(0xFF189999)),
                            color: Colors.transparent
                        ),
                      ))
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(250),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: Colors.deepOrange
                    ),
                    child: Column(
                      children: [
                        Text("Take Love", style: Styles.headerStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
                        Gap(AppLayout.getHeight(7)),
                        RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "😍",
                                  style: TextStyle(fontSize: 38)
                                ),
                                TextSpan(
                                    text: "🥰",
                                    style: TextStyle(fontSize: 38)
                                ),
                                TextSpan(
                                    text: "😘",
                                    style: TextStyle(fontSize: 38)
                                ),
                              ]
                            )
                        )
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
