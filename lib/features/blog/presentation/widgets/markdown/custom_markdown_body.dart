// ignore_for_file: public_member_api_docs, sort_constructors_first
// MarkdownBody(
//                     data: blog.content,
//                     styleSheet: MarkdownStyleSheet(
//                       p: const TextStyle(
//                         fontSize: 14,
//                         color: AppPallete.whiteColor,
//                         height: 1.7,
//                       ),
//                       h2: const TextStyle(
//                         fontSize: 18,
//                         color: AppPallete.whiteColor,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
// ),

import 'package:blog_app/features/blog/presentation/utils/styles/markdown_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class CustomMarkdownBody extends StatelessWidget {
  final String data;

  const CustomMarkdownBody({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      data: data,
      styleSheetTheme: MarkdownStyleSheetBaseTheme.material,
      styleSheet: markDownStyle(),
    );
  }

 
}
