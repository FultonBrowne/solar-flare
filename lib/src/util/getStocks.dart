import 'package:solar_flare/src/models/stocks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';


 getStocks(String sym) async {
  HttpLink link = HttpLink(uri: "to do"); // you can also use headers for authorization etc.
  GraphQLClient client = GraphQLClient(link: link, cache: InMemoryCache());

  QueryOptions query = QueryOptions(
      document: "query getSingleCourse(\$courseID: String!) \{" +
      "course(id: \$courseID) {"
    "sym\n"
    "price\n"
  "\}"
,
variables: {'id' : sym}
  );

  var result = await client.query(query);
}