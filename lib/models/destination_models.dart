import 'package:flutter_travel/models/activity_models.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String descriotion;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.descriotion,
    this.activities
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTime: ['11:00 pm', '1:00 pm'],
    rating: 4,
    ptice: 210
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTime: ['11:00 pm', '1:00 pm'],
    rating: 4,
    ptice: 210
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTime: ['11:00 pm', '1:00 pm'],
    rating: 4,
    ptice: 210
  ),
];

List<Destination> destinations = [

Destination(
  imageUrl: 'assets/images/venice.jpg',
  city: 'venice',
  country: 'Italy',
  descriotion: 'vist Venice for an amazing and unforgettable adventure',
  activities: activities
),
Destination(
  imageUrl: 'assets/images/paris.jpg',
  city: 'venice',
  country: 'France',
  descriotion: 'vist Venice for an amazing and unforgettable adventure',
  activities: activities
),
Destination(
  imageUrl: 'assets/images/newdelhi.jpg',
  city: 'venice',
  country: 'India',
  descriotion: 'vist Venice for an amazing and unforgettable adventure',
  activities: activities
),
Destination(
  imageUrl: 'assets/images/saopaulo.jpg',
  city: 'venice',
  country: 'Brazi',
  descriotion: 'vist Venice for an amazing and unforgettable adventure',
  activities: activities
),

Destination(
  imageUrl: 'assets/images/newyork.jpg',
  city: 'venice',
  country: 'United States',
  descriotion: 'vist Venice for an amazing and unforgettable adventure',
  activities: activities
),

];

