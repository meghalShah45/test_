// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutterfire_samples/res/custom_colors.dart';

class AmountPage extends StatelessWidget {
  final Map _amount;

  AmountPage(this._amount);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var padding = EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0);
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: (_amount['transactions'] as List).length + 1,
      itemBuilder: (context, i) {
        if (i == 0) {
          return Padding(
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Total Expense', style: TextStyle(color: CustomColors.firebaseGrey)),
                SizedBox(height: 8.0),
                Text(_amount['balance'], style: textTheme.display1.apply(color: CustomColors.firebaseGrey)),
                SizedBox(height: 24.0),
                Text('Today', style: TextStyle(color: CustomColors.firebaseGrey)),
              ],
            ),
          );
        }
        var transactions = _amount['transactions'][i - 1];
        return Padding(
          padding: padding,
          child: Row(
            children: <Widget>[
              Icon(Icons.shopping_cart, size: 24.0, color: Colors.blueGrey[600]),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(transactions['mode'], style: textTheme.title.apply(color: CustomColors.firebaseGrey)),
                    Text(transactions['time'], style: textTheme.caption)
                  ],
                ),
              ),
              Text(transactions['amount'], style: textTheme.body2.apply(color: CustomColors.firebaseGrey))
            ],
          ),
        );
      },
    );
  }
}