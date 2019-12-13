import 'dart:developer';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900], 
      appBar: AppBar(
        title: Text("ID CARD"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[            
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://miro.medium.com/max/2100/1*70aOJ1osE9C8cVZUkmH95g.png'),
                radius: 40.0,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.blueGrey[200],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "SUMIT",
              style: TextStyle(
                color: Colors.blueGrey[300],
                letterSpacing: 5.0,
                fontSize: 30.0,
                fontFamily: 'Anurati',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.blueGrey[500],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'sumitkumar150299@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.blueGrey[500],
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  '7722861436',
                  style: TextStyle(
                    color: Colors.blueGrey[200],
                  ),
                ),
              ],
            ),
            // Image.network(""),
          ],
        ),
      ),
    );
  }
}
