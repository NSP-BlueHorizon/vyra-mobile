import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vyra/feature/settings/data/models/help_center_model.dart';
import 'package:vyra/l10n/app_localizations.dart';

import '../../../../../core/utils/constants/constants.dart';
import '../../../../../core/utils/widgets/widgets.dart';

class HelpCenterModalSheet extends StatelessWidget {
  const HelpCenterModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final List<HelpCenterModel> faqItems = [
      HelpCenterModel(
        title: AppLocalizations.of(context)!.faqOne,
        answer: AppLocalizations.of(context)!.faqOneAnswer,
      ),
      HelpCenterModel(
        title: AppLocalizations.of(context)!.faqTwo,
        answer: AppLocalizations.of(context)!.faqTwoAnswer,
      ),
      HelpCenterModel(
        title: AppLocalizations.of(context)!.faqThree,
        answer: AppLocalizations.of(context)!.faqThreeAnswer,
      ),
      HelpCenterModel(
        title: AppLocalizations.of(context)!.faqFour,
        answer: AppLocalizations.of(context)!.faqFourAnswer,
      ),
      HelpCenterModel(
        title: AppLocalizations.of(context)!.faqFive,
        answer: AppLocalizations.of(context)!.faqFiveAnswer,
      ),
      HelpCenterModel(
        title: AppLocalizations.of(context)!.faqSix,
        answer: AppLocalizations.of(context)!.faqSixAnswer,
      ),
      HelpCenterModel(
        title: AppLocalizations.of(context)!.faqSeven,
        answer: AppLocalizations.of(context)!.faqSevenAnswer,
      ),
      HelpCenterModel(
        title: AppLocalizations.of(context)!.faqEight,
        answer: AppLocalizations.of(context)!.faqEightAnswer,
      ),
      HelpCenterModel(
        title: AppLocalizations.of(context)!.faqNine,
        answer: AppLocalizations.of(context)!.faqNineAnswer,
      ),
      HelpCenterModel(
        title: AppLocalizations.of(context)!.faqTen,
        answer: AppLocalizations.of(context)!.faqTenAnswer,
      ),
    ];

    return ListView(
      children: [
        Text(
          AppLocalizations.of(context)!.faqTitle,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const VyraSizedBox(),
        Text(
          AppLocalizations.of(context)!.faqDescription,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
          textAlign: TextAlign.justify,
        ),
        const VyraSizedBox(),
        ListView.builder(
          itemCount: faqItems.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          itemBuilder: (context, index) {
            return VyraExpansiontile(
              index: index,
              title: faqItems[index].title,
              answer: faqItems[index].answer,
            );
          },
        ),
        const VyraSizedBox(height: SizeConstants.s30),
        VyraActionButton(
          width: double.infinity,
          text: AppLocalizations.of(context)!.contactUs,
          onTap: () async {
            final supportEmail = TextConstants.supportEmail;
            HapticFeedback.lightImpact();

            final Uri emailLaunchUri = Uri.parse('mailto:$supportEmail');

            if (!await launchUrl(
              emailLaunchUri,
              mode: LaunchMode.externalApplication,
            )) {
              throw 'Could not launch email app';
            }
          },
        ),
      ],
    );
  }
}
