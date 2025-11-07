// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

class ShimmerWrapper extends InheritedWidget {
  final bool isLoading;
  const ShimmerWrapper({
    super.key,
    required this.isLoading,
    required super.child,
  });
  // final ValueChanged<String> onMyFieldChange;

  // MyInheritedData({
  //   Key key,
  //   this.isLoading,
  //   this.onMyFieldChange,
  //   Widget child,
  // }) : super(key: key, child: child);

  static ShimmerWrapper? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShimmerWrapper>();
  }

  static bool loadingOf(BuildContext context) {
    return context
            .dependOnInheritedWidgetOfExactType<ShimmerWrapper>()
            ?.isLoading ??
        false;
  }

  @override
  bool updateShouldNotify(ShimmerWrapper oldWidget) {
    return oldWidget.isLoading != isLoading;
  }
}

class ShimmerLoading extends StatefulWidget {
  static ShimmerWrapper of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ShimmerWrapper>()
          as ShimmerWrapper;

  const ShimmerLoading({
    super.key,
    required this.child,
    this.loader,
  });
  final Widget child;
  final Widget? loader;

  @override
  State<ShimmerLoading> createState() => _ShimmerLoadingState();
}

class _ShimmerLoadingState extends State<ShimmerLoading> {
  var isLoading = false;
  final GlobalKey myKey = GlobalKey(
    debugLabel: widgetFactory.hashCode.toString(),
  );

  @override
  void didChangeDependencies() {
    var d = ShimmerWrapper.of(context)?.isLoading;
    if (d == true) {
      _showShimmer();
    } else if (d == false) {
      _hideShimmer();
    }
    log(myKey.toString());
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant ShimmerLoading oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  // var keyAbleWidge = SizedBox();

  @override
  void initState() {
    super.initState();
  }

  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: widget.child,
      secondChild: Shimmer.fromColors(
          baseColor: Colors.grey.withOpacity(
            .2,
          ),
          period: Durations.extralong1,
          highlightColor: Colors.white.withOpacity(
            .1,
          ),
          child: widget.loader ?? widget.child
          //  ShimmeredSpace(
          //   width: 200,
          //   height: 12,

          // ),
          ),
      crossFadeState:
          !isLoading ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: Durations.medium4,
    );
  }

  void _showShimmer() {
    setState(() {
      isLoading = true;
    });
  }

  void _hideShimmer() {
    setState(() {
      isLoading = false;
    });
  }
}
