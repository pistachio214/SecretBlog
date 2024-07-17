import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';

class TalkAppListComponent extends StatefulWidget {
  const TalkAppListComponent({
    super.key,
    required this.controller,
    required this.onRefresh,
    required this.onLoadMore,
    required this.child,
  });

  final EasyRefreshController controller;
  final RefreshCallback onRefresh;
  final LoadMoreCallback onLoadMore;
  final Widget child;

  @override
  State<TalkAppListComponent> createState() => _TalkAppListComponentState();
}

typedef RefreshCallback = Future<void> Function();
typedef LoadMoreCallback = Future<void> Function();

class _TalkAppListComponentState extends State<TalkAppListComponent> {
  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      header: const ClassicHeader(
        armedText: "下拉加载更多",
        readyText: "正在加载中...",
        showMessage: false,
        processedText: "加载完成",
        processingText: "加载中...",
        textStyle: TextStyle(color: Colors.grey),
      ),
      footer: const ClassicFooter(
        noMoreText: "没有更多数据了",
        noMoreIcon: Icon(Icons.mood_rounded),
        showMessage: false,
        processingText: "正在加载中...",
        textStyle: TextStyle(color: Colors.grey),
      ),
      controller: widget.controller,
      onRefresh: widget.onRefresh,
      onLoad: widget.onLoadMore,
      child: widget.child,
    );
  }
}
