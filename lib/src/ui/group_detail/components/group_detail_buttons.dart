import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/group_detail/interactor/group_detail_bloc.dart';

class GroupDetailButtons extends StatelessWidget {
  const GroupDetailButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final GroupDetailBloc bloc = context.read();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 145,
            child: BlocBuilder<GroupDetailBloc, GroupDetailState>(
              buildWhen: (previous, current) =>
                  previous.request.isValidate != current.request.isValidate,
              builder: (context, state) {
                return Opacity(
                  opacity: state.request.isValidate ? 1 : 0.5,
                  child: AppButton(
                    onPressed: state.request.isValidate
                        ? () => bloc.add(const GroupDetailEvent.onSavePressed())
                        : null,
                    buttonType: AppButtonType.primary,
                    title: LocaleKey.save.tr,
                  ),
                );
              },
            ),
          ),
          const Expanded(flex: 60, child: SizedBox(width: 12)),
          Expanded(
            flex: 145,
            child: AppButton(
              onPressed: () => bloc.add(const GroupDetailEvent.onCancelPressed()),
              buttonType: AppButtonType.outlined,
              title: LocaleKey.cancel.tr,
            ),
          ),
        ],
      ),
    );
  }
}
