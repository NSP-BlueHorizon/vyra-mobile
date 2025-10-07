import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vyra/core/cubits/main/main_cubit.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/core/utils/enums/enums.dart';
import 'package:vyra/core/utils/routes/route_generator.dart';
import 'package:vyra/core/utils/widgets/widgets.dart';

class ThemeModalSheet extends StatefulWidget {
  const ThemeModalSheet({super.key});

  @override
  State<ThemeModalSheet> createState() => _ThemeModalSheetState();
}

class _ThemeModalSheetState extends State<ThemeModalSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: SizeConstants.s20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: Themes.all.length,
            separatorBuilder: (context, index) =>
                const VyraSizedBox(height: SizeConstants.s15),
            itemBuilder: (context, index) {
              final themeOption = Themes.all[index];
              return GestureDetector(
                onTap: () {
                  context.read<MainCubit>().changeTheme(themeOption.themeMode);
                  RouteGenerator.pop();
                },
                child: VyraElementCard(
                  padding: SizeConstants.s8,
                  borderColor: context.watch<MainCubit>().state.themeMode ==
                          themeOption.themeMode
                      ? ColorConstants.accent
                      : null,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConstants.s16),
                    child: Row(
                      children: [
                        Image.asset(
                          themeOption.image,
                          width: SizeConstants.s40,
                          height: SizeConstants.s40,
                        ),
                        const VyraSizedBox(width: SizeConstants.s15),
                        Text(
                          themeOption.getLocalizedTitle(context),
                          style: const TextStyle(
                            fontSize: SizeConstants.s14,
                          ),
                        ),
                        const Spacer(),
                        context.watch<MainCubit>().state.themeMode ==
                                themeOption.themeMode
                            ? const Icon(
                                Icons.done_rounded,
                                size: SizeConstants.s28,
                                color: ColorConstants.accent,
                              )
                            : const SizedBox()
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
