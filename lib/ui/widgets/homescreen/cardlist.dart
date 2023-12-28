import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

Widget cardList(){
  return SizedBox(
    height: 220,
    width: double.infinity,
    child: Swiper(
      itemBuilder:
          (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child:Card(
            elevation: 5.0, // Set the elevation value according to your preference
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.zero,
            color: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            child:  Image.asset('assets/images/card_${index+1}.png',fit: BoxFit.fill),
          ),
        );
      },
      viewportFraction: 0.8,
      scale: 0.9,
      itemCount: 3,
      index: 1,
      loop: false,
      pagination: const SwiperPagination(
          margin: EdgeInsets.all(0.0),
          builder: DotSwiperPaginationBuilder(
              activeColor: Colors.black,
              color: Colors.black12)),
    ),
  );
}