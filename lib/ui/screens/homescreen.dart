import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:rbc_redesigning/ui/widgets/homescreen/appbar.dart';
import 'package:rbc_redesigning/ui/widgets/homescreen/cardlist.dart';
import 'package:rbc_redesigning/ui/widgets/homescreen/maintitletextview.dart';
import 'package:rbc_redesigning/ui/widgets/homescreen/offerlist.dart';
import 'package:rbc_redesigning/ui/widgets/homescreen/overviewcard.dart';
import 'package:rbc_redesigning/ui/widgets/homescreen/sendmoneylist.dart';
import 'package:rbc_redesigning/ui/widgets/homescreen/transactionchart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: Colors.white,
            body: CustomScrollView(slivers: [
              customHomeScreenAppbar(),
              SliverList(
                delegate: SliverChildBuilderDelegate(

                    // The builder function returns a ListTile with a title that
                    // displays the index of the current item.
                    (context, index) => Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 30.0, bottom: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              overViewCard(),
                              const SizedBox(
                                height: 20.0,
                              ),
                              mainTitleTextView('Your cards'),
                              const SizedBox(
                                height: 20,
                              ),
                              cardList(context),
                              const SizedBox(
                                height: 20,
                              ),
                              mainTitleTextView('Send money to'),
                              const SizedBox(
                                height: 20,
                              ),
                              sendMoneyList(),
                              const SizedBox(
                                height: 20,
                              ),
                              mainTitleTextView('Funds overview'),
                              const TransactionChart(),
                              mainTitleTextView('Offers for you'),
                              const SizedBox(
                                height: 20,
                              ),
                              offerList(),
                              const SizedBox(height: 130,)
                            ],
                          ),
                        ),
                    childCount: 1),
              )
            ])));
  }
}
