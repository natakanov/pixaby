import 'package:flutter/material.dart';
import 'placeholder_layout.dart';

const _cardAspectRatio = 156 / 132;

class PaginatedGridView<T> extends StatefulWidget {
  final EdgeInsets padding;
  final EdgeInsets layoutPadding;
  final Iterable<T> items;
  final bool isLoading;
  final int crossAxisCount;
  final Future<void> Function() onRefresh;

  final Future<void> Function() onLoadNextPage;

  final WidgetBuilder shimmerItemBuilder;

  final WidgetBuilder stubBuilder;

  final Widget Function(BuildContext context, T item) itemBuilder;

  const PaginatedGridView({
    super.key,
    this.padding = const EdgeInsets.all(16),
    this.layoutPadding = const EdgeInsets.all(16),
    required this.items,
    required this.isLoading,
    required this.onRefresh,
    required this.onLoadNextPage,
    required this.shimmerItemBuilder,
    required this.stubBuilder,
    required this.itemBuilder,
    required this.crossAxisCount,
  });

  @override
  State<StatefulWidget> createState() => _PaginatedGridViewState<T>();
}

class _PaginatedGridViewState<T> extends State<PaginatedGridView<T>> {
  bool _isRefreshing = false;
  bool _isFetchingNextPage = false;

  @override
  Widget build(BuildContext context) {
    final itemsList = widget.items.toList();

    return RefreshIndicator(
      onRefresh: _refresh,
      child: switch (itemsList) {
        final items when items.isEmpty && widget.isLoading => GridView.builder(
            padding: widget.padding,
            itemBuilder: (context, __) => widget.shimmerItemBuilder(context),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: widget.crossAxisCount,
              mainAxisSpacing: 14,
              crossAxisSpacing: 16,
              childAspectRatio: _cardAspectRatio,
            ),
          ),
        final items when items.isEmpty => PlaceholderLayout(
            padding: widget.layoutPadding,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  child: widget.stubBuilder(context),
                ),
              ],
            ),
          ),
        final items => NotificationListener<ScrollNotification>(
            onNotification: _onScroll,
            child: GridView.builder(
              padding: widget.padding,
              itemBuilder: (context, index) => index == items.length
                  ? widget.shimmerItemBuilder(context)
                  : widget.itemBuilder(context, items[index]),
              itemCount: items.length + (widget.isLoading ? 1 : 0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: widget.crossAxisCount,
                mainAxisSpacing: 14,
                crossAxisSpacing: 16,
                childAspectRatio: _cardAspectRatio,
              ),
            ),
          ),
      },
    );
  }

  Future<void> _refresh() async {
    if (_isRefreshing) {
      return;
    }
    setState(() {
      _isRefreshing = true;
    });

    try {
      await widget.onRefresh();
    } finally {
      if (mounted) {
        setState(() {
          _isRefreshing = false;
        });
      }
    }
  }

  bool _onScroll(ScrollNotification notification) {
    final metrics = notification.metrics;
    if (!widget.isLoading &&
        metrics.pixels >= metrics.maxScrollExtent &&
        !_isRefreshing &&
        !_isFetchingNextPage) {
      _isFetchingNextPage = true;
      widget.onLoadNextPage().then((_) => _isFetchingNextPage = false);
    }

    return false;
  }
}
