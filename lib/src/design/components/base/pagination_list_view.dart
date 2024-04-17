import 'package:flutter/material.dart';
import 'package:keepup/src/extensions/scope_extensions.dart';
import 'package:keepup/src/utils/app_constants.dart';

typedef LoadMoreDataRequester<T> = Future<List<T>> Function(int page);
typedef RefreshDataRequester<T> = Future<List<T>> Function();
typedef ItemBuilder<T> = Widget Function(BuildContext context, int index, T itemData);

class PaginationListView<T> extends StatefulWidget {
  final PaginationListController<T>? controller;
  final ItemBuilder<T> itemBuilder;
  final LoadMoreDataRequester<T> loadMoreDataRequester;
  final RefreshDataRequester<T> refreshDataRequester;
  final Widget separator;
  final Widget widgetError;
  final Widget widgetLoading;
  final EdgeInsetsGeometry padding;
  final int perPage;

  const PaginationListView({
    super.key,
    this.controller,
    required this.loadMoreDataRequester,
    required this.refreshDataRequester,
    required this.itemBuilder,
    this.separator = const SizedBox(),
    this.widgetError = const SizedBox(),
    this.widgetLoading = const Center(child: CircularProgressIndicator()),
    this.padding = EdgeInsets.zero,
    this.perPage = AppConstants.limitPerPage,
  });

  @override
  State createState() => PaginationListViewState<T>();
}

class PaginationListViewState<T> extends State<PaginationListView<T>>
    implements PaginationListCallback<T> {
  final ScrollController _controller = ScrollController();
  List<T>? _dataList;

  @override
  void initState() {
    super.initState();
    _onRefresh();
    widget.controller?.addListener(this);
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        _loadMore();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _dataList?.let((self) => self.isNotEmpty
            ? RefreshIndicator(
                onRefresh: _onRefresh,
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: self.length,
                  itemBuilder: (context, index) => widget.itemBuilder.call(
                    context,
                    index,
                    self[index],
                  ),
                  separatorBuilder: (context, index) => widget.separator,
                  controller: _controller,
                  padding: widget.padding,
                ),
              )
            : RefreshIndicator(
                onRefresh: _onRefresh,
                child: Stack(
                  children: [
                    ListView(),
                    widget.widgetError,
                  ],
                ),
              )) ??
        widget.widgetLoading;
  }

  Future<void> _onRefresh() async {
    if (mounted) setState(() => _dataList = null);
    final List<T> data = await widget.refreshDataRequester();
    if (mounted) setState(() => _dataList = data);
    return;
  }

  Future<void> _loadMore() async {
    final List<T> data = [..._dataList ?? []];
    if (mounted && data.isNotEmpty && data.length % widget.perPage == 0) {
      final int currentPage = data.length ~/ widget.perPage + 1;
      final List<T> newData = await widget.loadMoreDataRequester(currentPage);
      data.addAll(newData);
    }
    if (mounted) setState(() => _dataList = data);
  }

  @override
  void updateAt(int index, T item) {
    _dataList?.let((self) {
      if (index < 0 || self.isEmpty || self.length <= index) return;
      setState(() {
        _dataList = self.map((e) => self.indexOf(e) == index ? item : e).toList();
      });
    });
  }
}

class PaginationListController<T> {
  PaginationListCallback<T>? _callback;

  void updateAt(int index, T item) {
    _callback?.updateAt(index, item);
  }

  void addListener(PaginationListCallback<T> callback) {
    _callback = callback;
  }

  void dispose() {
    _callback = null;
  }
}

abstract class PaginationListCallback<T> {
  void updateAt(int index, T item);
}
