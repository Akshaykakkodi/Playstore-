import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({Key? key}) : super(key: key);

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[900],
        child:
        Column(
          children: [
            SizedBox(height: 50,),
            TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black87,width: 2),borderRadius: BorderRadius.all(Radius.circular(10))),
                  fillColor: Colors.grey[850],filled: true,
                  prefixIcon: Icon(Icons.search,color: Colors.grey,),
                suffixIcon: Icon(Icons.mic_none,color: Colors.grey,)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
