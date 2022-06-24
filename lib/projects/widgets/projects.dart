import 'package:flutter/material.dart';
import 'package:portfolio/projects/list-of-projects.dart';
import 'package:portfolio/projects/widgets/single-project.dart';
import 'package:portfolio/reusable/responsive-ui-builder.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveUiBuilder(builder: (mobile, width, height) {
      if (mobile) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: projects.map((p) => SingleProjectCard(details: p)).toList(),
        );
      }

      final left = projects.where((p) => p.position == Position.left);
      final right = projects.where((p) => p.position == Position.right);

      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: left.map((p) => SingleProjectCard(details: p)).toList(),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: right.map((p) => SingleProjectCard(details: p)).toList(),
          ),
        ],
      );
    });
  }
}
