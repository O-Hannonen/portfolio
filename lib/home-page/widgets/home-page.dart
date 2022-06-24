import 'package:flutter/material.dart' hide Banner;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/banner/widgets/banner.dart';
import 'package:portfolio/home-page/cubit/home_page_cubit.dart';
import 'package:portfolio/projects/widgets/projects.dart';
import 'package:portfolio/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (c) => HomePageCubit(),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          return Material(
            color: context.colorScheme.background,
            child: ListView(
              cacheExtent: 0.0,
              children: const [
                Banner(),
                Projects(),
              ],
            ),
          );
        },
      ),
    );
  }
}
