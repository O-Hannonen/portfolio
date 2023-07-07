import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/banner/widgets/socials-icon.dart';
import 'package:portfolio/reusable/ordered-fade-in/widgets/ordered-fade-in-item.dart';
import 'package:portfolio/reusable/ordered-fade-in/widgets/ordered-fade-in-region.dart';
import 'package:portfolio/reusable/responsive-ui-builder.dart';
import 'package:portfolio/theme.dart';

class Banner extends StatelessWidget {
  const Banner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shadows = [
      Shadow(
        color: context.colorScheme.shadow,
        offset: const Offset(1, 1),
        blurRadius: 3.0,
      ),
    ];

    return ResponsiveUiBuilder(
      builder: (mobile, width, height) {
        return OrderedFadeInRegion(
          builder: (context, fadeRegionCubit) {
            return SizedBox(
              width: width,
              height: height,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: height,
                      width: mobile ? width : width * (2 / 3),
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            context.colorScheme.background,
                            context.colorScheme.background.withOpacity(0.0),
                          ],
                          stops: const [0.0, 0.3],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      child: OrderedFadeInItem(
                        fadeInOrder: 0,
                        delay: const Duration(milliseconds: 500),
                        fadeInDuration: const Duration(milliseconds: 700),
                        cubit: fadeRegionCubit,
                        child: Image.asset(
                          me,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment:
                        mobile ? Alignment.bottomCenter : Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: mobile ? 15.0 : 25.0,
                        vertical: 60.0,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            context.colorScheme.background.withOpacity(0.0),
                            context.colorScheme.background.withOpacity(0.6),
                            context.colorScheme.background.withOpacity(0.0),
                          ],
                          stops: const [0.0, 0.75, 1.0],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      width: mobile ? width : width * (4 / 7),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            OrderedFadeInItem(
                              fadeInOrder: 1,
                              cubit: fadeRegionCubit,
                              delay: const Duration(milliseconds: 500),
                              fadeInDuration: const Duration(milliseconds: 500),
                              child: Text(
                                'Onnimanni Hannonen',
                                style: GoogleFonts.secularOne(
                                  textStyle: TextStyle(
                                    fontSize: 120.0,
                                    fontWeight: FontWeight.bold,
                                    color: context.colorScheme.primary,
                                    shadows: shadows,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            OrderedFadeInItem(
                              fadeInOrder: 2,
                              cubit: fadeRegionCubit,
                              delay: const Duration(milliseconds: 500),
                              fadeInDuration: const Duration(milliseconds: 300),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    const TextSpan(
                                        text: "I'm an enthusiastic   "),
                                    TextSpan(
                                      text: "software developer",
                                      style: GoogleFonts.satisfy(
                                        textStyle: TextStyle(
                                          fontSize: 60.0,
                                          shadows: shadows,
                                          color: context.colorScheme.primary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const TextSpan(text: "   from Turku"),
                                  ],
                                  style: TextStyle(
                                    fontSize: 40.0,
                                    color: context.colorScheme.onBackground,
                                    fontWeight: FontWeight.bold,
                                    shadows: shadows,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 55),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                OrderedFadeInItem(
                                  fadeInOrder: 3,
                                  cubit: fadeRegionCubit,
                                  delay: const Duration(milliseconds: 500),
                                  fadeInDuration:
                                      const Duration(milliseconds: 150),
                                  child: const SocialsIcon(
                                    svg: github,
                                    url: 'https://github.com/O-Hannonen',
                                  ),
                                ),
                                OrderedFadeInItem(
                                  fadeInOrder: 4,
                                  cubit: fadeRegionCubit,
                                  delay: const Duration(milliseconds: 100),
                                  fadeInDuration:
                                      const Duration(milliseconds: 150),
                                  child: const SocialsIcon(
                                    svg: linkedin,
                                    url:
                                        'https://www.linkedin.com/in/onnimanni-hannonen-0370a7179/',
                                  ),
                                ),
                                OrderedFadeInItem(
                                  fadeInOrder: 5,
                                  cubit: fadeRegionCubit,
                                  delay: const Duration(milliseconds: 100),
                                  fadeInDuration:
                                      const Duration(milliseconds: 150),
                                  child: const SocialsIcon(
                                    svg: email,
                                    url: 'onnari11@gmail.com',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: OrderedFadeInItem(
                      fadeInOrder: 6,
                      cubit: fadeRegionCubit,
                      delay: const Duration(milliseconds: 700),
                      fadeInDuration: const Duration(milliseconds: 500),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'My work',
                            style: GoogleFonts.secularOne(
                              textStyle: TextStyle(
                                fontSize: mobile ? 15.0 : 40.0,
                                fontWeight: FontWeight.bold,
                                color: context.colorScheme.primary
                                    .withOpacity(0.75),
                                //shadows: shadows,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: mobile ? 25 : 50,
                            color:
                                context.colorScheme.primary.withOpacity(0.75),
                            //shadows: shadows,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
