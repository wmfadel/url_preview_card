import 'package:flutter/material.dart';

/// Shows title of URL
class PreviewTitle extends StatelessWidget {
  final String? _title;
  final TextStyle _textStyle;
  final int _titleLines;

  PreviewTitle(this._title, this._textStyle, this._titleLines);

  @override
  Widget build(BuildContext context) {
    if (_title != null) {
      return Text(
        _title!,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        maxLines: _titleLines,
        style: _textStyle,
      );
    } else {
      return SizedBox();
    }
  }
}
