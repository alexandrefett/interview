import 'package:freezed_annotation/freezed_annotation.dart';

part 'sport_event_entity.freezed.dart';
part 'sport_event_entity.g.dart';

@freezed
class SportEventEntity with _$SportEventEntity {
  const factory SportEventEntity({
    required String iconUrl,
    required String league,
    required String teams,
    required String sportType,
    required String dateStarting,
    required String timeStarting,
  }) = _SportEventEntity;

  factory SportEventEntity.fromJson(Map<String, dynamic> json) => _$SportEventEntityFromJson(json);
}
