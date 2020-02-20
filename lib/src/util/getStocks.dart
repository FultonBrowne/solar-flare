import 'package:solar_flare/src/models/stocks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

List<Stocks> getStocks({String request}){
  var stocks = new List<Stocks>();
  final HttpLink httpLink = HttpLink(
    uri: 'https://api.github.com/graphql',
  );
  stocks.add(Stocks(name: "test", graph: "assets/graphs/bitcoin_price_graph.png", growth: 1.0));
  return stocks;
}