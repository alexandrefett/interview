import 'package:interview/domain/entities/sport_event_entity.dart';

abstract class SportEventRepository {
  Future<List<SportEventEntity>?> getSportEvent();
}
