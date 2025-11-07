import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masarak/extentions.dart';
import 'package:masarak/pages/auth/presentation/login_page.dart';
import 'package:masarak/pages/checks/providers/checks_provider.dart';
import 'package:masarak/pages/home/providers/check_points_provider.dart';
import 'package:masarak/pages/trip/providers/searchs_provider.dart';
import 'package:masarak/services/storage/email_password_storage.dart';

class LogoutDialog extends ConsumerWidget {
  const LogoutDialog({
    super.key,
  });
  static show(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => LogoutDialog(),
    );
  }

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return AlertDialog(
      title: Text(
        'هل انت متأكد؟',
      ),
      content: Text('سيتم تفريغ ارشيف الحركات والبحث الخاص بك..'),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              context.theme.primaryColor.withOpacity(
                .1,
              ),
            ),
            foregroundColor: WidgetStatePropertyAll(
              context.theme.primaryColor,
            ),
          ),
          child: Text(
            'الغاء',
          ),
        ),
        TextButton(
          onPressed: () {
            AuthInfo.clearAll();
            ref.read(searchHistoryProvider.notifier).dropTable();
            ref.read(checksHistoryProvider.notifier).dropTable();
            context.push(LoginPage.route);
            ref.invalidate(checkPoinstProvider);
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              Colors.red.withOpacity(
                .1,
              ),
            ),
            foregroundColor: WidgetStatePropertyAll(
              Colors.red,
            ),
          ),
          child: Text(
            'متابعة',
          ),
        ),
      ],
    );
  }
}
