import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/home-page/widgets/single-project.dart';
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

const projects = [
  ProjectDetails(
    time: 'April 2020 - July 2021',
    title: 'Flutter — Mapventure',
    company: 'And Now For Something Completely Different Oy',
    image: mapventure,
    seeMoreUrl: 'https://www.mapventure.com',
    position: Position.left,
    text:
        '''I developed and maintained the Mapventure app as part of a small team. At first I was the only programmer working on the app, but after six months the team grew and I got myself a programming pair. 

The job was diverse and instructive. Mapventure was by its nature a perfect starter project for my career. At first none of us really knew what Mapventure is or could be. Therefore we developed and tested a ton of different versions of the app. That allowed me to learn and get my hands dirty with lots of different aspects of mobile development. During the project, I've worked with authentication, geolocation, maps, audio files, localizations, qr-codes, in app purchases + subscriptions, push notifications, dynamic links, phone sensors, analytics tools, databases and plenty of more!''',
  ),
  ProjectDetails(
    time: 'June 2021',
    title: 'Flutter — Statusbarz',
    company: 'Open source contribution',
    //image: mapventure,
    seeMoreUrl: 'https://pub.dev/packages/statusbarz',
    position: Position.right,
    text: '''Statusbarz is my first open source contribution to the flutter community.
        
As most of the packages on pub.dev, Statusbarz was birthed to solve a problem in an app we were developing; We needed to change the phones statusbar color depending on the background image, so that the text on the statusbar is always visible. The problem was that the image came from the network, so we did not know if it was light or dark, and we did not want to use gradients on top of the image. So, we made a package that reads the pixels from statusbars background, calculates their average color and changes statusbar color based on it.''',
  ),
  ProjectDetails(
    time: 'March 2022',
    title: 'Flutter — Template',
    company: 'Personal project',
    seeMoreUrl: 'https://github.com/O-Hannonen/template',
    position: Position.left,
    text:
        '''The template is my first "boilerplate" project. It was made to speed up the process of creating new flutter apps. It contains loads of boilerplate code, that can be reused from app to app. 
    
The template has lots of services preconfigured, such as authentication, localizations, permission handling, linting, haptics, routing, logging, and dynamic theming. It also contains boilerplate code for many of the firebase services. Note: this app is still a work in progress (especially the documentation/"how to use" section).''',
  ),
  ProjectDetails(
    time: 'December 2021',
    title: 'React — Tic-tac-toe',
    company: 'Personal project',
    imageLocation: ImageLocation.left,
    image: ticTacToe,
    seeMoreUrl: 'https://github.com/O-Hannonen/tic-tac-toe',
    position: Position.right,
    text:
        '''Tic-tac-toe was the first react website I've built. The whole purpose of the website was to start getting familiar with react. The game works like a charm, even though the code may look ugly for anyone more experienced with react.''',
  ),
  ProjectDetails(
    time: 'February 2021',
    title: 'Flutter — The launcher',
    company: 'ICT upper secondary school final assignment',
    image: theLauncher,
    imageLocation: ImageLocation.left,
    seeMoreUrl: 'https://github.com/O-Hannonen/thelauncher',
    position: Position.right,
    text:
        '''The launcher was my upper secondary schools final assignment. The app was an Android launcher, which was supposed to make everyday tasks faster and easier (but then I switched to IOS as my operating system of choice :D). 
    
The launcher really does have some nice features. The launcher can start all the apps installed on the phone, do some calculations, make phone calls straight from the home screen, control your smart home (lights, TV, etc.), see the current weather, see the local covid stats, see the school lunch menu and read the latest news.''',
  ),
  ProjectDetails(
    time: 'January 2020',
    title: 'Flutter — Verbal clock',
    company: 'Competition entry',
    image: flutterClock,
    seeMoreUrl: 'https://github.com/O-Hannonen/flutter_clock',
    position: Position.left,
    text: '''Verbal clock was my entry for the flutter clock competition hosted by google. 
    
It was one of my first Flutter projects ever (thats pretty obvious when looking at the code :D). It was a really fun way to learn by doing, and I even managed to make my crazy clock idea work. The clock actually looks surprisingly good and works really well!''',
  ),
];
