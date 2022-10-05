import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/reusable/snackbar.dart';
import 'package:portfolio/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SocialsIcon extends StatelessWidget {
  final String svg;
  final String url;

  const SocialsIcon({
    Key? key,
    required this.svg,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        bool isEmail = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(url);

        try {
          if (isEmail) {
            /// launches email
            await launchUrl(Uri.parse('mailto:$url'));
          } else {
            /// Launches website on new blank tab
            await launchUrl(Uri.parse(url), webOnlyWindowName: '_blank');
          }
        } catch (e) {
          /// If launching fails, copy the link to clipboard
          await Clipboard.setData(ClipboardData(text: url));
          showSnackbar(title: 'Great!', text: 'Link copied to clipboard.');
        }
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(
          right: 10.0,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.shadow.withOpacity(0.35),
              blurRadius: 30,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            context.colorScheme.inversePrimary,
            BlendMode.srcATop,
          ),
          child: WebsafeSvg.asset(
            svg,
            width: 80,
            height: 80,
          ),
        ),
      ),
    );
  }
}
