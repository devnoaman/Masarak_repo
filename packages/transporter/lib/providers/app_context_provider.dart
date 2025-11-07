import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appCtxProvider = Provider<GlobalKey<ScaffoldState>>(
  (ref) {
    return GlobalKey<ScaffoldState>(debugLabel: 'AppContextProvider');
  },
);
