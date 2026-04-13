import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TypeSetRender extends StatelessWidget {
  final String caption;
  final void Function(String url) onLinkTaped;
  final TextStyle baseStyle;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const TypeSetRender({
    required this.caption,
    required this.onLinkTaped,
    required this.baseStyle,
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.clip,
      text: TextSpan(
        style: baseStyle,
        children: _buildSpans(caption),
      ),
    );
  }

  List<InlineSpan> _buildSpans(String input) {
    final spans = <InlineSpan>[];

    final linkRegex = RegExp(
      r'((https?:\/\/)[^\s]+)',
      caseSensitive: false,
    );

    int currentIndex = 0;

    for (final match in linkRegex.allMatches(input)) {
      if (match.start > currentIndex) {
        final normalPart = input.substring(currentIndex, match.start);
        spans.addAll(_buildStyledTextSpans(normalPart));
      }

      final url = match.group(0)!;

      spans.add(
        TextSpan(
          text: url,
          style: baseStyle.copyWith(
            color: const Color(0xFF0B5FFF),
            decoration: TextDecoration.underline,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              onLinkTaped(url);
            },
        ),
      );

      currentIndex = match.end;
    }

    if (currentIndex < input.length) {
      spans.addAll(_buildStyledTextSpans(input.substring(currentIndex)));
    }

    return spans;
  }

  List<InlineSpan> _buildStyledTextSpans(String input) {
    final spans = <InlineSpan>[];

    final styleRegex = RegExp(
      r'(\*([^*\n]+)\*)|(_([^_\n]+)_)|(~([^~\n]+)~)|(`([^`\n]+)`)',
      multiLine: true,
    );

    int currentIndex = 0;

    for (final match in styleRegex.allMatches(input)) {
      if (match.start > currentIndex) {
        spans.add(
          TextSpan(
            text: input.substring(currentIndex, match.start),
          ),
        );
      }

      final fullMatch = match.group(0)!;

      if (fullMatch.startsWith('*')) {
        spans.add(
          TextSpan(
            text: match.group(2),
            style: baseStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      } else if (fullMatch.startsWith('_')) {
        spans.add(
          TextSpan(
            text: match.group(4),
            style: baseStyle.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        );
      } else if (fullMatch.startsWith('~')) {
        spans.add(
          TextSpan(
            text: match.group(6),
            style: baseStyle.copyWith(
              decoration: TextDecoration.lineThrough,
            ),
          ),
        );
      } else if (fullMatch.startsWith('`')) {
        spans.add(
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: const Color(0xFFF1F3F5),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                match.group(8)!,
                style: baseStyle.copyWith(
                  fontFamily: 'monospace',
                ),
              ),
            ),
          ),
        );
      }

      currentIndex = match.end;
    }

    if (currentIndex < input.length) {
      spans.add(
        TextSpan(
          text: input.substring(currentIndex),
        ),
      );
    }

    return spans;
  }
}