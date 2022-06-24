import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

part 'ordered_fade_in_state.dart';

class OrderedFadeInCubit extends Cubit<OrderedFadeInState> {
  OrderedFadeInCubit() : super(OrderedFadeInState(fadeItems: Map<int, FadeItem>())) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _animate());
  }

  Future _animate() async {
    final keys = state.fadeItems.keys.toList();
    keys.sort();

    for (var key in keys) {
      final item = state.fadeItems[key];
      if (item == null) continue;
      await Future.delayed(item.delay);

      /// The widget tree may be disposed during the delay.
      if (!item.disposed) item.controller.fadeIn();
    }
  }

  FadeInController setupController({
    required int fadeInOrder,
    required Duration delay,
  }) {
    if (state.fadeItems[fadeInOrder] == null) {
      /// Setup new item
      state.fadeItems[fadeInOrder] = FadeItem(controller: FadeInController(), delay: delay);
    }

    return state.fadeItems[fadeInOrder]!.controller;
  }

  @override
  Future<void> close() {
    state.fadeItems.forEach((key, value) {
      value.controller.dispose();
      value.disposed = true;
    });

    return super.close();
  }
}
