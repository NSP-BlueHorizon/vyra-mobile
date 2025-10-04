import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/core/utils/routes/route_generator.dart';
import 'package:vyra/feature/onboarding/presentation/cubits/onboarding_cubit.dart';
import 'package:vyra/l10n/app_localizations.dart';

import '../../../../core/utils/enums/enums.dart';
import '../../../../core/utils/widgets/widgets.dart';

class OnboardingWidget extends StatelessWidget {
  final bool isSkipable;
  final String title;
  final String hashtag;
  final String description;
  final void Function()? nextOnTap;

  const OnboardingWidget({
    super.key,
    this.isSkipable = true,
    required this.title,
    required this.hashtag,
    required this.description,
    this.nextOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<OnboardingCubit>(),
      child: Builder(
        builder: (context) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SizeConstants.s40),
            ),
            margin: EdgeInsets.only(top: MediaQuery.sizeOf(context).height / 2),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: SizeConstants.s30,
                vertical: SizeConstants.s30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    effect: const ExpandingDotsEffect(
                      activeDotColor: ColorConstants.accent,
                      dotColor: ColorConstants.grey300,
                      dotWidth: SizeConstants.s10,
                      dotHeight: SizeConstants.s10,
                    ),
                    controller: context
                        .watch<OnboardingCubit>()
                        .state
                        .controller,
                    count: 4,
                  ),
                  const VyraSizedBox(height: SizeConstants.s30),
                  Text(title, style: Theme.of(context).textTheme.titleLarge),
                  const VyraSizedBox(height: SizeConstants.s20),
                  Text(
                    hashtag,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      height: 1,
                    ),
                  ),
                  const VyraSizedBox(height: SizeConstants.s20),
                  Text(
                    description,
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Spacer(),
                  isSkipable
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                RouteGenerator.replaceWith(Routes.home);
                              },
                              child: Text(
                                AppLocalizations.of(context)!.skip,
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(color: ColorConstants.grey500),
                              ),
                            ),
                            VyraActionButton(
                              text: AppLocalizations.of(context)!.next,
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              onTap: () {
                                context.read<OnboardingCubit>().nextPage();
                              },
                            ),
                          ],
                        )
                      : VyraActionButton(
                          text: AppLocalizations.of(context)!.getStarted,
                          width: double.infinity,
                          onTap: () {
                            RouteGenerator.replaceWith(Routes.home);
                          },
                        ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
