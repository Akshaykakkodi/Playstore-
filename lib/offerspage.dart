import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Offerspage extends StatefulWidget {
  const Offerspage({Key? key}) : super(key: key);

  @override
  State<Offerspage> createState() => _OfferspageState();
}

class _OfferspageState extends State<Offerspage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image(image: NetworkImage('https://fedmobile.federalbank.co.in/wp-content/uploads/2021/05/FedMobile-665-x-430.jpg')))
          ],
        ),
      ),
    );
  }
}
