import 'package:flutter/material.dart';

Widget listItems(String title, IconData icon) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      elevation: 5,
      surfaceTintColor: Colors.transparent,
      color: Colors.transparent,
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              width: 10,
            ),
            Icon(
              icon,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
              size: 30,
            ),
            const SizedBox(
              width: 20.0,
            )
          ],
        ),
      ),
    ),
  );
}
