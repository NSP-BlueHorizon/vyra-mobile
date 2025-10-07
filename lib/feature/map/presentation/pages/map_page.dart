import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:vyra/core/utils/widgets/widgets.dart';
import 'package:vyra/feature/map/presentation/cubits/map_cubit.dart';
import 'package:vyra/feature/map/presentation/cubits/map_state.dart';
import 'package:vyra/feature/map/presentation/widgets/route_selection_card.dart';
import 'package:vyra/l10n/app_localizations.dart';

import '../../../../core/utils/constants/constants.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _onSearchSubmitted(String value) {
    if (value.trim().isNotEmpty) {
      FocusScope.of(context).unfocus();
      context.read<MapCubit>().showRouteCard();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MapCubit, MapState>(
      listener: (context, state) {
        if (!state.isRouteCardVisible && searchController.text.isNotEmpty) {
          searchController.clear();
        }
      },
      builder: (context, state) {
        return Scaffold(
          floatingActionButton:
              state.isNavigating
                  ? null
                  : VyraFloatingActionButton(
                    onPressed: () {
                      HapticFeedback.lightImpact();

                      context.read<MapCubit>().getCurrentLocation();
                    },
                  ),
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              MapWidget(
                cameraOptions: CameraOptions(
                  center: Point(
                    coordinates: Position(
                      state.location?.coordinates.lng ?? 0,
                      state.location?.coordinates.lat ?? 0,
                    ),
                  ),
                  zoom: 15,
                ),
                onMapCreated: (MapboxMap mapboxMap) async {
                  final mapCubit = context.read<MapCubit>();
                  mapCubit.setMapboxMap(mapboxMap);

                  if (state.location != null) {
                    await mapboxMap.flyTo(
                      CameraOptions(center: state.location, zoom: 15.0),
                      MapAnimationOptions(duration: 1000),
                    );
                  } else {
                    await mapCubit.getCurrentLocation();
                  }

                  await mapboxMap.logo.updateSettings(
                    LogoSettings(enabled: false),
                  );

                  await mapboxMap.scaleBar.updateSettings(
                    ScaleBarSettings(enabled: false),
                  );

                  await mapboxMap.attribution.updateSettings(
                    AttributionSettings(enabled: false),
                  );

                  await mapboxMap.location.updateSettings(
                    LocationComponentSettings(
                      enabled: true,
                      pulsingEnabled: true,
                      locationPuck: LocationPuck(
                        locationPuck2D: DefaultLocationPuck2D(
                          topImage: null,
                          bearingImage: null,
                          shadowImage: null,
                        ),
                      ),
                    ),
                  );
                },
                styleUri: dotenv.env['MAPBOX_STYLE_URI']!,
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: SizeConstants.s16,
                  ),
                  child: VyraTextField(
                    controller: searchController,
                    hintText: AppLocalizations.of(context)!.search,
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.onPrimary.withValues(alpha: 0.7),
                    borderRadius: SizeConstants.s28,
                    hintTextColor: Theme.of(context).colorScheme.secondary,
                    onSubmitted: _onSearchSubmitted,
                  ),
                ),
              ),
              const RouteSelectionCard(),

              if (state.isNavigating)
                Positioned(
                  bottom: 20,

                  left: 16,
                  right: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: SizeConstants.s16,
                      vertical: SizeConstants.s12,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(SizeConstants.s12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          state.currentNavigationRoute == 'healthiest'
                              ? Icons.eco
                              : Icons.speed,
                          color:
                              state.currentNavigationRoute == 'healthiest'
                                  ? ColorConstants.accent
                                  : Colors.orange,
                          size: SizeConstants.s20,
                        ),
                        const VyraSizedBox(width: SizeConstants.s12),
                        Expanded(
                          child: Text(
                            state.currentNavigationRoute == 'healthiest'
                                ? AppLocalizations.of(
                                  context,
                                )!.navigatingHealthiestRoute
                                : AppLocalizations.of(
                                  context,
                                )!.navigatingFastestRoute,
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            HapticFeedback.lightImpact();
                            context.read<MapCubit>().stopNavigation();
                          },
                          child: Container(
                            padding: const EdgeInsets.all(SizeConstants.s4),
                            decoration: BoxDecoration(
                              color: Colors.red.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(
                                SizeConstants.s4,
                              ),
                            ),
                            child: const Icon(
                              Icons.close,
                              color: Colors.red,
                              size: SizeConstants.s16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
