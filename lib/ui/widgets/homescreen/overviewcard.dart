import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget overViewCard(){
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
            MainAxisAlignment.start,
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              const Text('Accounts overview',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              const Spacer(),
              Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                      BorderRadius.circular(
                          10)),
                  child: const Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  )),
              const Text('  Add',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 18,
                      fontWeight: FontWeight.w600))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment:
            MainAxisAlignment.start,
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              Text('Chequing (1234)',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                  )),
              Spacer(),
              Text('\$10,099.00',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  )),
              SizedBox(
                width: 10,
              ),
              RotatedBox(
                  quarterTurns: 2,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black54,
                    size: 20,
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment:
            MainAxisAlignment.start,
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              Text('Saving (9876)',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                  )),
              Spacer(),
              Text('\$30,000.00',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  )),
              SizedBox(
                width: 10,
              ),
              RotatedBox(
                  quarterTurns: 2,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black54,
                    size: 20,
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment:
            MainAxisAlignment.end,
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              Text('View all',
                  style: TextStyle(
                    color: Color(0xFF00008B),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),

            ],
          ),
        ],
      ),
    ),
  );
}