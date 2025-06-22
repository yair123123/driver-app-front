import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GiveDialog extends StatelessWidget{
  final bool isRideActive;
  final void Function() func;
  final int dispatcherId;

  const GiveDialog({
    Key? key,
    required this.isRideActive,
    required this.func,
    required this.dispatcherId,
  }) : super(key: key);

  Widget build (BuildContext ctx){
    return AlertDialog(
            title: const Text('פרטים נוספים'),
            content: const Text('מה תרצה לעשות?'),
            actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                    ctx.go('chats/here enter dispatcher id');
                  },
                  child: const Text('צ׳אט עם הסדרן'),
                ),
              ElevatedButton(
                statesController: WidgetStatesController(),
                onPressed:
                    isRideActive
                        ? null
                        : () {
                          Navigator.of(ctx).pop();
                          func();
                        },
                child: const Text('תן'),
              ),
            ],
          );
  }
}