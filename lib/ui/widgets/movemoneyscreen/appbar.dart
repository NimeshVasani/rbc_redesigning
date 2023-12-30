import 'package:flutter/material.dart';

AppBar appBar(String title) {
  return AppBar(
    toolbarHeight: 80,
    backgroundColor: Colors.black87,
    surfaceTintColor: Colors.transparent,
    automaticallyImplyLeading: true,
    iconTheme: const IconThemeData(
      color: Colors.white54, //change your color here
    ),
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Spacer(),
        SizedBox(
          width: 250,
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.white54)),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Help ❓",
              maxLines: 2,
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
  );
}
