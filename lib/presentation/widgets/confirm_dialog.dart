import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class ConfirmDialog {
  static Future<bool?> confirmDialog(BuildContext context) async =>
      await showDialog<bool>(
          context: context,
          builder: (ctx) {
            return AlertDialog.adaptive(
              title: const Text('Вы не сохранили данные'),
              content: const Text(
                  'Вы уверены, что хотите уйти с этой страницы?\nВ таком случае все данные будут потеряны'),
              actions: [
                TextButton(
                    onPressed: () => ctx.pop(true), child: const Text('Уйти')),
                TextButton(
                    onPressed: () => ctx.pop(false),
                    child: const Text('Остаться')),
              ],
            );
          });
}
