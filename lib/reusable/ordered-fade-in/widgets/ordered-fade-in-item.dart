import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:portfolio/reusable/ordered-fade-in/cubit/ordered_fade_in_cubit.dart';

class OrderedFadeInItem extends StatelessWidget {
  final Widget child;
  final int fadeInOrder;
  final Duration delay;
  final Duration fadeInDuration;
  final OrderedFadeInCubit cubit;
  const OrderedFadeInItem({
    Key? key,
    required this.child,
    required this.fadeInOrder,
    required this.cubit,
    this.delay = const Duration(milliseconds: 500),
    this.fadeInDuration = const Duration(milliseconds: 250),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      controller: cubit.setupController(fadeInOrder: fadeInOrder, delay: delay),
      duration: fadeInDuration,
      child: child,
    );
  }
}
