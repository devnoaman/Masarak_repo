import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. Define the Notifier
class OtpTimerNotifier extends Notifier<int> {
  // We'll use a Timer object from dart:async
  Timer? _timer;

  // Set the initial duration for the countdown
  static const int _initialDuration = 60 * 3; // 60 seconds

  @override
  int build() {
    // onDispose is called when the provider is no longer in use.
    // This is the perfect place to clean up our Timer.
    ref.onDispose(() {
      _timer?.cancel();
    });

    // The initial state of the timer is 0 (not running)
    return 0;
  }

  /// Starts the countdown timer.
  void start() {
    // Don't start a new timer if one is already running
    if (state > 0) {
      return;
    }

    // Set the initial state to the full duration
    state = _initialDuration;

    // Cancel any old timer just in case
    _timer?.cancel();

    // Start a new periodic timer
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state > 1) {
        // If time is remaining, just decrement the state
        state--;
      } else {
        // If time is up, set state to 0 and cancel the timer
        state = 0;
        timer.cancel();
      }
    });
  }

  /// Resets the timer back to 0
  void reset() {
    _timer?.cancel();
    state = 0;
  }
}

// 2. Create the NotifierProvider
final otpTimerProvider = NotifierProvider<OtpTimerNotifier, int>(() {
  return OtpTimerNotifier();
});
