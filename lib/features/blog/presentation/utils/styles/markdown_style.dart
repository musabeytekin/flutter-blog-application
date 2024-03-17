import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

MarkdownStyleSheet markDownStyle() {
  return MarkdownStyleSheet(
    p: const TextStyle(
      fontSize: 14,
      height: 1.7,
    ),
    h1: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    h2: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    h3: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    h4: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    h5: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    h6: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  );
}
