import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constatnts.dart';

class Bookspage extends StatefulWidget {
  final Gameslist constants;
  const Bookspage({Key? key,required this.constants}) : super(key: key);

  @override
  State<Bookspage> createState() => _BookspageState();
}

class _BookspageState extends State<Bookspage> {
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
                              'Ebooks',
                              style: TextStyle(
                                  fontSize: 14,
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
                              'Audiobooks',
                              style: TextStyle(
                                  fontSize: 14,
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
                              'Comics',
                              style: TextStyle(
                                  fontSize: 14,
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
                              'Genres',
                              style: TextStyle(
                                  fontSize: 14,
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
                              'Top selling',
                              style: TextStyle(
                                  fontSize: 14,
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
                          Text('Suggested for you',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15)),
                          Text(
                            'trending books this week',
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
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.constants.games1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 80,
                        width: 90,
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
                                    borderRadius: BorderRadius.circular(0),
                                    image: DecorationImage(
                                      image: NetworkImage(widget
                                          .constants.books[index]['image']),
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
                                                widget.constants.books[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white,fontSize: 12),
                                              ),

                                              Row(
                                                children: [
                                                  Text(
                                                      widget.constants
                                                          .books[index]
                                                      ['rating'],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey)),
                                                  Icon(Icons.star,
                                                      color: Colors.grey,
                                                      size: 12),
                                                  Text(
                                                    widget.constants.books[index]
                                                    ['price'],
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey),
                                                  )
                                                ],
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
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.constants.games1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 80,
                        width: 90,
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
                                    borderRadius: BorderRadius.circular(0),
                                    image: DecorationImage(
                                      image: NetworkImage(widget
                                          .constants.books[index]['image']),
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
                                                widget.constants.books[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white,fontSize: 12),
                                              ),

                                              Row(
                                                children: [
                                                  Text(
                                                      widget.constants
                                                          .books[index]
                                                      ['rating'],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey)),
                                                  Icon(Icons.star,
                                                      color: Colors.grey,
                                                      size: 12),
                                                  Text(
                                                    widget.constants.books[index]
                                                    ['price'],
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey),
                                                  )
                                                ],
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
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.constants.games1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 80,
                        width: 90,
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
                                    borderRadius: BorderRadius.circular(0),
                                    image: DecorationImage(
                                      image: NetworkImage(widget
                                          .constants.books[index]['image']),
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
                                                widget.constants.books[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white,fontSize: 12),
                                              ),

                                              Row(
                                                children: [
                                                  Text(
                                                      widget.constants
                                                          .books[index]
                                                      ['rating'],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey)),
                                                  Icon(Icons.star,
                                                      color: Colors.grey,
                                                      size: 12),
                                                  Text(
                                                    widget.constants.books[index]
                                                    ['price'],
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey),
                                                  )
                                                ],
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
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.constants.games1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 80,
                        width: 90,
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
                                    borderRadius: BorderRadius.circular(0),
                                    image: DecorationImage(
                                      image: NetworkImage(widget
                                          .constants.books[index]['image']),
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
                                                widget.constants.books[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white,fontSize: 12),
                                              ),

                                              Row(
                                                children: [
                                                  Text(
                                                      widget.constants
                                                          .books[index]
                                                      ['rating'],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey)),
                                                  Icon(Icons.star,
                                                      color: Colors.grey,
                                                      size: 12),
                                                  Text(
                                                    widget.constants.books[index]
                                                    ['price'],
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey),
                                                  )
                                                ],
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
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.constants.games1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 80,
                        width: 90,
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
                                    borderRadius: BorderRadius.circular(0),
                                    image: DecorationImage(
                                      image: NetworkImage(widget
                                          .constants.books[index]['image']),
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
                                                widget.constants.books[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white,fontSize: 12),
                                              ),

                                              Row(
                                                children: [
                                                  Text(
                                                      widget.constants
                                                          .books[index]
                                                      ['rating'],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey)),
                                                  Icon(Icons.star,
                                                      color: Colors.grey,
                                                      size: 12),
                                                  Text(
                                                    widget.constants.books[index]
                                                    ['price'],
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey),
                                                  )
                                                ],
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
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.constants.games1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 80,
                        width: 90,
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
                                    borderRadius: BorderRadius.circular(0),
                                    image: DecorationImage(
                                      image: NetworkImage(widget
                                          .constants.books[index]['image']),
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
                                                widget.constants.books[index]
                                                ['title'],
                                                style:
                                                TextStyle(color: Colors.white,fontSize: 12),
                                              ),

                                              Row(
                                                children: [
                                                  Text(
                                                      widget.constants
                                                          .books[index]
                                                      ['rating'],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey)),
                                                  Icon(Icons.star,
                                                      color: Colors.grey,
                                                      size: 12),
                                                  Text(
                                                    widget.constants.books[index]
                                                    ['price'],
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey),
                                                  )
                                                ],
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
