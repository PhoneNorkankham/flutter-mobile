import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/colors/app_colors.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/process_indicators/loading_full_screen.dart';
import 'package:keepup/src/design/themes/extensions/theme_extensions.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/settings/interactor/settings_bloc.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingsBloc bloc = context.read();
    return BlocBuilder<SettingsBloc, SettingsState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        return LoadingFullScreen(
          loading: state.isLoading,
          child: Scaffold(
            backgroundColor: AppColors.primary,
            appBar: AppAppBar(
              title: LocaleKey.settings.tr,
              implyLeading: true,
              onlyIconLeading: true,
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(vertical: 12),
              children: [
                ListTile(
                  onTap: () => _showResetDialog(bloc),
                  leading: Icon(Icons.restart_alt, color: Theme.of(context).colorScheme.onPrimary),
                  title: Text(
                    LocaleKey.resetData.tr,
                    style: context.appTextTheme.medium16.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showResetDialog(SettingsBloc bloc) {
    AppDialogs(
      title: LocaleKey.resetData.tr,
      message: LocaleKey.resetDataConfirm.tr,
      centerMessage: true,
      confirmTitle: LocaleKey.resetData.tr,
      cancelTitle: LocaleKey.cancel.tr,
    ).show().then((value) {
      if (value is bool && value) {
        bloc.add(const SettingsEvent.onConfirmedResetData());
      }
    });
  }
}
