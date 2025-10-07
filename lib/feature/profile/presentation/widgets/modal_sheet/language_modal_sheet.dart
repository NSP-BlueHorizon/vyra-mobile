import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vyra/core/cubits/main/main_cubit.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/core/utils/enums/enums.dart';
import 'package:vyra/core/utils/routes/route_generator.dart';
import 'package:vyra/core/utils/widgets/widgets.dart';
import 'package:vyra/l10n/app_localizations.dart';

class LanguageModalSheet extends StatefulWidget {
  const LanguageModalSheet({super.key});

  @override
  State<LanguageModalSheet> createState() => _LanguageModalSheetState();
}

class _LanguageModalSheetState extends State<LanguageModalSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.chooseLanguageDescription,
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
        ),
        const VyraSizedBox(height: SizeConstants.s20),
        ListView.separated(
          itemCount: Languages.all.length,
          shrinkWrap: true,
          separatorBuilder: (context, index) =>
              const VyraSizedBox(height: SizeConstants.s15),
          itemBuilder: (context, index) {
            final language = Languages.all[index];
            return GestureDetector(
              onTap: () {
                context.read<MainCubit>().changeLanguage(language);
                RouteGenerator.pop();
              },
              child: VyraElementCard(
                padding: SizeConstants.s8,
                borderColor:
                    context.watch<MainCubit>().state.language.languageCode ==
                            language.code
                        ? Theme.of(context).colorScheme.primary
                        : null,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: SizeConstants.s16),
                  child: Row(
                    children: [
                      Image.asset(
                        language.flag,
                        width: SizeConstants.s35,
                        height: SizeConstants.s35,
                      ),
                      const VyraSizedBox(width: SizeConstants.s15),
                      Text(
                        language.name,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const Spacer(),
                      context.watch<MainCubit>().state.language.languageCode ==
                              language.code
                          ? const Icon(
                              Icons.done_rounded,
                              size: SizeConstants.s28,
                              color: ColorConstants.accent,
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
