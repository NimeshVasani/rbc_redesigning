import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

Widget offerList() {
  var offerNames = [
    'Exclusive Apple Device Offers Await You at RBC!',
    'Sip, Savor, Save! Indulge in Irresistible Offers at Tim Hortons ☕🍩',
    'Fresh Deals Every Day! Discover Exciting Offers at FreshCo for a Flavorful Shopping Experience 🛒🌿'
  ];
  return AspectRatio(
    aspectRatio: 1.5,
    child: Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/offers_${index + 1}.png',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                 Text(
                  offerNames[index],
                  style: const TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                )
              ],
            ));
      },
      viewportFraction: 1,
      scale: 1,
      itemCount: 3,
      index: 1,
      loop: false,
      pagination: const SwiperPagination(
          margin: EdgeInsets.all(0.0),
          builder: DotSwiperPaginationBuilder(
              activeColor: Colors.black, color: Colors.black12)),
    ),
  );
}
