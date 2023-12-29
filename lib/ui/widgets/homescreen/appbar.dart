import 'package:flutter/material.dart';

SliverAppBar customHomeScreenAppbar() {
  return SliverAppBar(
    surfaceTintColor: Colors.white,
    backgroundColor: Colors.white,
    toolbarHeight: kToolbarHeight,
    automaticallyImplyLeading: false,
    expandedHeight: 200,
    flexibleSpace: FlexibleSpaceBar(
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 0.0, right: 20.0, top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  'Mr. Vasani',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.notifications_on,
              color: Colors.black,
              size: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  'assets/images/user_1.png',
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                ))
          ],
        ),
      ),
      background: SizedBox(
          width: double.infinity,
          height: 250,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Image.asset(
              'assets/images/rbc_back_2.png',
            ),
          )),
      expandedTitleScale: 1,
    ),

    pinned: true,
    snap: true,
    floating: true,
  );
}
