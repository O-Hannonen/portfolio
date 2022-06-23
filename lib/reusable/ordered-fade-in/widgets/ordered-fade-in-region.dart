import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/reusable/ordered-fade-in/cubit/ordered_fade_in_cubit.dart';

class OrderedFadeInRegion extends StatefulWidget {
  final Widget Function(BuildContext, OrderedFadeInCubit) builder;
  const OrderedFadeInRegion({Key? key, required this.builder}) : super(key: key);

  @override
  State<OrderedFadeInRegion> createState() => _OrderedFadeInRegionState();
}

class _OrderedFadeInRegionState extends State<OrderedFadeInRegion> {
  OrderedFadeInCubit? cubit;

  @override
  void initState() {
    cubit = OrderedFadeInCubit();
    super.initState();
  }

  @override
  void dispose() {
    cubit?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit!,
      child: BlocBuilder<OrderedFadeInCubit, OrderedFadeInState>(
        builder: (context, state) {
          return widget.builder(context, cubit!);
        },
      ),
    );
  }
}
