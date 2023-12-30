import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
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
      backgroundColor: Colors.white,
      appBar: appBar('Interact e-Transfer'),
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 20,
              ),
              userDetailCard(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: SwipeButton.expand(
                  borderRadius: BorderRadius.circular(20.0),
                  height: 70,
                  thumb: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  activeThumbColor: Colors.green,
                  activeTrackColor: Colors.green.shade200,
                  onSwipe: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Money Sent"),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  child: const Text(
                    "Send ...",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0,top: 20.0),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.of(context).size.width,
                  child: Expanded(
                    child: TextButton(
                      clipBehavior: Clip.hardEdge,
                        onPressed: () {},
                        child: const Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
