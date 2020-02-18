import 'package:solar_flare/src/models/stocks.dart';

List<Stocks> getStocks({String request}){
  var stocks = new List<Stocks>();
  stocks.add(Stocks(name: "test", graph: "assets/graphs/bitcoin_price_graph.png", growth: 1.0));
  return stocks;
}