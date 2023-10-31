import 'package:get_it/get_it.dart';
import 'package:interview/data/repositories/sportevent_implementation.dart';
import 'package:interview/presentation/blocs/sport_events_bloc.dart';

final locator = GetIt.instance;

void injectDependencies() {
  locator.registerLazySingleton(() => SportEventsBloc(SportEventImpl()));
}
