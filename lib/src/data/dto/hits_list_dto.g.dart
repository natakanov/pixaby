// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hits_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HitsListDto _$HitsListDtoFromJson(Map<String, dynamic> json) => HitsListDto(
      total: (json['total'] as num).toInt(),
      hits: (json['hits'] as List<dynamic>)
          .map((e) => HitDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
