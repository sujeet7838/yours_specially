import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/event.dart';

class Events with ChangeNotifier {
  final List<Event> _upcomingEvents = [
    Event(
      contactName: 'Contact 1',
      date: DateTime.now(),
      name: 'Happy Birthday',
    ),
    Event(
      contactName: 'Contact 2',
      date: DateTime.now(),
      name: 'Happy Anniversary',
    ),
    Event(
      contactName: 'Contact 3',
      date: DateTime.now(),
      name: 'Happy Birthday',
    ),
      Event(
      contactName: 'Contact 4',
      date: DateTime.now(),
      name: 'Happy Birthday',
    ),
  ];

  List<Event> get upcomingEvents {
    return [..._upcomingEvents];
  }
}
