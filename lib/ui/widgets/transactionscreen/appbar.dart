import 'package:flutter/material.dart';
import 'package:rbc_redesigning/ui/widgets/transactionscreen/transactionaccount.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 300,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    title: transactionAccount(context),
    automaticallyImplyLeading: false,
  );
}
