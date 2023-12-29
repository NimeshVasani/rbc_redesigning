import 'package:flutter/material.dart';

Widget transactionCard(dynamic groupedTransactions){
  return Card(
    elevation: 5,
    color: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    child: Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50))),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Filter by',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF00008B),
                        fontSize: 18),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.filter_list,
                    color: Color(0xFF00008B),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  String category =
                  groupedTransactions.keys.elementAt(index);
                  List itemsInCategory = groupedTransactions[category];
                  return Column(
                    children: [
                      if (index == 0 ||
                          category !=
                              groupedTransactions.keys
                                  .elementAt(index - 1))
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            category,
                            style: const TextStyle(
                              color: Color(0xFF00008B),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      for (int transactionIndex = 0;
                      transactionIndex < itemsInCategory.length;
                      transactionIndex++)
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              children: [
                                Text(
                                  itemsInCategory[transactionIndex]
                                      .name,
                                  style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  itemsInCategory[transactionIndex]
                                      .amount,
                                  style: TextStyle(
                                    color: itemsInCategory[
                                    transactionIndex]
                                        .amount
                                        .startsWith('+')
                                        ? Colors.green
                                        : Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Divider(
                              height: 2,
                              thickness: 1,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                    ],
                  );
                },
                itemCount: groupedTransactions.length,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}