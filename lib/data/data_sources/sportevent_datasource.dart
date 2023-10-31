import 'package:interview/data/model/sport_event.dart';

abstract class ISportEventDataSource {
  Future<List<SportEvent>> getSportEvent();
}
