import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/core/utils/widgets/widgets.dart';
import 'package:vyra/feature/profile/presentation/cubits/profile_cubit.dart';
import 'package:vyra/feature/profile/presentation/widgets/modal_sheet/profile_detail_modal_sheet.dart';
import 'package:vyra/l10n/app_localizations.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<ProfileCubit>().state.user;

    return VyraElementCard(
      child: Row(
        children: [
          // Profile Icon
          Container(
            width: SizeConstants.s50,
            height: SizeConstants.s50,
            decoration: BoxDecoration(
              color: Theme.of(
                context,
              ).colorScheme.primary.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.person_rounded,
              size: SizeConstants.s35,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const VyraSizedBox(width: SizeConstants.s20),
          // User Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user!.fullName,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConstants.s18,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const VyraSizedBox(height: SizeConstants.s4),
                Text(
                  user.email,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: SizeConstants.s14,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const VyraSizedBox(width: SizeConstants.s8),
          // Edit Button
          Container(
            decoration: BoxDecoration(
              color: Theme.of(
                context,
              ).colorScheme.primary.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {
                HapticFeedback.lightImpact();
                vyraModalBottomSheet(
                  context: context,
                  title: AppLocalizations.of(context)!.profileDetail,
                  child: const ProfileDetailModalSheet(),
                  mainAxisSize: MainAxisSize.max,
                );
              },
              icon: Icon(
                Icons.info_outline,
                size: SizeConstants.s22,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
