import 'package:freezed_annotation/freezed_annotation.dart';

part 'hit_model.freezed.dart';

@freezed
class HitModel with _$HitModel {
  const factory HitModel({
    required int id,
    required String url,
    required String largeURL,
    required int likes,
    required int views,
  }) = _HitModel;
}
