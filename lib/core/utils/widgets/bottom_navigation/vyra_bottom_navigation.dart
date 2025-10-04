import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vyra/core/cubits/main/main_cubit.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/l10n/app_localizations.dart';

class VyraBottomNavigation extends StatefulWidget {
  const VyraBottomNavigation({super.key});

  @override
  State<VyraBottomNavigation> createState() => _VyraBottomNavigationState();
}

class _VyraBottomNavigationState extends State<VyraBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    if (Platform.isIOS) {
      return CupertinoTabBar(
        height: MediaQuery.sizeOf(context).height * 0.075,
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        activeColor: Theme.of(context).colorScheme.primary,
        inactiveColor: Theme.of(context).colorScheme.onSecondary,
        currentIndex: context.watch<MainCubit>().state.currentIndex,
        onTap: (index) {
          context.read<MainCubit>().changeIndex(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(
              IconConstants.cupertinoNavigationFilled,
              size: SizeConstants.s30,
            ),

            label: localization.map,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              IconConstants.cupertinoSettingsFilled,
              size: SizeConstants.s30,
            ),

            label: localization.settings,
          ),
        ],
      );
    } else {
      return SizedBox(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).colorScheme.onSurface,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Theme.of(context).colorScheme.onSecondary,
          selectedFontSize: SizeConstants.s12,
          unselectedFontSize: SizeConstants.s12,
          currentIndex: context.watch<MainCubit>().state.currentIndex,
          onTap: (index) {
            context.read<MainCubit>().changeIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                IconConstants.materialNavigationOutlined,
                size: SizeConstants.s30,
              ),
              activeIcon: const Icon(
                IconConstants.materialNavigationFilled,
                size: SizeConstants.s30,
              ),
              label: localization.map,
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                IconConstants.materialSettingsOutlined,
                size: SizeConstants.s30,
              ),
              activeIcon: const Icon(
                IconConstants.materialSettingsFilled,
                size: SizeConstants.s30,
              ),
              label: localization.settings,
            ),
          ],
        ),
      );
    }
  }
}
