import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class BeerListPage extends StatefulWidget {
  BeerListPage({Key key}) : super(key: key);

  @override
  BeerListPageState createState() => BeerListPageState();
}

class BeerListPageState extends State<BeerListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
      child: new Center(
        child: new FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/tesla_dat.json'),
            builder: (context, snapshot) {
              var beers = json.decode(snapshot.data.toString());

              return new ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  var beer = beers[index];
                  return new Card(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            new Text(beer['name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30)),
                            new SizedBox(
                              width: 110,
                            ),
                            new Text(beer['value'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30)),
                          ],
                        ),
                        new Text(beer['date'],
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 20)),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 260,
                              height: 10,
                            ),
                            new Image.asset(beer['first_image'], height: 30),
                            SizedBox(
                              width: 40,
                            ),
                            new Image.asset(beer['second_image'], height: 30)
                          ],
                        ),
                      ],
                    ),
                  );
                },
                itemCount: beers == null ? 0 : beers.length,
              );
            }),
      ),
    ));
  }
}
