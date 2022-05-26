import 'package:flutter/material.dart';

import '../screens/orders_screen.dart';
import '../screens/user_products_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        AppBar(
          title: Text('Happy Shopping'),
          automaticallyImplyLeading: false,
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.local_mall,
            color: Theme.of(context).accentColor,
          ),
          title: Text(
            'Shop',
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.of(context).pushNamed('/');
          },
          textColor: Theme.of(context).accentColor,
          tileColor: Colors.black87,
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.payment,
            color: Theme.of(context).accentColor,
          ),
          title: Text(
            'Orders',
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(OrdersScreen.routeName);
          },
          textColor: Theme.of(context).accentColor,
          tileColor: Colors.black87,
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.edit,
            color: Theme.of(context).accentColor,
          ),
          title: Text(
            'Manage Products',
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(UserProductsScreen.routeName);
          },
          textColor: Theme.of(context).accentColor,
          tileColor: Colors.black87,
        ),
      ]),
    );
  }
}
