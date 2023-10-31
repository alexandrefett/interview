import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:interview/domain/entities/sport_event_entity.dart';
import 'package:interview/inject_dependencies.dart';
import 'package:interview/presentation/blocs/sport_events_bloc.dart';
import 'package:interview/presentation/widgets/circle_league.dart';
import 'package:interview/presentation/widgets/error_message.dart';
import 'package:interview/presentation/widgets/filter.dart';
import 'package:interview/presentation/widgets/loading_state.dart';
import 'package:interview/presentation/widgets/tvg_logo.dart';
import 'package:interview/routes/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SportEventsBloc>.value(
      value: locator<SportEventsBloc>(),
      child: const _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    locator<SportEventsBloc>()
        .add(const SportEventsEvent.getSportEvents()); // This event get sport events data, can be triggered by button
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const TVGLogo(), // This widget can be wrapped in common widget shared across the app
      ),
      body: Column(
        children: [
          const Filter(),
          Expanded(
            child: BlocBuilder<SportEventsBloc, SportEventsState>(
              builder: (context, state) {
                return state.when(
                    loading: () => const LoadingState(),
                    error: () => const ErrorMessage(),
                    done: (sportEventList) => ListView.builder(
                          itemCount: sportEventList.length,
                          itemBuilder: (context, index) {
                            final sportEvent = sportEventList[index];
                            return _buildItem(context, sportEvent);
                          },
                        ));
              },
            ),
          ),
        ],
      ),
    );
  }

  ListTile _buildItem(BuildContext context, SportEventEntity sportEvent) {
    return ListTile(
      onTap: () => context.pushNamed(Routes.detail, extra: sportEvent),
      leading: SizedBox(
        width: 46,
        height: 46,
        child: Image(
          image: CachedNetworkImageProvider(
            sportEvent.iconUrl,
          ),
        ),
      ),
      title: Text('${sportEvent.dateStarting} | ${sportEvent.timeStarting}',
          style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold)), // This text widget can be wrapped in common widget shared across the app
      subtitle: Text(sportEvent.teams,
          style: const TextStyle(
            fontSize: 20,
          )), // This text widget can be wrapped in common widget shared across the app
      trailing: CircleLeague(league: sportEvent.league), // This is a common widget and can be used across the app
    );
  }
}
