import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pstore/appspage.dart';
import 'package:pstore/bookspage.dart';
import 'package:pstore/offerspage.dart';
import 'package:pstore/searchPage.dart';

import 'constatnts.dart';
import 'homepage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexnum=0;
  List pages =[
    Homepage(constants: Gameslist(),),
    Appspage(constants: Gameslist(),),
    Offerspage(),
    Bookspage(constants: Gameslist())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
        title: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Searchpage();
                },
              ));
            },
            child: Container(
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.search),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Search apps & games',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.mic),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset_rounded),
            label: 'Games',
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: 'Apps',
              backgroundColor: Colors.black87),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'Offers',
              backgroundColor: Colors.black87),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Books',
              backgroundColor: Colors.black87)
        ],
        showUnselectedLabels: true,
        currentIndex: indexnum,
        onTap: (int index) {
          setState(() {
            indexnum = index;
          });
        },
      ),
      body: pages.elementAt(indexnum),
    );
  }
}
