import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastScreen extends StatefulWidget {
  const ToastScreen({super.key});

  @override
  State<ToastScreen> createState() => _ToastScreenState();
}

class _ToastScreenState extends State<ToastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: const Text('FLUTTER TOASTS'),
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              makeToast();
            },
            child: Text('Show pop-up here!'),
          ),
        ),
      ),
    );
  }

  void makeToast() {
    Fluttertoast.showToast(
        msg:
            "This pop up came because you clicked on its button. it is a top toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.blue.shade300,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
