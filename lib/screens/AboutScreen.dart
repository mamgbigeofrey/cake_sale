import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: const Text('ABOUT US'),
      ),
      body: Column(
        children: const [
          Image(
            image: AssetImage('assets/images/cake1.jpeg'),
          ),
          Text(
              'Dreams Decor World is an events company that deals in cake function/event decorations'
              'We also deal in decoration material hire and catering services'
              'We are located at Mawanda Road, near mawanda road police.'
              'Contact us now to grab your chance of having your events look nicer and memorable'
              ''),
        ],
      ),
    );
  }
}
