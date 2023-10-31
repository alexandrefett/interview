import 'package:flutter/material.dart';
import 'package:interview/inject_dependencies.dart';
import 'package:interview/presentation/blocs/sport_events_bloc.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => FilterState();
}

class FilterState extends State<Filter> {
  String? filterSelected;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<String>(
      emptySelectionAllowed: true,
      multiSelectionEnabled: false,
      showSelectedIcon: false,
      segments: const <ButtonSegment<String>>[
        ButtonSegment<String>(
          value: 'Yesterday',
          label: Text('Yesterday'),
        ),
        ButtonSegment<String>(
          value: 'Today',
          label: Text('Today'),
        ),
        ButtonSegment<String>(
          value: 'Tomorrow',
          label: Text('Tomorrow'),
        )
      ],
      selected: filterSelected == null ? <String>{} : <String>{filterSelected!},
      onSelectionChanged: (Set<String> newSelection) {
        print(newSelection);
        setState(() {
          if (newSelection.isEmpty) {
            filterSelected = null;
          } else {
            filterSelected = newSelection.first;
          }
        });
        locator<SportEventsBloc>().add(SportEventsEvent.getSportEvents(filter: filterSelected));
      },
    );
  }
}
