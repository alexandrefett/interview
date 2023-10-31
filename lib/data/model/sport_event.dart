import 'package:freezed_annotation/freezed_annotation.dart';

part 'sport_event.freezed.dart';
part 'sport_event.g.dart';

@freezed
class SportEvent with _$SportEvent {
  const factory SportEvent({
    required String iconUrl,
    required String league,
    required String teams,
    required String sportType,
    required String dateStarting,
    required String timeStarting,
  }) = _SportEvent;

  factory SportEvent.fromJson(Map<String, dynamic> json) => _$SportEventFromJson(json);
}
