import 'package:driver_app/core/constants/app_constants.dart';
import 'package:driver_app/l10n/app_localizations.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;
import 'dart:typed_data';
import 'package:flutter/material.dart';


Future<Uint8List> getBytesFromAsset(String path) async {
  final assets = await rootBundle.load(path);
  return assets.buffer.asUint8List();
}
Future<void> copyToClipboard(
    String? title,
    String? content,
    AppLocalizations l10n,
    ) async {
  final buffer = StringBuffer();

  if (title != null && title.isNotEmpty) {
    buffer.writeln('*$title*\n');
  }

  if (content != null && content.isNotEmpty) {
    buffer.writeln(content);
    buffer.writeln();
  }

  buffer.writeln('${l10n.sharedFromApp} ${AppConstants.appName}');

  await Clipboard.setData(
    ClipboardData(text: buffer.toString().trim()),
  );
}

Future<Uint8List> circleImage(Color color) async {
  const size = 64.0;

  final recorder = ui.PictureRecorder();
  final canvas = Canvas(recorder);

  final paint = Paint()..color = color;

  canvas.drawCircle(
    const Offset(size / 2, size / 2),
    size / 2,
    paint,
  );

  final picture = recorder.endRecording();
  final image = await picture.toImage(size.toInt(), size.toInt());

  final byteData = await image.toByteData(format: ui.ImageByteFormat.png);

  return byteData!.buffer.asUint8List();
}