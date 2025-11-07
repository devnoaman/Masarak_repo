import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmptyPage extends HookConsumerWidget {
  const EmptyPage({super.key});
  static const String route = '/empty';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
