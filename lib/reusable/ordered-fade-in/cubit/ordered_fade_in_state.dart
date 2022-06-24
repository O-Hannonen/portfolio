part of 'ordered_fade_in_cubit.dart';

class OrderedFadeInState {
  final Map<int, FadeItem> fadeItems;

  OrderedFadeInState({
    required this.fadeItems,
  });
}

class FadeItem {
  /// The controller for this fade item.
  final FadeInController controller;

  /// The duration of how long to wait after the previouse item started to fade in.
  final Duration delay;

  bool disposed = false;

  FadeItem({
    required this.controller,
    required this.delay,
  });
}
