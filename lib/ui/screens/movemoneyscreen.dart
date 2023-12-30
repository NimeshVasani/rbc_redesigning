import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rbc_redesigning/ui/screens/sendmoneyscreen.dart';
import 'package:rbc_redesigning/ui/widgets/movemoneyscreen/appbar.dart';
import 'package:rbc_redesigning/ui/widgets/movemoneyscreen/listitems.dart';

class MoveMoneyScreen extends StatefulWidget {
  const MoveMoneyScreen({super.key});

  @override
  State<MoveMoneyScreen> createState() => _MoveMoneyScreenState();
}

class _MoveMoneyScreenState extends State<MoveMoneyScreen> {
  var listName = [
    'Interact e-Transfer',
    'Transfer Between My Accounts',
    'Pay a Bill',
    'Send to an RBC Client',
    'Deposit a Cheque',
    'Split with Friends',
    'Cross-Border Transfer',
    'International Money Transfer'
  ];
  var listIcon = [
    Icons.money,
    Icons.sync,
    Icons.paypal_outlined,
    Icons.supervised_user_circle_outlined,
    Icons.camera_alt_outlined,
    Icons.call_split_outlined,
    Icons.move_down_outlined,
    Icons.zoom_out_map
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: appBar('Move your Funds 💵'),
      body: SafeArea(
        top: false,
        maintainBottomViewPadding: false,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
                onTap: () {
                  Navigator.push(
                      context, CupertinoPageRoute(builder: (context) {
                    return const SendMoneyScreen();
                  }));
                },
                child: listItems(listName[index], listIcon[index]));
          },

          itemCount: listName.length,
          padding: const EdgeInsets.only(top: 20.0),
        ),
      ),
    );
  }
}
