import 'package:json_annotation/json_annotation.dart';

part 'hit_dto.g.dart';

@JsonSerializable(createToJson: false)
class HitDto {
  final int id;
  final String webformatURL;
  final String largeImageURL;
  final int likes;
  final int views;

  const HitDto({
    required this.id,
    required this.webformatURL,
    required this.largeImageURL,
    required this.likes,
    required this.views,
  });

  factory HitDto.fromJson(Map<String, Object?> json) => _$HitDtoFromJson(json);
}
