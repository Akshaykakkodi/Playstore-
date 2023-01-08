import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constatnts.dart';

class Appspage extends StatefulWidget {
  final Gameslist constants;
  const Appspage({Key? key,required this.constants}) : super(key: key);

  @override
  State<Appspage> createState() => _AppspageState();
}

class _AppspageState extends State<Appspage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.grey[900],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                color: Colors.grey[900],
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 80,
                        child: Center(
                            child: Text(
                              'For you',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 80,
                        child: Center(
                            child: Text(
                              'Top chart',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 80,
                        child: Center(
                            child: Text(
                              'Kids',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 80,
                        child: Center(
                            child: Text(
                              'Events',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 80,
                        child: Center(
                            child: Text(
                              'Categories',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: [
                          Text('Recommended apps for you',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15)),
                          Text(
                            'trending apps this week',
                            style: TextStyle(color: Colors.grey, fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.constants.games1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 80,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(widget
                                          .constants.apps[index]['image']),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Column(
                                            children: [
                                              Text(
                                                widget.constants.apps[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white),
                                              ),
                                              Text(
                                                widget.constants.apps[index]
                                                ['subtitle'],
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.grey),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(left: 15),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                        widget.constants
                                                            .apps[index]
                                                        ['rating'],
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey)),
                                                    Icon(Icons.star,
                                                        color: Colors.grey,
                                                        size: 12),
                                                    Text(
                                                      widget.constants.apps[index]
                                                      ['size'],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ))),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.constants.games1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 80,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(widget
                                          .constants.apps[index]['image']),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Column(
                                            children: [
                                              Text(
                                                widget.constants.apps[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white),
                                              ),
                                              Text(
                                                widget.constants.apps[index]
                                                ['subtitle'],
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.grey),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(left: 15),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                        widget.constants
                                                            .apps[index]
                                                        ['rating'],
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey)),
                                                    Icon(Icons.star,
                                                        color: Colors.grey,
                                                        size: 12),
                                                    Text(
                                                      widget.constants.apps[index]
                                                      ['size'],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ))),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.constants.games1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 80,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(widget
                                          .constants.apps[index]['image']),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Column(
                                            children: [
                                              Text(
                                                widget.constants.apps[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white),
                                              ),
                                              Text(
                                                widget.constants.apps[index]
                                                ['subtitle'],
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.grey),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(left: 15),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                        widget.constants
                                                            .apps[index]
                                                        ['rating'],
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey)),
                                                    Icon(Icons.star,
                                                        color: Colors.grey,
                                                        size: 12),
                                                    Text(
                                                      widget.constants.apps[index]
                                                      ['size'],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ))),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 170,
                  width: 290,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.neowin.com/news/images/uploaded/2016/04/google-play-2016-logoa_story.jpg"),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.constants.games1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 80,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(widget
                                          .constants.apps[index]['image']),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Column(
                                            children: [
                                              Text(
                                                widget.constants.apps[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white),
                                              ),
                                              Text(
                                                widget.constants.apps[index]
                                                ['subtitle'],
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.grey),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(left: 15),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                        widget.constants
                                                            .apps[index]
                                                        ['rating'],
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey)),
                                                    Icon(Icons.star,
                                                        color: Colors.grey,
                                                        size: 12),
                                                    Text(
                                                      widget.constants.apps[index]
                                                      ['size'],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ))),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.constants.games1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 80,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(widget
                                          .constants.apps[index]['image']),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Column(
                                            children: [
                                              Text(
                                                widget.constants.apps[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white),
                                              ),
                                              Text(
                                                widget.constants.apps[index]
                                                ['subtitle'],
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.grey),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(left: 15),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                        widget.constants
                                                            .apps[index]
                                                        ['rating'],
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey)),
                                                    Icon(Icons.star,
                                                        color: Colors.grey,
                                                        size: 12),
                                                    Text(
                                                      widget.constants.apps[index]
                                                      ['size'],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ))),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
