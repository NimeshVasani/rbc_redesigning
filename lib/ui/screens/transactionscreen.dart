import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rbc_redesigning/ui/utils/transaction.dart';
import 'package:rbc_redesigning/ui/widgets/transactionscreen/appbar.dart';
import 'package:rbc_redesigning/ui/widgets/transactionscreen/transactionMaincard.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {


  var groupedTransactions;

  @override
  void initState() {
    super.initState();
    groupedTransactions =
        groupBy(creditCardTransaction, (Transaction transaction) => transaction.date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: appBar(context),
      body: SafeArea(
          top: false,
          bottom: false,
          maintainBottomViewPadding: false,
          child: transactionCard(groupedTransactions)),
    );
  }
}

Map<K, List<V>> groupBy<K, V>(Iterable<V> values, K Function(V) keyFunction) {
  final map = <K, List<V>>{};
  for (var element in values) {
    final key = keyFunction(element);
    if (!map.containsKey(key)) {
      map[key] = <V>[];
    }
    map[key]!.add(element);
  }
  return map;
}
