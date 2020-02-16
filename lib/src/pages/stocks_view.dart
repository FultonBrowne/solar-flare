import 'package:flutter/material.dart';
import 'package:solar_flare/src/models/stocks.dart';

class StocksView extends StatelessWidget {
  final TextStyle titleTextStyle =
      TextStyle(color: Colors.black87, fontSize: 18);
  final TextStyle goodGrowth = TextStyle(color: Colors.blue, fontSize: 18);
  final TextStyle badGrowth = TextStyle(color: Colors.red, fontSize: 18);

  final List<Stocks> stocks = [
    Stocks(
        name: "Bitcoin",
        graph: 'assets/graphs/bitcoin_price_graph.png',
        growth: -5.2),
    Stocks(
        name: "Libra",
        graph: 'assets/graphs/libra_price_graph.png',
        growth: -2.4),
    Stocks(
        name: "Ethereum",
        graph: 'assets/graphs/ethereum_price_graph.png',
        growth: 8.4),
        Stocks(
        name: "test",
        graph: 'assets/graphs/ethereum_price_graph.png',
        growth: 8.4),
  ];

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
