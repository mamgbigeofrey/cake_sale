import 'package:cake_sale/screens/AboutScreen.dart';
import 'package:cake_sale/screens/ProductsScreen.dart';
import 'package:cake_sale/screens/ServicesScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade500,
          title: const Center(child: Text('DREAMS DECOR WORLD')),
        ),
        body: ListView(
          children: [
            Image(
              image: AssetImage('assets/images/decor2.jpeg'),
              width: 500,
              height: 300,
            ),
            Text(
              'Welcome to Dreams Decor World where you get all your future function insights',
            ),

            //services screen

            ListTile(
              title: Text('Services'),
              subtitle:
                  Text('Click to view the list of services that we offer'),
              leading: Icon(Icons.design_services_rounded),
              trailing: Icon(Icons.chevron_right_outlined),
              contentPadding: EdgeInsets.all(10),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServicesScreen(),
                  ),
                );
              },
            ),
//products screen
            ListTile(
              title: Text('Our products'),
              subtitle: Text('Click to view all our available products'),
              leading: Icon(Icons.production_quantity_limits),
              trailing: Icon(Icons.chevron_right_outlined),
              contentPadding: EdgeInsets.all(10),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductsScreen(),
                  ),
                );
              },
            )
          ],
        ),
        backgroundColor: Colors.blueGrey.shade100,
      ),
    );
  }
}
