import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vyra/core/cubits/main/main_cubit.dart';
import 'package:vyra/core/cubits/main/main_state.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/core/utils/enums/enums.dart';
import 'package:vyra/core/utils/routes/route_generator.dart';
import 'package:vyra/l10n/app_localizations.dart';

import '../../utils/widgets/widgets.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: SizeConstants.s24,
                vertical: SizeConstants.s16,
              ),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetConstants.languageIllustration,
                        width: MediaQuery.sizeOf(context).width * 0.8,
                      ),
                      const VyraSizedBox(height: SizeConstants.s30),
                      Text(
                        AppLocalizations.of(context)!.chooseLanguage,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const VyraSizedBox(),
                      Text(
                        AppLocalizations.of(context)!.chooseLanguageDescription,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                    ],
                  ),
                  const VyraSizedBox(height: SizeConstants.s20),

                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(
                        horizontal: SizeConstants.s16,
                      ),
                      itemCount: Languages.all.length,
                      separatorBuilder:
                          (context, index) =>
                              const VyraSizedBox(height: SizeConstants.s15),
                      itemBuilder: (context, index) {
                        final language = Languages.all[index];
                        final isSelected =
                            state.language == Locale(language.code);

                        return VyraListTile(
                          leading: Image.asset(
                            language.flag,
                            width: SizeConstants.s30,
                            height: SizeConstants.s30,
                          ),
                          title: language.name,
                          trailing:
                              isSelected
                                  ? const Icon(
                                    IconConstants.done,
                                    color: ColorConstants.accent,
                                    size: SizeConstants.s28,
                                  )
                                  : null,
                          onTap: () {
                            context.read<MainCubit>().changeLanguage(language);
                          },
                        );
                      },
                    ),
                  ),

                  const VyraSizedBox(height: SizeConstants.s16),

                  VyraActionButton(
                    text: AppLocalizations.of(context)!.next,
                    width: double.infinity,
                    onTap: () {
                      RouteGenerator.replaceWith(Routes.onboarding);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
