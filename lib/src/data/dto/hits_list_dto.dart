import 'package:json_annotation/json_annotation.dart';
import 'hit_dto.dart';

part 'hits_list_dto.g.dart';

@JsonSerializable(createToJson: false)
class HitsListDto {
  final int total;
  final List<HitDto> hits;

  const HitsListDto({
    required this.total,
    required this.hits,
  });

  factory HitsListDto.fromJson(Map<String, Object?> json) =>
      _$HitsListDtoFromJson(json);
}
