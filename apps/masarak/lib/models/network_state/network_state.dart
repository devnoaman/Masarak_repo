import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_state.freezed.dart';

@freezed
sealed class NetworkState<T> with _$NetworkState<T> {
  const factory NetworkState.initial() = NetworkStateInitial;
  const factory NetworkState.loading() = NetworkStateLoading;
  const factory NetworkState.empty() = NetworkStateEmpty;

  const factory NetworkState.loaded({
    required String message,
    required T res,
  }) = NetworkStateLoaded;
  const factory NetworkState.error({
    required String message,
    StackTrace? stackTrace,
  }) = NetworkStateError;
}
