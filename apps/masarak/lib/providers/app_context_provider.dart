import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appContextProvider = Provider<GlobalKey<ScaffoldState>>(
  (ref) {
    return GlobalKey<ScaffoldState>(debugLabel: 'main-app-context');
  },
);
