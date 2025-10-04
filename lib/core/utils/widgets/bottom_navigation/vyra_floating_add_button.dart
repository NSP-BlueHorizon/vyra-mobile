import 'package:flutter/material.dart';
import 'package:vyra/l10n/app_localizations.dart';

import '../../constants/constants.dart';
import '../modal_bottom_sheet/vyra_modal_bottom_sheet.dart';

class VyraFloatingAddButton extends StatelessWidget {
  const VyraFloatingAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.only(bottom: SizeConstants.s20),
      child: SizedBox(
        width: SizeConstants.s55,
        height: SizeConstants.s55,
        child: FloatingActionButton(
          elevation: 0,
          focusElevation: 0,
          highlightElevation: 0,
          child: const Icon(IconConstants.add, size: SizeConstants.s40),
          onPressed: () {
            vyraModalBottomSheet(
              context: context,
              title: localization.create,
              child: const Text('Create Modal Sheet'),
            );
          },
        ),
      ),
    );
  }
}
