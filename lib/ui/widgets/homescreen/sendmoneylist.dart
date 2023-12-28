import 'package:flutter/material.dart';

Widget sendMoneyList(){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Card(
        elevation: 5,
        color: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: const Icon(
            Icons.add,
            size: 30,
            color: Colors.black,
            weight: 60,
          ),
        ),
      ),

      Expanded(
        child: SizedBox(
            height: 60,
            child: ListView.builder(
              itemBuilder: (BuildContext context,
                  int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Card(
                      elevation: 5,
                      color: Colors.transparent,
                      surfaceTintColor:
                      Colors.transparent,
                      margin: EdgeInsets.zero,
                      shadowColor: Colors.transparent,
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(
                              20),
                          color: Colors.transparent,
                        ),
                        child: Image.asset(
                          'assets/images/user_${index+1}.png',
                          fit: BoxFit.cover,
                        ),
                      )),
                );
              },
              itemCount: 7,
              scrollDirection: Axis.horizontal,
            )),
      )
    ],
  );
}