import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_bloc.dart';
import 'package:keepup/src/ui/keep_up_soon/interactor/keep_up_soon_type.dart';

class KeepUpSoonHeader extends StatelessWidget {
  const KeepUpSoonHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final KeepUpSoonBloc bloc = context.read();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          LocaleKey.keepUpSoon.tr,
          style: context.appTextTheme.bold36.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        BlocBuilder<KeepUpSoonBloc, KeepUpSoonState>(
          buildWhen: (previous, current) => previous.type != current.type,
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: KeepUpSoonType.values.map((e) {
                final bool isSelected = e == state.type;
                return Container(
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: AppButton(
                    onPressed: isSelected ? null : () => bloc.add(KeepUpSoonEvent.onChangedType(e)),
                    buttonType: isSelected ? AppButtonType.greenKeepUp : AppButtonType.whiteKeepUp,
                    title: e.title,
                  ),
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }
}
