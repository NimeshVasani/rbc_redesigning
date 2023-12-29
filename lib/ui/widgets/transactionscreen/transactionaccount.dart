import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget transactionAccount(BuildContext context) {
  return Column(
    children: [
       Row(
        children: [
          InkWell(onTap: (){
            Navigator.pop(context);
          },
              child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)),
          SizedBox(width: 10,),
          Text(
            "Hello Nimesh, Here's Transaction",
            maxLines: 2,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 200,
        width: 300,
        child: Card(
          elevation: 20.0,
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          shadowColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          child: Image.asset('assets/images/card_1.png', fit: BoxFit.fill),
        ),
      ),
    ],
  );
}
