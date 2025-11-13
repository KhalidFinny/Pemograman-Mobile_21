import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RedTextWidget extends StatelessWidget {
  final String text;
  final int maxLines;
  final TextOverflow overflow;

  const RedTextWidget({
    super.key,
    required this.text,
    this.maxLines = 2,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}