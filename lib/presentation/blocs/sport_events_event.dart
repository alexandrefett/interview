part of 'sport_events_bloc.dart';

@freezed
class SportEventsEvent with _$SportEventsEvent {
  const factory SportEventsEvent.getSportEvents({String? filter}) = _GetSportEvents;
}
