import 'package:portfolio/assets.dart';
import 'widgets/single-project.dart';

const projects = [
  ProjectDetails(
    time: 'May 2023',
    title: 'Dart — dart_define',
    company: 'Open source contribution',
    seeMoreUrl: 'https://pub.dev/packages/dart_define',
    position: Position.left,
    text:
        '''A Dart package to easily handle secrets and flavors within the Dart ecosystem. This tool is designed to work exceptionally well with large teams of developers and CI/CD pipelines.''',
  ),
  ProjectDetails(
    time: 'April 2023',
    title: 'Dart — mankeli_core',
    company: 'Open source contribution',
    seeMoreUrl: 'https://pub.dev/packages/mankeli_core',
    position: Position.right,
    text:
        '''A Dart utility package which contains loads of useful functions, classes and extensions used from project to project.''',
  ),
  ProjectDetails(
    time: 'February 2023',
    title: 'Flutter — qr_plus',
    company: 'Open source contribution',
    seeMoreUrl: 'https://pub.dev/packages/qr_plus',
    position: Position.left,
    text:
        '''A Flutter package to read and render QR codes. Aims to make QR codes more sequre, by adding encryption and much more!''',
  ),
  ProjectDetails(
    time: 'February 2023',
    title: 'Dart — cmd_plus',
    company: 'Open source contribution',
    seeMoreUrl: 'https://pub.dev/packages/cmd_plus',
    position: Position.right,
    text:
        '''A Dart package to easily run shell commands, copy and modify files in bulk and much more!''',
  ),
  ProjectDetails(
    time: 'December 2022',
    title: 'Dart — mankeli_analysis',
    company: 'Open source contribution',
    seeMoreUrl: 'https://pub.dev/packages/mankeli_analysis',
    position: Position.left,
    text:
        '''A Dart package which contains all of the linting rules used internally at Mankeli Solutions.''',
  ),
  ProjectDetails(
    time: 'March 2022',
    title: 'Flutter — Template',
    company: 'Personal project',
    position: Position.right,
    text:
        '''The template is my first "boilerplate" project. It was made to speed up the process of creating new flutter apps. It contains a ton of boilerplate code, that can be reused from app to app. 
    
The template has lots of stuff preconfigured, such as authentication, localizations, permission handling, linting, haptics, routing, logging, and dynamic theming. It also contains boilerplate code for many of the firebase services.''',
  ),
  ProjectDetails(
    time: 'June 2021',
    title: 'Flutter — Portfolio',
    company: 'Personal project',
    seeMoreUrl: 'https://github.com/O-Hannonen/portfolio.git',
    position: Position.left,
    text: '''This website, built with Flutter Web.''',
  ),
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
    time: 'December 2021',
    title: 'React — Tic-tac-toe',
    company: 'Personal project',
    imageLocation: ImageLocation.left,
    image: ticTacToe,
    seeMoreUrl: 'https://github.com/O-Hannonen/tic-tac-toe',
    position: Position.right,
    text:
        '''Tic-tac-toe was the first react website I've built. The whole purpose of the website was to start getting familiar with react.''',
  ),
  ProjectDetails(
    time: 'June 2021',
    title: 'Flutter — Statusbarz',
    company: 'Open source contribution',
    //image: mapventure,
    seeMoreUrl: 'https://pub.dev/packages/statusbarz',
    position: Position.right,
    text:
        '''Statusbarz is my first open source contribution to the flutter community.

As most of the packages on pub.dev, Statusbarz was birthed to solve a problem in an app we were developing; We needed to change the phones statusbar color depending on the background image, so that the text on the statusbar is always visible. The problem was that the image came from the network, so we did not know if it was light or dark, and we did not want to use gradients on top of the image. So, we made a package that reads the pixels from statusbars background, calculates their average color and changes statusbar color based on it.''',
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
    time: 'April 2020',
    title: 'HTML + CSS — Neumorphism',
    company: 'Web development course final assignment',
    image: neumorphism,
    seeMoreUrl: 'https://github.com/O-Hannonen/neumorphism.git',
    position: Position.left,
    text:
        '''Neumorphism was my web development courses final assignment at Kerttuli ICT upper secondary school.

It was a dead simple HTML + CSS website to showcase neumorphic design pattern.''',
  ),
  ProjectDetails(
    time: 'January 2020',
    title: 'Flutter — Verbal clock',
    company: 'Competition entry',
    image: flutterClock,
    seeMoreUrl: 'https://github.com/O-Hannonen/flutter_clock',
    position: Position.left,
    text:
        '''Verbal clock was my entry for the flutter clock competition hosted by google.

It was one of my first Flutter projects ever. It was a really fun way to learn by doing, and I even managed to make my crazy clock idea work. The clock actually looks surprisingly good and works really well!''',
  ),
  ProjectDetails(
    time: 'October 2019',
    title: 'Unity + Arduino — Quiz game',
    company: 'Verstas Helsinki Oy',
    position: Position.right,
    text: '''I built a quiz game that was on display at an exhibition.

The game itself was built with Unity, and the buttons that controlled the game were built with Arduino.''',
  ),
  ProjectDetails(
    time: 'June 2019 - July 2019',
    title: 'Python — Automations',
    company: 'Verstas Helsinki Oy',
    position: Position.right,
    text:
        '''I built and programmed automations for an "escape room" that was on display at Ruisrock 2019.

The room was part of a launch of Sisus new product. The automations were about controlling lights, playing audios and opening doors based the data of different sensors. The code was written in python, and it was running on raspberry PIs which were hooked to all of the other electronics.''',
  ),
  ProjectDetails(
    time: 'May 2019',
    title: 'Unity — Energy hackathon',
    company: 'Hackathon',
    seeMoreUrl: 'https://energiaviisaat.fi/energyhackathon/',
    position: Position.left,
    text:
        '''I took part in an energy themed hackathon with couple of my friends.

During the couple days, we made a demo of a Sims -like 3D game. The idea behind the game was to teach players about energy efficient and sustainable living. We ended up getting a honorary award and bunch of free laptops for our efforts.''',
  ),
  ProjectDetails(
    time: 'January 2019',
    title: 'Unity — Wilmaten',
    company: 'Visma Oy',
    image: wilmaten,
    imageLocation: ImageLocation.left,
    seeMoreUrl: 'https://github.com/O-Hannonen/wilmaten',
    position: Position.right,
    text: '''Wilmaten is a practical game for learnign to type fast on computer.

It was my entry for a game development competition hosted by Visma. The game ended up being the audience favourite, and I got myself a summer job as a trainee at Visma. As a trainee, my job was to further develop Wilmaten, so that it could be used for marketing. During the two week trainee program, I turned the demo into an online multiplayer game with multiple different game modes. I also learned to use GIT, and got a ton of useful tips and career advice from the Wilma team.''',
  ),
  ProjectDetails(
    time: 'December 2018 - April 2020',
    title: 'Flutter — Dinera',
    company: 'Personal project',
    position: Position.left,
    text:
        '''Dinera was the first flutter app I've ever built. It was a fully functioning social networking app for sharing recipes.

The app allowed users to share their recipes, follow their friends and interact with their recipes. Dinera was the project I used to initially learn Flutter with. It was a long project, that I developed whenever I had some spare time. As I learned new stuff, I kept updating and improving the app. The app was developed to the point that it could have been published.''',
  ),
];
