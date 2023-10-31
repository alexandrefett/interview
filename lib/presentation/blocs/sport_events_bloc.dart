import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview/domain/entities/sport_event_entity.dart';
import 'package:interview/domain/repositories/sportevent_repository.dart';

part 'sport_events_bloc.freezed.dart';
part 'sport_events_event.dart';
part 'sport_events_state.dart';

class SportEventsBloc extends Bloc<SportEventsEvent, SportEventsState> {
  SportEventsBloc(this._repository) : super(const SportEventsState.loading()) {
    on<SportEventsEvent>((event, emit) async {
      await event.when(getSportEvents: (filter) async => await onGetSportEvents(event, emit));
    });
  }
  final SportEventRepository _repository;

  Future<void> onGetSportEvents(SportEventsEvent event, Emitter emit) async {
    try {
      if (event is _GetSportEvents) {
        final filter = event.filter;
        final sportEventList = await _repository.getSportEvent();
        List<SportEventEntity> filteredSportEventList;
        if (filter != null) {
          filteredSportEventList = sportEventList!.where((element) => element.dateStarting == filter).toList();
        } else {
          filteredSportEventList = sportEventList!;
        }
        emit(SportEventsState.done(filteredSportEventList));
      }
    } catch (e) {
      emit(const SportEventsState.error());
    }
  }
}
