import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: const Text('OUR SERVICES'),
      ),
      body: ListView(
        children: [
          Image(
            image: AssetImage('assets/images/cake1.jpeg'),
          ),
          // Text(
          //     'Dreams Decor World is an events company that deals in cake function/event decorations'
          //     'We also deal in decoration material hire and catering services'
          //     'We are located at Mawanda Road, near mawanda road police.'
          //     'Contact us now to grab your chance of having your events look nicer and memorable'),
          Row(
            children: [
              Text('Cake baking'),
              Text('Event Decoration'),
              Text('Decoration material hire'),
            ],
          )
        ],
      ),
    );
  }
}
