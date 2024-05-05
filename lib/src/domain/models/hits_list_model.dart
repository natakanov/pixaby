import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'hit_model.dart';

part 'hits_list_model.freezed.dart';

@freezed
class HitsListModel with _$HitsListModel {
  const factory HitsListModel({
    required int total,
    required IList<HitModel> hits,
  }) = _HitsListModel;
}
