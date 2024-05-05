import 'dart:async';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
import 'models/hit_model.dart';
import 'pictures_repository.dart';

const _pageSize = 20;

class PicturesService {
  final PicturesRepository _repository;

  final _hits = ValueNotifier(IList<HitModel>());

  ValueListenable<IList<HitModel>> get hits => _hits;

  int _pageOffset = 0;
  int _totalCount = 0;
  bool _initialized = false;

  PicturesService(this._repository);

  Future<void> fetchNextPage({
    required bool refresh,
    String? query,
  }) async {
    if (refresh) {
      _reset();
    }

    if (_pageOffset * _pageSize > _totalCount) {
      return;
    }

    final response = await _repository.fetchHits(
      page: _pageOffset + 1,
      query: query,
    );

    if (!_initialized) {
      _totalCount = response.total;
      _initialized = true;
    }

    ++_pageOffset;
    final hits = _hits.value.unlock;
    hits.addAll(response.hits);
    _hits.value = hits.lock;
  }

  void clear() {
    _hits.value = const IListConst([]);
    _reset();
  }

  void _reset() {
    _pageOffset = 0;
    _totalCount = 0;
    _initialized = false;
  }
}
