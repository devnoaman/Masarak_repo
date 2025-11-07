// my_data_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_state.freezed.dart';

@freezed
sealed class GlobalState<T, E> with _$GlobalState<T, E> {
  const GlobalState._();
  const factory GlobalState.initial() = Initial<T, E>;
  const factory GlobalState.empty() = Empty<T, E>;
  const factory GlobalState.loading() = Loading<T, E>;
  const factory GlobalState.loaded({required T data}) = Loaded<T, E>;
  const factory GlobalState.error({required E e}) = Error<T, E>;
}
