import 'package:flutter/material.dart';
import 'package:solar_flare/src/models/stocks.dart';
import 'package:solar_flare/src/util/getStocks.dart';

class StocksView extends StatelessWidget {
  final TextStyle titleTextStyle =
      TextStyle(color: Colors.black87, fontSize: 18);
  final TextStyle goodGrowth = TextStyle(color: Colors.blue, fontSize: 18);
  final TextStyle badGrowth = TextStyle(color: Colors.red, fontSize: 18);

  final List<Stocks> stocks = getStocks(request: "");
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
            children: stocks
                .map((s) => Card(
                      child: ListView(
                        padding: EdgeInsets.all(16),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                          children: <Widget>[
                            Text(
                              s.name,
                              style: titleTextStyle,
                            ),
                            Image.asset(s.graph, height: 30),
                            Text(
                              "${s.growth > 0 ? "+" : ""}${s.growth}%",
                              style: s.growth > 0 ? goodGrowth : badGrowth,
                            )
                          ],

                      ),
                    ))
                .toList())
        );
  }
}
