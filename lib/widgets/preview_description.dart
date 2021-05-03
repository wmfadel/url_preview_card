import 'package:flutter/material.dart';

/// Shows description of URL
class PreviewDescription extends StatelessWidget {
  final String? _description;
  final TextStyle _textStyle;
  final int _descriptionLines;

  PreviewDescription(
      this._description, this._textStyle, this._descriptionLines);

  @override
  Widget build(BuildContext context) {
    if (_description != null) {
      return Text(
        _description!,
        textAlign: TextAlign.left,
        maxLines: _descriptionLines,
        style: _textStyle,
      );
    } else {
      return SizedBox();
    }
  }
}
