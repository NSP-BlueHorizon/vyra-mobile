import 'package:flutter/material.dart';
import 'package:vyra/core/utils/routes/route_generator.dart';

import '../../constants/constants.dart';

Future<T?> vyraModalBottomSheet<T>({
  required BuildContext context,
  required String title,
  required Widget child,
  MainAxisSize mainAxisSize = MainAxisSize.min,
  bool isBackgroundFaded = true,
}) {
  return showModalBottomSheet(
    useSafeArea: true,
    backgroundColor: Theme.of(context).colorScheme.surface,
    barrierColor: isBackgroundFaded
        ? ColorConstants.black.withValues(alpha: 0.9)
        : ColorConstants.transparent,
    useRootNavigator: true,
    isScrollControlled: true,
    elevation: 0,
    showDragHandle: true,
    context: context,
    builder: (_) => Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: SizeConstants.s8,
        left: SizeConstants.s24,
        right: SizeConstants.s24,
        bottom: SizeConstants.s24,
      ),
      child: Column(
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface
                      .withValues(alpha: 0.4),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  style: const ButtonStyle(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    RouteGenerator.pop();
                  },
                  icon: Icon(
                    Icons.close,
                    size: SizeConstants.s20,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ],
          ),
          Flexible(child: child),
        ],
      ),
    ),
  );
}
