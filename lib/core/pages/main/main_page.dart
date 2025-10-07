import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vyra/core/cubits/main/main_cubit.dart';
import 'package:vyra/feature/map/presentation/pages/map_page.dart';
import 'package:vyra/feature/profile/presentation/pages/profile_page.dart';

import '../../utils/widgets/widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    const pages = [MapPage(), ProfilePage()];
    return Scaffold(
      body: pages[context.watch<MainCubit>().state.currentIndex],
      bottomNavigationBar: VyraBottomNavigation(),
    );
  }
}
