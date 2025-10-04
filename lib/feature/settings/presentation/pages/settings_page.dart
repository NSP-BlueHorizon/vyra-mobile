import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/core/utils/widgets/widgets.dart';
import 'package:vyra/feature/settings/data/models/settings_model.dart';
import 'package:vyra/feature/settings/presentation/widgets/modal_sheet/help_center_modal_sheet.dart';
import 'package:vyra/feature/settings/presentation/widgets/modal_sheet/language_modal_sheet.dart';
import 'package:vyra/feature/settings/presentation/widgets/modal_sheet/theme_modal_sheet.dart';
import 'package:vyra/injection_container.dart';
import 'package:vyra/l10n/app_localizations.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final preferenceItems = [
      SettingsModel(
        icon: Icons.language,
        title: AppLocalizations.of(context)!.language,
        onTap: () {
          HapticFeedback.lightImpact();
          vyraModalBottomSheet(
            context: context,
            isBackgroundFaded: true,
            title: AppLocalizations.of(context)!.language,
            child: const LanguageModalSheet(),
          );
        },
      ),
      SettingsModel(
        icon: Icons.palette_outlined,
        title: AppLocalizations.of(context)!.theme,
        onTap: () {
          HapticFeedback.lightImpact();
          vyraModalBottomSheet(
            context: context,
            isBackgroundFaded: true,
            title: AppLocalizations.of(context)!.theme,
            child: const ThemeModalSheet(),
          );
        },
      ),
    ];

    final feedbackItems = [
      SettingsModel(
        icon: Icons.share_outlined,
        title: AppLocalizations.of(context)!.recommendApp,
        trailing: Icon(Icons.arrow_outward_rounded),

        onTap: () async {
          HapticFeedback.lightImpact();
          const url = UrlConstants.appStoreURL;

          await SharePlus.instance.share(
            ShareParams(
              subject: TextConstants.appRecommendation,
              uri: Uri.tryParse(url),
            ),
          );
        },
      ),
    ];

    final supportItems = [
      SettingsModel(
        icon: Icons.help_outline,
        title: AppLocalizations.of(context)!.helpCenter,
        onTap: () {
          HapticFeedback.lightImpact();
          vyraModalBottomSheet(
            context: context,
            title: AppLocalizations.of(context)!.helpCenter,
            child: const HelpCenterModalSheet(),
          );
        },
      ),
      SettingsModel(
        icon: Icons.privacy_tip_outlined,
        title: AppLocalizations.of(context)!.privacyPolicy,
        trailing: Icon(Icons.arrow_outward_rounded),
        onTap: () async {
          HapticFeedback.lightImpact();
          const url = UrlConstants.privacyPolicyURL;
          final Uri uri = Uri.parse(url);
          if (!await launchUrl(uri, mode: LaunchMode.inAppBrowserView)) {
            throw 'Could not launch';
          }
        },
      ),
      SettingsModel(
        icon: Icons.policy_outlined,
        title: AppLocalizations.of(context)!.termsAndConditions,
        trailing: Icon(Icons.arrow_outward_rounded),

        onTap: () async {
          HapticFeedback.lightImpact();
          const url = UrlConstants.termsOfServiceURL;
          final Uri uri = Uri.parse(url);
          if (!await launchUrl(uri, mode: LaunchMode.inAppBrowserView)) {
            throw 'Could not launch';
          }
        },
      ),
    ];

    return Scaffold(
      appBar: VyraAppbar(title: AppLocalizations.of(context)!.settings),
      body: ListView(
        padding: const EdgeInsets.all(SizeConstants.s16),
        children: [
          SettingsSection(
            title: AppLocalizations.of(context)!.preferences,
            items: preferenceItems,
          ),
          SettingsSection(
            title: AppLocalizations.of(context)!.feedback,
            items: feedbackItems,
          ),
          SettingsSection(
            title: AppLocalizations.of(context)!.support,
            items: supportItems,
          ),
          const VyraSizedBox(height: SizeConstants.s15),
          SettingsTile(
            item: SettingsModel(
              icon: Icons.logout,
              trailing: SizedBox(),
              title: AppLocalizations.of(context)!.signOut,

              onTap: () {
                HapticFeedback.lightImpact();
              },
            ),
          ),
          const VyraSizedBox(height: SizeConstants.s20),

          Center(
            child: Text(
              '${sl<PackageInfo>().appName} v${sl<PackageInfo>().version}',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsSection extends StatelessWidget {
  final String title;
  final List<SettingsModel> items;

  const SettingsSection({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        ListView.separated(
          itemCount: items.length,
          shrinkWrap: true,
          padding: const EdgeInsets.only(bottom: SizeConstants.s15),
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) {
            return const VyraSizedBox(height: SizeConstants.s15);
          },
          itemBuilder: (context, index) {
            final item = items[index];
            return SettingsTile(item: item);
          },
        ),
      ],
    );
  }
}

class SettingsTile extends StatelessWidget {
  final SettingsModel item;

  const SettingsTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onTap,
      child: VyraElementCard(
        child: Row(
          children: [
            Icon(
              item.icon,
              size: SizeConstants.s25,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            const VyraSizedBox(),
            Text(
              item.title,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(fontSize: SizeConstants.s16),
            ),
            if (item.trailing != null) ...[const Spacer(), item.trailing!],
            if (item.trailing == null) ...[
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: SizeConstants.s20,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
