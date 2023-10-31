import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:interview/domain/entities/sport_event_entity.dart';
import 'package:interview/presentation/widgets/circle_league.dart';
import 'package:interview/presentation/widgets/tvg_logo.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({required this.sportEvent, super.key});

  final SportEventEntity sportEvent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const TVGLogo(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16), // value is hard coded but can be from a constant file
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ), // value is hard coded but can be from a constant file
              CircleLeague(league: sportEvent.league),
              const SizedBox(
                height: 10,
              ),
              Text('${sportEvent.dateStarting} | ${sportEvent.timeStarting}',
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight:
                          FontWeight.bold)), // This text widget can be wrapped in common widget shared acroos the app
              Text(sportEvent.teams,
                  style: const TextStyle(
                    fontSize: 20,
                  )), // This text widget can be wrapped in common widget shared acroos the app
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 46,
                height: 46,
                child: Image(
                  image: CachedNetworkImageProvider(
                    sportEvent.iconUrl,
                  ), // This text widget can be wrapped in common widget shared across the app
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop. \n\nChocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.',
                style: TextStyle(
                  fontSize: 20,
                ), // This text widget can be wrapped in common widget shared across the app
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
