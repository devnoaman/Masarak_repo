import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive_ce/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak/extentions.dart';
import 'package:masarak/network/api/endpoints.dart';

class StaticSettingsView extends HookConsumerWidget {
  const StaticSettingsView({super.key});
  static const String route = '/statics';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final products = Hive.box('staticSetting').values;
    var baseUrl = useTextEditingController(text: Endpoints.baseUrl);
    return Scaffold(
      appBar: AppBar(
        title: Text('Configure app statics'),
      ),
      body: ListView(
        padding: 16.8.symetric,
        children: [
          TextFormField(
            controller: baseUrl,
            decoration: InputDecoration(
              label: Text(
                'Base URL',
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Endpoints.baseUrl = baseUrl.text;
                Navigator.of(context).pop();
              },
              child: Text(
                'Save changes',
              ))
        ],
      ),
    );
  }
}
