import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:keepup/src/design/components/app_bars/app_app_bar.dart';
import 'package:keepup/src/design/components/buttons/app_button.dart';
import 'package:keepup/src/design/components/buttons/app_button_type.dart';
import 'package:keepup/src/design/components/dialogs/apps_dialog.dart';
import 'package:keepup/src/design/components/process_indicators/loading_full_screen.dart';
import 'package:keepup/src/design/components/scrolling/expanded_child_scroll_view.dart';
import 'package:keepup/src/locale/locale_key.dart';
import 'package:keepup/src/ui/profile/components/profile_avatar.dart';
import 'package:keepup/src/ui/profile/components/profile_name.dart';
import 'package:keepup/src/ui/profile/interactor/profile_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileBloc bloc = context.read();
    return BlocBuilder<ProfileBloc, ProfileState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading || previous.userData != current.userData,
      builder: (context, state) {
        return LoadingFullScreen(
          loading: state.isLoading,
          child: Scaffold(
            appBar: AppAppBar(
              implyLeading: true,
              onlyIconLeading: true,
              title: LocaleKey.profile.tr,
            ),
            body: ExpandedChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 32),
                  const Center(child: ProfileAvatar()),
                  const SizedBox(height: 12),
                  const ProfileName(),
                  const Expanded(child: SizedBox(height: 40)),
                  AppButton(
                    onPressed: () => _showDeleteAccountDialog(bloc),
                    buttonType: AppButtonType.deleteAccount,
                    title: LocaleKey.deleteAccount.tr,
                  ),
                  const SizedBox(height: 16),
                  AppButton(
                    onPressed: () => _showLogoutDialog(bloc),
                    buttonType: AppButtonType.logout,
                    title: LocaleKey.logout.tr,
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showDeleteAccountDialog(ProfileBloc bloc) {
    AppDialogs(
      title: LocaleKey.deleteAccount.tr,
      message: LocaleKey.deleteAccountConfirm.tr,
      centerMessage: true,
      confirmTitle: LocaleKey.deleteAccount.tr,
      cancelTitle: LocaleKey.cancel.tr,
    ).show().then((value) {
      if (value is bool && value) {
        bloc.add(const ProfileEvent.onConfirmedDeleteAccount());
      }
    });
  }

  void _showLogoutDialog(ProfileBloc bloc) {
    AppDialogs(
      title: LocaleKey.logout.tr,
      message: LocaleKey.logoutConfirm.tr,
      centerMessage: true,
      confirmTitle: LocaleKey.logout.tr,
      cancelTitle: LocaleKey.cancel.tr,
    ).show().then((value) {
      if (value is bool && value) {
        bloc.add(const ProfileEvent.onConfirmedLogout());
      }
    });
  }
}
