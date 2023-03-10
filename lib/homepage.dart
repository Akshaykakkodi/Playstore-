import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pstore/searchPage.dart';

import 'constatnts.dart';

class Homepage extends StatefulWidget {
  final Gameslist constants;
  const Homepage({Key? key, required this.constants}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int indexnum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(



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
                          Text('New & updated games',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15)),
                          Text(
                            'selected games of the week',
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
                        width: 220,
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
                                          .constants.games1[index]['image']),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              image: DecorationImage(
                                                image: NetworkImage(widget.constants
                                                    .games1[index]['image']),
                                                fit: BoxFit.fill,
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Column(
                                            children: [
                                              Text(
                                                widget.constants.games1[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white),
                                              ),
                                              Text(
                                                widget.constants.games1[index]
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
                                                            .games1[index]
                                                        ['rating'],
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey)),
                                                    Icon(Icons.star,
                                                        color: Colors.grey,
                                                        size: 12),
                                                    Text(
                                                      widget.constants.games1[index]
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
                        width: 220,
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
                                          .constants.games1[index]['image']),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              image: DecorationImage(
                                                image: NetworkImage(widget.constants
                                                    .games1[index]['image']),
                                                fit: BoxFit.fill,
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Column(
                                            children: [
                                              Text(
                                                widget.constants.games1[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white),
                                              ),
                                              Text(
                                                widget.constants.games1[index]
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
                                                            .games1[index]
                                                        ['rating'],
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey)),
                                                    Icon(Icons.star,
                                                        color: Colors.grey,
                                                        size: 12),
                                                    Text(
                                                      widget.constants.games1[index]
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
                        width: 220,
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
                                          .constants.games1[index]['image']),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              image: DecorationImage(
                                                image: NetworkImage(widget.constants
                                                    .games1[index]['image']),
                                                fit: BoxFit.fill,
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Column(
                                            children: [
                                              Text(
                                                widget.constants.games1[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white),
                                              ),
                                              Text(
                                                widget.constants.games1[index]
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
                                                            .games1[index]
                                                        ['rating'],
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey)),
                                                    Icon(Icons.star,
                                                        color: Colors.grey,
                                                        size: 12),
                                                    Text(
                                                      widget.constants.games1[index]
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
                        width: 220,
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
                                          .constants.games1[index]['image']),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              image: DecorationImage(
                                                image: NetworkImage(widget.constants
                                                    .games1[index]['image']),
                                                fit: BoxFit.fill,
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Column(
                                            children: [
                                              Text(
                                                widget.constants.games1[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white),
                                              ),
                                              Text(
                                                widget.constants.games1[index]
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
                                                            .games1[index]
                                                        ['rating'],
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey)),
                                                    Icon(Icons.star,
                                                        color: Colors.grey,
                                                        size: 12),
                                                    Text(
                                                      widget.constants.games1[index]
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
                        width: 220,
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
                                          .constants.games1[index]['image']),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              image: DecorationImage(
                                                image: NetworkImage(widget.constants
                                                    .games1[index]['image']),
                                                fit: BoxFit.fill,
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Column(
                                            children: [
                                              Text(
                                                widget.constants.games1[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white),
                                              ),
                                              Text(
                                                widget.constants.games1[index]
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
                                                            .games1[index]
                                                        ['rating'],
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey)),
                                                    Icon(Icons.star,
                                                        color: Colors.grey,
                                                        size: 12),
                                                    Text(
                                                      widget.constants.games1[index]
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
