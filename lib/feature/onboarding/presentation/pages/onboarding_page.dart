import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/feature/onboarding/presentation/cubits/onboarding_cubit.dart';
import 'package:vyra/feature/onboarding/presentation/widgets/onboarding_widget.dart';
import 'package:vyra/l10n/app_localizations.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: context.read<OnboardingCubit>().state.controller,
          onPageChanged: (index) {
            context.read<OnboardingCubit>().onPageChange(index: index);
          },
          children:
              AssetConstants.onboardingImages
                  .map(
                    (image) => Image.asset(
                      image,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  )
                  .toList(),
        ),
        body(context),
      ],
    );
  }

  OnboardingWidget body(BuildContext context) {
    final List<OnboardingWidget> items = [
      OnboardingWidget(
        title: AppLocalizations.of(context)!.onboardingOneTitle,
        hashtag: AppLocalizations.of(context)!.onboardingOneHashtag,
        description: AppLocalizations.of(context)!.onboardingOneDescription,
      ),
      OnboardingWidget(
        title: AppLocalizations.of(context)!.onboardingTwoTitle,
        hashtag: AppLocalizations.of(context)!.onboardingTwoHashtag,
        description: AppLocalizations.of(context)!.onboardingTwoDescription,
      ),
      OnboardingWidget(
        isSkipable: false,
        title: AppLocalizations.of(context)!.onboardingThreeTitle,
        hashtag: AppLocalizations.of(context)!.onboardingThreeHashtag,
        description: AppLocalizations.of(context)!.onboardingThreeDescription,
      ),
    ];

    return items[context.watch<OnboardingCubit>().state.index];
  }
}
