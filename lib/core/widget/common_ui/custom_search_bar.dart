import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:driver_app/core/error/error_message_helper.dart';
import 'package:driver_app/core/error/failure.dart';
import 'package:driver_app/core/extensions/context_extention.dart';
import 'package:driver_app/core/icons/app_svg_icon.dart';
import 'package:driver_app/core/icons/custom_icon.dart';
import 'package:driver_app/core/media/media_utils.dart';
import 'package:driver_app/l10n/app_localizations.dart';
import 'package:driver_app/theme/app_spacing.dart';

class SearchBarCustom extends ConsumerStatefulWidget {
  const SearchBarCustom({
    super.key,
    required this.onSearch,
    this.error,
    this.onChanged,
    this.initialValue = '',
  });

  final void Function(String query) onSearch;
  final void Function(String value)? onChanged;
  final String initialValue;
  final Failure? error;

  @override
  ConsumerState<SearchBarCustom> createState() => _SearchBarCustomState();
}

class _SearchBarCustomState extends ConsumerState<SearchBarCustom> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  bool _hasSearched = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
    _focusNode = FocusNode()
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void didUpdateWidget(covariant SearchBarCustom oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialValue != widget.initialValue &&
        _controller.text != widget.initialValue) {
      _controller.text = widget.initialValue;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _submit(AppLocalizations l10n) {
    final query = _controller.text.trim();

    widget.onSearch(query);

    setState(() {
      _hasSearched = true;
    });

    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext ctx) {
    final l10n = AppLocalizations.of(ctx)!;

    final bool hasFocus = _focusNode.hasFocus;
    final bool hasError = widget.error != null;
    final bool showClearIcon = _hasSearched && !hasFocus;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSearchBox(l10n, ctx, hasError, showClearIcon, hasFocus),
        SizedBox(height: AppSpacing.xs),
        if (hasError) buildErrorLine(l10n, ctx, widget.error!),
      ],
    );
  }

  Widget buildErrorLine(
    AppLocalizations l10n,
    BuildContext ctx,
    Failure error,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        mapFailureToUiData(error, l10n).title,
        style: ctx.textStyles.labelMedium!.apply(color: ctx.colorScheme.error),
      ),
    );
  }

  Widget buildSearchBox(
    AppLocalizations l10n,
    BuildContext ctx,
    bool hasError,
    bool showClearIcon,
    bool hasFocus,
  ) {
    return SizedBox(
      height: AppSpacing.xxxxl,
      child: SearchBar(
        focusNode: _focusNode,
        controller: _controller,
        hintText: l10n.search,
        shape: hasError
            ? WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                    color: ctx.colorScheme.error,
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                ),
              )
            : null,
        onChanged: (value) {
          widget.onChanged?.call(value);
          if (value.isNotEmpty && !_hasSearched) {}
          setState(() {});
        },

        onSubmitted: (_) => _submit(l10n),

        trailing: [
          Container(
            width: AppSpacing.xxxl,
            height: AppSpacing.xxxl,
            decoration: ShapeDecoration(
              color: _focusNode.hasFocus
                  ? ctx.colorScheme.surface
                  : ctx.colorScheme.secondary,
              shape: const CircleBorder(),
            ),

            child: IconButton(
              icon: showClearIcon
                  ? Icon(Icons.close, color: Colors.black)
                  : hasFocus
                  ? AppSvgIcon(
                      icon: CustomIcon.tabSearchActive,
                      width: AppSpacing.ml,
                      height: AppSpacing.ml,
                    )
                  : AppSvgIcon(
                      icon: CustomIcon.tabSearch,
                      width: AppSpacing.ml,
                      height: AppSpacing.ml,
                    ),

              onPressed: () {
                if (showClearIcon) {
                  _controller.clear();
                  widget.onChanged?.call('');
                  setState(() {
                    _hasSearched = false;
                  });
                  _focusNode.requestFocus();
                } else {
                  _submit(l10n);
                }
              },
              tooltip: showClearIcon ? "l10n.clear" : l10n.search,
            ),
          ),
        ],
      ),
    );
  }
}
