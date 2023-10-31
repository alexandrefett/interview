part of 'sport_events_bloc.dart';

@freezed
class SportEventsState with _$SportEventsState {
  const factory SportEventsState.loading() = _Loading;
  const factory SportEventsState.error() = _Error;
  const factory SportEventsState.done(List<SportEventEntity> sportEventList) = _Done;
}
