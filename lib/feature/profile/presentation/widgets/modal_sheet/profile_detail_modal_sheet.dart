import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/core/utils/widgets/widgets.dart';
import 'package:vyra/feature/profile/presentation/cubits/profile_cubit.dart';
import 'package:vyra/feature/profile/presentation/cubits/profile_state.dart';
import 'package:vyra/l10n/app_localizations.dart';

class ProfileDetailModalSheet extends StatelessWidget {
  const ProfileDetailModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        final currentUser = state.user;

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VyraSizedBox(height: SizeConstants.s16),
              // Username Field
              _EditFieldTile(
                label: AppLocalizations.of(context)!.username,
                value: currentUser!.username,
                icon: IconConstants.username,
                isReadOnly: true,
              ),
              const VyraSizedBox(height: SizeConstants.s12),
              // Email Field
              _EditFieldTile(
                label: AppLocalizations.of(context)!.email,
                value: currentUser.email,
                icon: IconConstants.email,
                isReadOnly: true,
              ),
              const VyraSizedBox(height: SizeConstants.s12),
              // Full Name Field
              _EditFieldTile(
                label: AppLocalizations.of(context)!.fullName,
                value: currentUser.fullName,
                icon: IconConstants.fullName,
                isReadOnly: true,
              ),
              const VyraSizedBox(height: SizeConstants.s12),
              // Birth Date Field
              _EditFieldTile(
                label: AppLocalizations.of(context)!.birthDate,
                value: currentUser.birthDate,
                icon: IconConstants.birthDate,
                isReadOnly: true,
              ),
              const VyraSizedBox(height: SizeConstants.s12),
              // Last Sign In Date (Read-only)
              _EditFieldTile(
                label: AppLocalizations.of(context)!.lastSignIn,
                value: currentUser.lastSigninDate,
                icon: Icons.access_time_rounded,
                isReadOnly: true,
              ),
              const VyraSizedBox(height: SizeConstants.s24),
            ],
          ),
        );
      },
    );
  }
}

class _EditFieldTile extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final bool isReadOnly;

  const _EditFieldTile({
    required this.label,
    required this.value,
    required this.icon,
    this.isReadOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return VyraElementCard(
      padding: SizeConstants.s12,
      child: Row(
        children: [
          // Icon
          Container(
            width: SizeConstants.s40,
            height: SizeConstants.s40,
            decoration: BoxDecoration(
              color: ColorConstants.accent.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: SizeConstants.s20,
              color: ColorConstants.accent,
            ),
          ),
          const VyraSizedBox(width: SizeConstants.s12),
          // Label and Value
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: SizeConstants.s12,
                  ),
                ),
                const VyraSizedBox(height: SizeConstants.s2),
                Text(
                  value,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: SizeConstants.s15,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
