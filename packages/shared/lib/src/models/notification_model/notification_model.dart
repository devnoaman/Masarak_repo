import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
abstract class Notification with _$Notification {
  const factory Notification({
    required String title,
    required String body,
    @Default(null) DateTime? createdAt,
  }) = _Notification;

  factory Notification.fromJson(Map<String, Object?> json) =>
      _$NotificationFromJson(json);
}
