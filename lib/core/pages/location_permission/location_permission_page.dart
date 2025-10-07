import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vyra/core/utils/enums/enums.dart';
import 'package:vyra/core/utils/widgets/widgets.dart';
import 'package:vyra/feature/map/presentation/cubits/map_cubit.dart';
import 'package:vyra/feature/map/presentation/cubits/map_state.dart';
import 'package:vyra/l10n/app_localizations.dart';

import '../../utils/constants/constants.dart';
import '../../utils/routes/route_generator.dart';

class LocationPermissionPage extends StatefulWidget {
  const LocationPermissionPage({super.key});

  @override
  State<LocationPermissionPage> createState() => _LocationPermissionPageState();
}

class _LocationPermissionPageState extends State<LocationPermissionPage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<MapCubit, MapState>(
      listener: (context, state) {
        if (state.status == MapStatus.loaded && state.location != null) {
          RouteGenerator.replaceWith(Routes.home);
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: SizeConstants.s24,
              vertical: SizeConstants.s16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        RouteGenerator.replaceWith(Routes.home);
                      },
                      child: Text(
                        AppLocalizations.of(context)!.skip,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: ColorConstants.grey500,
                        ),
                      ),
                    ),
                  ],
                ),
                const VyraSizedBox(height: SizeConstants.s10),
                Image.asset(
                  AssetConstants.locationIllustration,
                  width: MediaQuery.sizeOf(context).width * 0.8,
                ),
                const VyraSizedBox(height: SizeConstants.s40),
                Text(
                  AppLocalizations.of(context)!.locationPermissionTitle,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                const VyraSizedBox(),
                Text(
                  AppLocalizations.of(context)!.locationPermissionDescription,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                const Spacer(),
                VyraActionButton(
                  onTap: () async {
                    final mapCubit = context.read<MapCubit>();
                    await mapCubit.requestLocationPermission();

                    Future.delayed(const Duration(seconds: 1), () {
                      if (mounted) {
                        RouteGenerator.replaceWith(Routes.home);
                      }
                    });
                  },
                  text: AppLocalizations.of(context)!.enableLocation,
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
