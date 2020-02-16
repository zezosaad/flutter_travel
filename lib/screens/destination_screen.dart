import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel/models/activity_models.dart';
import 'package:flutter_travel/models/destination_models.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  DestinationScreen({this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  Text _buildRatingStars(int rating) {
    String star = '';
    for (int o = 0; o < rating; o++) {
      star += '* ';
    }
    star.trim();
    return Text(star);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0)
                    ]),
                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0)),
                    child: Image(
                      image: AssetImage(widget.destination.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30.0,
                        color: Colors.black,
                        onPressed: () => Navigator.pop(context)),
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.search),
                            iconSize: 30.0,
                            color: Colors.black,
                            onPressed: () => Navigator.pop(context)),
                        IconButton(
                            icon: Icon(FontAwesomeIcons.sortAmountDown),
                            iconSize: 30.0,
                            color: Colors.black,
                            onPressed: () => Navigator.pop(context)),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.destination.city,
                      style: TextStyle(
                          fontSize: 35.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 15.0,
                          color: Colors.white70,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          widget.destination.country,
                          style:
                              TextStyle(color: Colors.white70, fontSize: 20.0),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(
                  Icons.location_on,
                  size: 25.0,
                  color: Colors.white70,
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0),
              itemCount: widget.destination.activities.length,
              itemBuilder: (BuildContext context, int index) {
                Activity activities = widget.destination.activities[index];
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                      height: 170.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 120.0,
                                  child: Text(
                                    activities.name,
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      '\$${activities.ptice}',
                                      style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                    Text(
                                      'Per Pax',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                              activities.type,
                              style: TextStyle(color: Colors.grey),
                            ),
                            _buildRatingStars(activities.rating),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  width: 70.0,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    activities.startTime[0],
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  width: 70.0,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    activities.startTime[1],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left:20.0,
                      top: 15.0,
                      bottom:15.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                            width: 110.0,
                            image: AssetImage(activities.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
