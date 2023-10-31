// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SportEventImpl _$$SportEventImplFromJson(Map<String, dynamic> json) =>
    _$SportEventImpl(
      iconUrl: json['iconUrl'] as String,
      league: json['league'] as String,
      teams: json['teams'] as String,
      sportType: json['sportType'] as String,
      dateStarting: json['dateStarting'] as String,
      timeStarting: json['timeStarting'] as String,
    );

Map<String, dynamic> _$$SportEventImplToJson(_$SportEventImpl instance) =>
    <String, dynamic>{
      'iconUrl': instance.iconUrl,
      'league': instance.league,
      'teams': instance.teams,
      'sportType': instance.sportType,
      'dateStarting': instance.dateStarting,
      'timeStarting': instance.timeStarting,
    };
