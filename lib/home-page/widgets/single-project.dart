import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:portfolio/reusable/responsive-ui-builder.dart';
import 'package:portfolio/reusable/snackbar.dart';
import 'package:portfolio/theme.dart';
import 'package:url_launcher/url_launcher.dart';

enum Position {
  left,
  right,
}

enum ImageLocation {
  top,
  left,
}

class ProjectDetails {
  final String title;
  final String text;
  final String? image;
  final String time;
  final String? company;
  final String? seeMoreUrl;
  final Position position;
  final ImageLocation imageLocation;

  const ProjectDetails({
    required this.title,
    required this.text,
    required this.position,
    this.image,
    required this.time,
    this.company,
    this.seeMoreUrl,
    this.imageLocation = ImageLocation.top,
  });
}

class SingleProjectCard extends StatelessWidget {
  final ProjectDetails details;

  const SingleProjectCard({
    Key? key,
    required this.details,
  }) : super(key: key);

  Widget line(BuildContext context, double height) => Container(
        width: 1.5,
        height: height,
        color: context.colorScheme.inversePrimary,
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveUiBuilder(
      builder: (mobile, width, height) {
        return SizedBox(
          width: mobile ? width : width / 2,
          child: FadeIn(
            duration: const Duration(milliseconds: 500),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              decoration: BoxDecoration(
                color: context.colorScheme.surfaceVariant,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: LayoutBuilder(builder: (context, constraints) {
                return Wrap(
                  direction: details.imageLocation == ImageLocation.left ? Axis.horizontal : Axis.vertical,
                  runAlignment: WrapAlignment.start,
                  alignment: WrapAlignment.start,
                  children: [
                    if (details.image != null)
                      Container(
                        margin: EdgeInsets.only(
                          right: details.imageLocation == ImageLocation.left ? 10.0 : 0.0,
                          bottom: details.imageLocation == ImageLocation.top ? 10.0 : 0.0,
                        ),
                        width: details.imageLocation == ImageLocation.left ? constraints.maxWidth * (2 / 5) - 10.0 : constraints.maxWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            details.image!,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    SizedBox(
                      width: details.imageLocation == ImageLocation.left ? constraints.maxWidth * (3 / 5) : constraints.maxWidth,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            details.time,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: context.colorScheme.onSurfaceVariant,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            details.title,
                            style: TextStyle(
                              fontSize: 30.0,
                              color: context.colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (details.company != null)
                            Text(
                              details.company!,
                              style: TextStyle(
                                fontSize: 13.0,
                                color: context.colorScheme.onSurfaceVariant,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          const SizedBox(width: 10, height: 10),
                          Text(
                            details.text,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: context.colorScheme.onSurfaceVariant,
                            ),
                          ),
                          if (details.seeMoreUrl != null)
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: ElevatedButton(
                                  onPressed: () async {
                                    try {
                                      /// Launches website on new blank tab

                                      await launchUrl(Uri.parse(details.seeMoreUrl!), webOnlyWindowName: '_blank');
                                    } catch (e) {
                                      /// If launching fails, copy the link to clipboard
                                      await Clipboard.setData(ClipboardData(text: details.seeMoreUrl));
                                      showSnackbar(title: 'Great!', text: 'Link copied to clipboard.');
                                    }
                                  },
                                  child: const Text(
                                    'See more',
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
