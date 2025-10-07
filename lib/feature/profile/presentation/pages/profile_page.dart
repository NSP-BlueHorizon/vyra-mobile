import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vyra/core/cubits/main/main_cubit.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/core/utils/enums/enums.dart';
import 'package:vyra/core/utils/routes/route_generator.dart';
import 'package:vyra/core/utils/widgets/widgets.dart';
import 'package:vyra/feature/auth/presentation/cubits/auth_cubit.dart';
import 'package:vyra/feature/auth/presentation/cubits/auth_state.dart';
import 'package:vyra/feature/profile/data/models/profile_model.dart';
import 'package:vyra/feature/profile/presentation/widgets/modal_sheet/help_center_modal_sheet.dart';
import 'package:vyra/feature/profile/presentation/widgets/modal_sheet/language_modal_sheet.dart';
import 'package:vyra/feature/profile/presentation/widgets/modal_sheet/theme_modal_sheet.dart';
import 'package:vyra/feature/profile/presentation/widgets/profile_card.dart';
import 'package:vyra/injection_container.dart';
import 'package:vyra/l10n/app_localizations.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final preferenceItems = [
      ProfileModel(
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
      ProfileModel(
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

    final supportItems = [
      ProfileModel(
        icon: Icons.help_outline,
        title: AppLocalizations.of(context)!.helpCenter,
        onTap: () {
          HapticFeedback.lightImpact();
          vyraModalBottomSheet(
            context: context,
            isBackgroundFaded: true,
            title: AppLocalizations.of(context)!.helpCenter,
            child: const HelpCenterModalSheet(),
          );
        },
      ),
      ProfileModel(
        icon: Icons.share_outlined,
        title: AppLocalizations.of(context)!.recommendApp,
        onTap: () {
          HapticFeedback.lightImpact();
          Share.share(
            '${AppLocalizations.of(context)!.checkOutVyra} - ${UrlConstants.appStoreURL}',
          );
        },
      ),
      ProfileModel(
        icon: Icons.policy_outlined,
        title: AppLocalizations.of(context)!.termsAndConditions,
        trailing: Icon(Icons.arrow_outward_rounded),
        onTap: () async {
          HapticFeedback.lightImpact();
          const url = UrlConstants.termsOfServiceURL;
          final Uri uri = Uri.parse(url);
          if (!await launchUrl(uri, mode: LaunchMode.inAppBrowserView)) {
            throw AppLocalizations.of(context)!.couldNotLaunch;
          }
        },
      ),
    ];

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.signout) {
          RouteGenerator.replaceWith(Routes.signin);
        }
      },
      child: Scaffold(
        appBar: VyraAppbar(title: AppLocalizations.of(context)!.profile),
        body: ListView(
          padding: const EdgeInsets.all(SizeConstants.s16),
          children: [
            const ProfileCard(),
            const VyraSizedBox(),
            ProfileSection(
              title: AppLocalizations.of(context)!.preferences,
              items: preferenceItems,
            ),
            ProfileSection(
              title: AppLocalizations.of(context)!.support,
              items: supportItems,
            ),
            const VyraSizedBox(height: SizeConstants.s15),
            ProfileTile(
              item: ProfileModel(
                icon: Icons.logout,
                trailing: SizedBox(),
                title: AppLocalizations.of(context)!.signOut,
                onTap: () {
                  HapticFeedback.lightImpact();
                  context.read<MainCubit>().resetIndex();
                  context.read<AuthCubit>().signout();
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
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  final String title;
  final List<ProfileModel> items;

  const ProfileSection({super.key, required this.title, required this.items});

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
            return ProfileTile(item: item);
          },
        ),
      ],
    );
  }
}

class ProfileTile extends StatelessWidget {
  final ProfileModel item;

  const ProfileTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onTap,
      child: VyraElementCard(
        padding: SizeConstants.s12,
        child: Row(
          children: [
            Container(
              width: SizeConstants.s40,
              height: SizeConstants.s40,
              decoration: BoxDecoration(
                color: ColorConstants.accent.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                item.icon,
                size: SizeConstants.s20,
                color: ColorConstants.accent,
              ),
            ),
            const VyraSizedBox(width: SizeConstants.s12),
            Expanded(
              child: Text(
                item.title,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(fontSize: SizeConstants.s16),
              ),
            ),
            if (item.trailing != null) ...[item.trailing!],
            if (item.trailing == null) ...[
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
