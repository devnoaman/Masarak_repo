import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyObserver extends ProviderObserver {
  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    log('Provider $provider was initialized with $value', time: DateTime.now());
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    log('Provider $provider was disposed', time: DateTime.now());
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log(
      'Provider $provider updated from $previousValue to $newValue',
      time: DateTime.now(),
    );
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    log('Provider $provider threw $error at $stackTrace', time: DateTime.now());
    // printWarning()
  }
}
