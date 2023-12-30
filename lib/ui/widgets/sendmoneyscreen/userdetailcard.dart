import 'package:flutter/material.dart';

Widget userDetailCard() {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        surfaceTintColor: Colors.transparent,
        color: Colors.transparent,
        child: Container(
          clipBehavior: Clip.hardEdge,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: const Padding(
            padding: EdgeInsets.only(
                top: 50.0, bottom: 50.0, left: 20.0, right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'From',
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownMenu(
                  dropdownMenuEntries: [
                    DropdownMenuEntry(
                        value: 'Chequing(1234)', label: 'Chequing(1234)'),
                    DropdownMenuEntry(
                        value: 'Saving(9876)', label: 'Saving(9876)'),
                  ],
                  label: Text('Select account'),
                  expandedInsets: EdgeInsets.zero,
                  menuStyle: MenuStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green),
                      surfaceTintColor:
                          MaterialStatePropertyAll(Colors.transparent)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Amount',
                  style: TextStyle(color: Colors.black45),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    textInputAction: TextInputAction.done,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(20.0),
                        hintText: 'Enter Amount')),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'To',
                  style: TextStyle(color: Colors.black45),
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownMenu(
                  dropdownMenuEntries: [
                    DropdownMenuEntry(
                        value: 'Nimesh Vasani', label: 'Nimesh Vasani'),
                    DropdownMenuEntry(
                        value: 'Nimesh Patel', label: 'Nimesh Patel'),
                  ],
                  label: Text('Select Recipient'),
                  expandedInsets: EdgeInsets.zero,
                  menuStyle: MenuStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green),
                      surfaceTintColor:
                          MaterialStatePropertyAll(Colors.transparent)),
                ),
              ],
            ),
          ),
        ),
      ));
}
