import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/core/utils/widgets/widgets.dart';
import 'package:vyra/feature/auth/presentation/cubits/auth_cubit.dart';
import 'package:vyra/feature/map/data/models/route_model.dart';
import 'package:vyra/feature/map/presentation/cubits/map_cubit.dart';
import 'package:vyra/feature/map/presentation/cubits/map_state.dart';
import 'package:vyra/l10n/app_localizations.dart';

class RouteSelectionCard extends StatelessWidget {
  const RouteSelectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MapCubit, MapState>(
      listener: (context, state) {
        // Show error message if route fetching fails
        if (state.status == MapStatus.routeFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(AppLocalizations.of(context)!.routeFetchError),
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 3),
            ),
          );
        }
      },
      builder: (context, state) {
        if (!state.isRouteCardVisible) {
          return const SizedBox.shrink();
        }

        // If route is loaded, show result card instead
        if (state.status == MapStatus.routeLoaded && state.routeData != null) {
          return _RouteResultCard();
        }

        return DraggableScrollableSheet(
          snap: true,
          snapSizes: const [0.4, 0.75],
          minChildSize: 0.4,
          maxChildSize: 0.75,
          initialChildSize: 0.4,
          snapAnimationDuration: const Duration(milliseconds: 200),
          builder: (context, scrollController) {
            return Container(
              padding: const EdgeInsets.only(top: SizeConstants.s8),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(SizeConstants.s30),
                  topRight: Radius.circular(SizeConstants.s30),
                ),
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                padding: const EdgeInsets.symmetric(
                  horizontal: SizeConstants.s16,
                  vertical: SizeConstants.s20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Close button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.findRoute,
                          style: Theme.of(context).textTheme.headlineSmall!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        IconButton(
                          onPressed: () {
                            HapticFeedback.lightImpact();
                            context.read<MapCubit>().hideRouteCard();
                          },
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                    const VyraSizedBox(height: SizeConstants.s24),

                    // Mode Selection Tabs
                    Text(
                      AppLocalizations.of(context)!.mode,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const VyraSizedBox(height: SizeConstants.s12),
                    _ModeTabs(),
                    const VyraSizedBox(height: SizeConstants.s24),

                    // Season Selection Chips
                    Text(
                      AppLocalizations.of(context)!.season,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const VyraSizedBox(height: SizeConstants.s12),
                    _SeasonChips(),
                    const VyraSizedBox(height: SizeConstants.s32),

                    // Navigate Button
                    VyraActionButton(
                      text: AppLocalizations.of(context)!.navigate,
                      isLoading: state.status == MapStatus.routeLoading,
                      onTap:
                          state.status == MapStatus.routeLoading
                              ? null
                              : () async {
                                final origin = Point(
                                  coordinates: Position(
                                    context
                                        .read<MapCubit>()
                                        .state
                                        .location!
                                        .coordinates
                                        .lat,
                                    context
                                        .read<MapCubit>()
                                        .state
                                        .location!
                                        .coordinates
                                        .lng,
                                  ),
                                );
                                final destination = Point(
                                  coordinates: Position(40.986436, 29.053846),
                                );
                                context.read<MapCubit>().setOriginDestination(
                                  origin,
                                  destination,
                                );

                                await context.read<MapCubit>().fetchRoute(
                                  context.read<AuthCubit>().state.refreshToken!,
                                );
                              },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _ModeTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(SizeConstants.s12),
          ),
          child: Row(
            children: [
              Expanded(
                child: _ModeTab(
                  icon: IconConstants.walking,
                  label: AppLocalizations.of(context)!.walking,
                  isSelected: state.selectedMode == 'walking',
                  onTap: () {
                    context.read<MapCubit>().setMode('walking');
                  },
                ),
              ),
              const VyraSizedBox(width: SizeConstants.s12),
              Expanded(
                child: _ModeTab(
                  icon: IconConstants.cycling,
                  label: AppLocalizations.of(context)!.cycling,
                  isSelected: state.selectedMode == 'cycling',
                  onTap: () {
                    context.read<MapCubit>().setMode('cycling');
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ModeTab extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _ModeTab({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: SizeConstants.s12,
          horizontal: SizeConstants.s16,
        ),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? ColorConstants.accent.withValues(alpha: 0.1)
                  : Theme.of(context).colorScheme.onSurface,
          borderRadius: BorderRadius.circular(SizeConstants.s12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color:
                  isSelected
                      ? ColorConstants.accent
                      : Theme.of(context).colorScheme.onSecondary,
              size: SizeConstants.s22, // Make icons slightly bigger
            ),
            const VyraSizedBox(width: SizeConstants.s8),
            Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color:
                    isSelected
                        ? ColorConstants.accent
                        : Theme.of(context).colorScheme.onSecondary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SeasonChips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final seasons = [
      {
        'key': 'winter',
        'label': AppLocalizations.of(context)!.winter,
        'icon': IconConstants.winter,
      },
      {
        'key': 'spring',
        'label': AppLocalizations.of(context)!.spring,
        'icon': IconConstants.spring,
      },
      {
        'key': 'summer',
        'label': AppLocalizations.of(context)!.summer,
        'icon': IconConstants.summer,
      },
      {
        'key': 'fall',
        'label': AppLocalizations.of(context)!.fall,
        'icon': IconConstants.fall,
      },
    ];

    return BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        return SizedBox(
          height: 40, // Fixed height for horizontal scrolling
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: seasons.length,
            itemBuilder: (context, index) {
              final season = seasons[index];
              final isSelected =
                  state.selectedSeason == season['key'] as String;
              return Padding(
                padding: EdgeInsets.only(
                  right: index < seasons.length - 1 ? SizeConstants.s8 : 0,
                ),
                child: VyraChip(
                  label: season['label'] as String,
                  icon: Icon(
                    season['icon'] as IconData,
                    size: SizeConstants.s18,
                  ),
                  isSelected: isSelected,
                  onSelected: (selected) {
                    if (selected) {
                      context.read<MapCubit>().setSeason(
                        season['key'] as String,
                      );
                    }
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class _RouteResultCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        final routeData = state.routeData;
        if (routeData == null) return const SizedBox.shrink();

        return DraggableScrollableSheet(
          snap: true,
          snapSizes: const [0.3, 0.65],
          minChildSize: 0.3,
          maxChildSize: 0.65,
          initialChildSize: 0.3,
          snapAnimationDuration: const Duration(milliseconds: 200),
          builder: (context, scrollController) {
            return Container(
              padding: const EdgeInsets.only(top: SizeConstants.s8),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(SizeConstants.s30),
                  topRight: Radius.circular(SizeConstants.s30),
                ),
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                padding: const EdgeInsets.symmetric(
                  horizontal: SizeConstants.s16,
                  vertical: SizeConstants.s12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.routeDetails,
                          style: Theme.of(context).textTheme.headlineSmall!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        IconButton(
                          onPressed: () {
                            context.read<MapCubit>().hideRouteCard();
                          },
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                    const VyraSizedBox(height: SizeConstants.s16),

                    // Heatmap Toggle
                    BlocBuilder<MapCubit, MapState>(
                      builder: (context, state) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: SizeConstants.s16,
                            vertical: SizeConstants.s12,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(
                              SizeConstants.s12,
                            ),
                            border: Border.all(
                              color: Colors.red.withValues(alpha: 0.3),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.thermostat_auto,
                                color:
                                    state.isHeatmapVisible
                                        ? Colors.red
                                        : Colors.red.withValues(alpha: 0.6),
                                size: SizeConstants.s20,
                              ),
                              const VyraSizedBox(width: SizeConstants.s12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.showHeatmap,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium!.copyWith(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      AppLocalizations.of(
                                        context,
                                      )!.heatmapDescription,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall!.copyWith(
                                        color: Colors.red.withValues(
                                          alpha: 0.8,
                                        ),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Switch(
                                value: state.isHeatmapVisible,
                                onChanged: (value) {
                                  context.read<MapCubit>().toggleHeatmap();
                                },
                                activeColor: Colors.red,
                                activeTrackColor: Colors.red.withValues(
                                  alpha: 0.3,
                                ),
                                inactiveThumbColor: Colors.red.withValues(
                                  alpha: 0.6,
                                ),
                                inactiveTrackColor: Colors.red.withValues(
                                  alpha: 0.1,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    const VyraSizedBox(height: SizeConstants.s16),

                    // Healthiest Route Card
                    _RouteInfoCard(
                      title: AppLocalizations.of(context)!.healthiestRoute,
                      icon: IconConstants.leaf,
                      iconColor: ColorConstants.accent,
                      routeDetail: routeData.healthiest,
                      isHealthiest: true,
                    ),
                    const VyraSizedBox(height: SizeConstants.s12),

                    // Fastest Route Card
                    _RouteInfoCard(
                      title: AppLocalizations.of(context)!.fastestRoute,
                      icon: IconConstants.speed,
                      iconColor: Colors.orange,
                      routeDetail: routeData.fastest,
                      isHealthiest: false,
                    ),

                    const VyraSizedBox(height: SizeConstants.s16),

                    // Explanation card
                    Container(
                      padding: const EdgeInsets.all(SizeConstants.s16),
                      decoration: BoxDecoration(
                        color: Colors.yellow.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(SizeConstants.s12),
                        border: Border.all(
                          color: Colors.yellow.withValues(alpha: 0.3),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.yellow,
                            size: SizeConstants.s20,
                          ),
                          const VyraSizedBox(width: SizeConstants.s12),
                          Expanded(
                            child: Text(
                              routeData.explain,
                              style: Theme.of(
                                context,
                              ).textTheme.bodySmall!.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _RouteInfoCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final RouteDetail routeDetail;
  final bool isHealthiest;

  const _RouteInfoCard({
    required this.title,
    required this.icon,
    required this.iconColor,
    required this.routeDetail,
    this.isHealthiest = true,
  });

  @override
  Widget build(BuildContext context) {
    final distanceKm = (routeDetail.distanceKm ?? 0).toStringAsFixed(2);
    final durationMin = (routeDetail.etaMin ?? 0).toStringAsFixed(0);
    final cardColor = isHealthiest ? ColorConstants.accent : Colors.orange;

    return Container(
      padding: const EdgeInsets.all(SizeConstants.s12),
      decoration: BoxDecoration(
        color: cardColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(SizeConstants.s16),
        border: Border.all(color: cardColor.withValues(alpha: 0.3), width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(SizeConstants.s8),
                decoration: BoxDecoration(
                  color: cardColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(SizeConstants.s8),
                ),
                child: Icon(icon, color: cardColor, size: SizeConstants.s24),
              ),
              const VyraSizedBox(width: SizeConstants.s12),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                    color:
                        cardColor, // Use card accent color instead of secondary
                  ),
                ),
              ),
            ],
          ),
          const VyraSizedBox(height: SizeConstants.s8),
          _InfoRow(
            label: AppLocalizations.of(context)!.distance,
            value: '$distanceKm km',
            icon: Icons.straighten,
            iconColor: cardColor,
          ),
          const VyraSizedBox(height: SizeConstants.s8),
          _InfoRow(
            label: AppLocalizations.of(context)!.duration,
            value: '$durationMin min',
            icon: Icons.access_time,
            iconColor: cardColor,
          ),
          const VyraSizedBox(height: SizeConstants.s8),
          _InfoRow(
            label: AppLocalizations.of(context)!.healthStressIndex,
            value: (routeDetail.hsiAvg ?? 0).toStringAsFixed(1),
            icon: Icons.favorite,
            iconColor: cardColor,
          ),
          const VyraSizedBox(height: SizeConstants.s8),
          _InfoRow(
            label: AppLocalizations.of(context)!.exposure,
            value:
                '${((routeDetail.exposureAvg ?? 0) * 100).toStringAsFixed(0)}%',
            icon: Icons.wb_sunny,
            iconColor: cardColor,
          ),
          const VyraSizedBox(height: SizeConstants.s12),
          // Navigation button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Start navigation for this specific route
                final routeType = isHealthiest ? 'healthiest' : 'fastest';
                context.read<MapCubit>().startNavigation(
                  routeDetail: routeDetail,
                  routeType: routeType,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: iconColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  vertical: SizeConstants.s12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(SizeConstants.s8),
                ),
              ),
              child: Text(
                AppLocalizations.of(context)!.navigate,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  final IconData? icon;
  final Color? iconColor;

  const _InfoRow({
    required this.label,
    required this.value,
    this.icon,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            if (icon != null) ...[
              Icon(
                icon!,
                size: SizeConstants.s20, // Make icons bigger
                color: iconColor ?? Theme.of(context).colorScheme.onSurface,
              ),
              const VyraSizedBox(width: SizeConstants.s8),
            ],
            Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
