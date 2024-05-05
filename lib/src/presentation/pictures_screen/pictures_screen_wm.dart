import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pixaby/src/domain/models/hit_model.dart';
import 'package:pixaby/src/domain/pictures_service.dart';
import 'package:pixaby/src/presentation/photo_view_screen/photo_view_screen.dart';
import 'package:provider/provider.dart';

import 'pictures_screen.dart';
import 'pictures_screen_model.dart';

const _debounceInterval = Duration(milliseconds: 500);

class PicturesScreenWM
    extends WidgetModel<PicturesScreen, PicturesScreenModel> {
  final PicturesService _picturesService;

  final controller = TextEditingController();
  final focusNode = FocusNode();
  final _isLoading = ValueNotifier(false);

  ValueListenable<IList<HitModel>> get hits => _picturesService.hits;

  ValueListenable<bool> get isLoading => _isLoading;

  int get crossAxisCount => MediaQuery.of(context).size.width > 600 ? 3 : 2;

  Timer? _timer;
  String? _query;

  PicturesScreenWM({
    required PicturesScreenModel model,
    required PicturesService picturesService,
  })  : _picturesService = picturesService,
        super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    fetchNextPage(refresh: true);
    controller.addListener(_onQueryChanged);
  }

  Future<void> fetchNextPage({bool refresh = false}) async {
    try {
      _isLoading.value = true;
      await _picturesService.fetchNextPage(
        refresh: refresh,
        query: _query,
      );
    } finally {
      _isLoading.value = false;
    }
  }

  void _onQueryChanged() {
    if (_timer?.isActive ?? false) _timer?.cancel();
    _timer = Timer(_debounceInterval, _search);
  }

  Future<void> _search() async {
    final query = controller.text;
    if (query.isEmpty) {
      return;
    }
    _query = query;
    _picturesService.clear();
    await fetchNextPage(refresh: true);
  }

  void onClearTap() {
    controller.clear();
  }

  void onPhotoTap(String url, int id) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Hero(
            tag: 'photo-$id',
            child: PhotoViewScreen(
              image: CachedNetworkImageProvider(url),
            ),
          ),
        ),
      );
}

PicturesScreenWM picturesScreenWMFactory(BuildContext context) =>
    PicturesScreenWM(
      model: PicturesScreenModel(),
      picturesService: context.read(),
    );
