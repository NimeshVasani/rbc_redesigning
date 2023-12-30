import 'package:flutter/material.dart';
import 'package:rbc_redesigning/ui/widgets/movemoneyscreen/appbar.dart';
import 'package:rbc_redesigning/ui/widgets/sendmoneyscreen/userdetailcard.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({super.key});

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Interact e-Transfer'),
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
            child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  userDetailCard(),
                ],
              ),
            ),


      ),
    );
  }
}
