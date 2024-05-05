import 'package:flutter/foundation.dart';
import '../data/mappers/hits_list_dto_mapper.dart';
import '../data/pictures_api.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'models/hits_list_model.dart';

class PicturesRepository {
  final PicturesApi _api;

  const PicturesRepository(this._api);

  Future<HitsListModel> fetchHits({
    required int page,
    String? query,
  }) async {
    try {
      final response = await _api.fetchHits(
        page: page,
        query: query,
      );

      return response.toModel();
    } on Object catch (e, s) {
      debugPrint('fetchHits: $e, $s');

      return const HitsListModel(total: 0, hits: IListConst([]));
    }
  }
}
