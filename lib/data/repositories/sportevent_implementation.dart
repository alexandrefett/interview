import 'package:interview/domain/entities/sport_event_entity.dart';
import 'package:interview/domain/repositories/sportevent_repository.dart';

class SportEventImpl implements SportEventRepository {
  @override
  Future<List<SportEventEntity>?> getSportEvent() async {
    // In real world this call could be a http call to a REST service
    // Filters can be added as parameters like this: getSportEvent(filters)
    try {
      List<Map<String, dynamic>> sportsEvents = [
        {
          'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
          'league': 'Serie A',
          'teams': 'Milan vs. Munich',
          'sportType': 'Football',
          'dateStarting': 'Today',
          'timeStarting': '14:00'
        },
        {
          'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
          'league': 'Serie A',
          'teams': 'Real Madrid vs. Barcelona',
          'sportType': 'Football',
          'dateStarting': 'Today',
          'timeStarting': '16:00'
        },
        {
          'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
          'league': 'Serie A',
          'teams': 'Benfica vs. Porto',
          'sportType': 'Football',
          'dateStarting': 'Today',
          'timeStarting': '18:00'
        },
        {
          'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
          'league': 'Serie A',
          'teams': 'Chelsea vs. Munich',
          'sportType': 'Football',
          'dateStarting': 'Yesterday',
          'timeStarting': '14:00'
        },
        {
          'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
          'league': 'Serie A',
          'teams': 'West Ham vs. Barcelona',
          'sportType': 'Football',
          'dateStarting': 'Yesterday',
          'timeStarting': '16:00'
        },
        {
          'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
          'league': 'Serie A',
          'teams': 'Arsenal vs. Porto',
          'sportType': 'Football',
          'dateStarting': 'Tomorrow',
          'timeStarting': '18:00'
        },
        {
          'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
          'league': 'Serie A',
          'teams': 'Milan vs. Munich',
          'sportType': 'Football',
          'dateStarting': 'Today',
          'timeStarting': '14:00'
        },
        {
          'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
          'league': 'Serie A',
          'teams': 'Real Madrid vs. Barcelona',
          'sportType': 'Football',
          'dateStarting': 'Today',
          'timeStarting': '16:00'
        },
        {
          'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
          'league': 'Lega B',
          'teams': 'Benfica vs. Porto',
          'sportType': 'Football',
          'dateStarting': 'Today',
          'timeStarting': '18:00'
        },
        {
          'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
          'league': 'Lega B',
          'teams': 'Chelsea vs. Munich',
          'sportType': 'Football',
          'dateStarting': 'Yesterday',
          'timeStarting': '14:00'
        },
        {
          'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
          'league': 'Serie A',
          'teams': 'West Ham vs. Barcelona',
          'sportType': 'Football',
          'dateStarting': 'Yesterday',
          'timeStarting': '16:00'
        },
        {
          'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
          'league': 'Serie A',
          'teams': 'Arsenal vs. Porto',
          'sportType': 'Football',
          'dateStarting': 'Tomorrow',
          'timeStarting': '18:00'
        },
      ];
      final sportEventList = sportsEvents.map((e) => SportEventEntity.fromJson(e)).toList();
      return sportEventList;
    } catch (e) {
      throw Exception(e);
    }
  }
}
