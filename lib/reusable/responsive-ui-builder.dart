import 'package:flutter/material.dart';

class ResponsiveUiBuilder extends StatelessWidget {
  final Widget Function(bool buildForMobile, double width, double height) builder;
  const ResponsiveUiBuilder({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return builder(size.width < 1200, size.width, size.height);
  }
}
