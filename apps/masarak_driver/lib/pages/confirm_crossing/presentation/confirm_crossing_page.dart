import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfirmCrossingPage extends HookConsumerWidget {
  const ConfirmCrossingPage({super.key});
  static const String route = '/confirm-crossing';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(appBar: AppBar());
  }
}
