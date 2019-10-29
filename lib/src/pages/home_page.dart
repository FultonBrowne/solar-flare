import 'package:flutter/material.dart';
import 'package:solar_flare/src/models/destination.dart';

// import 'package:solar_flare/src/pages/list.dart';
import 'package:solar_flare/src/pages/stocks_view.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;
  final List<Destination> allDestinations = <Destination>[
    Destination(
      index: 0,
      title: 'Stocks',
      icon: Icons.show_chart,
      color: Colors.red,
    ),
    Destination(
      index: 1,
      title: 'Pay',
      icon: Icons.attach_money,
      color: Colors.red,
    ),
    Destination(
        index: 2,
        title: 'Crypto',
        icon: Icons.account_balance_wallet,
        color: Colors.red),
  ];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onBottomNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.allDestinations[_selectedIndex].title),
      ),
      body: StocksView(),
      bottomNavigationBar: BottomNavigationBar(
        items: widget.allDestinations
            .map(
              (destination) => BottomNavigationBarItem(
                icon: Icon(destination.icon),
                title: Text(destination.title),
              ),
            )
            .toList(growable: false),
        currentIndex: _selectedIndex,
        onTap: _onBottomNavItemTapped,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
      ),
    );
  }
}
