import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:pixaby/src/presentation/pictures_screen/widgets/info_badges.dart';
import 'package:pixaby/src/presentation/pictures_screen/widgets/photo_wrapper.dart';
import 'widgets/paginated_list_view.dart';
import 'widgets/unfocus_on_tap_outside.dart';
import 'widgets/my_search_bar.dart';

import 'pictures_screen_wm.dart';

class PicturesScreen extends ElementaryWidget<PicturesScreenWM> {
  const PicturesScreen({
    super.key,
    WidgetModelFactory wmFactory = picturesScreenWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(PicturesScreenWM wm) => UnfocusOnTapOutside(
        child: Scaffold(
          appBar: AppBar(
            title: MySearchBar(
              hintText: "Search",
              controller: wm.controller,
              focusNode: wm.focusNode,
              onClear: wm.onClearTap,
            ),
          ),
          body: DoubleValueListenableBuilder(
            firstValue: wm.hits,
            secondValue: wm.isLoading,
            builder: (_, items, isLoading) => PaginatedGridView(
              padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
              items: items,
              isLoading: isLoading,
              onRefresh: () => wm.fetchNextPage(refresh: true),
              onLoadNextPage: wm.fetchNextPage,
              shimmerItemBuilder: (_) => const Card(color: Colors.grey),
              stubBuilder: (_) => const Center(child: Text('Empty data')),
              itemBuilder: (_, item) => Hero(
                tag: 'photo-${item.id}',
                child: PhotoWrapper(
                  image: CachedNetworkImageProvider(item.url),
                  onTap: () {
                    wm.onPhotoTap(item.largeURL, item.id);
                  },
                  info: InfoBadges(
                    likes: item.likes,
                    views: item.views,
                  ),
                ),
              ),
              crossAxisCount: wm.crossAxisCount,
            ),
          ),
        ),
      );
}
