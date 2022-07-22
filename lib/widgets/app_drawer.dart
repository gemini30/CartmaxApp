import 'package:flutter/material.dart';
import '../helpers/custome_route.dart';

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
            color: Theme.of(context).colorScheme.secondary,
          ),
          title: Text(
            'Shop',
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.of(context).pushNamed('/');
          },
          textColor: Theme.of(context).colorScheme.secondary,
          tileColor: Colors.black87,
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.payment,
            color: Theme.of(context).colorScheme.secondary,
          ),
          title: Text(
            'Orders',
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(OrdersScreen.routeName);
            // Navigator.of(context)
            //     .pushReplacement(CustomRoute(builder: (ctx) => OrdersScreen()));
          },
          textColor: Theme.of(context).colorScheme.secondary,
          tileColor: Colors.black87,
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.edit,
            color: Theme.of(context).colorScheme.secondary,
          ),
          title: Text(
            'Manage Products',
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(UserProductsScreen.routeName);
          },
          textColor: Theme.of(context).colorScheme.secondary,
          tileColor: Colors.black87,
        ),
      ]),
    );
  }
}
