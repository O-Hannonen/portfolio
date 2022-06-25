import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';

/// The initialization logic.
Future initialize(BuildContext context) async {
  await precacheImage(const AssetImage(me), context);

  WidgetsBinding.instance.allowFirstFrame();
}
