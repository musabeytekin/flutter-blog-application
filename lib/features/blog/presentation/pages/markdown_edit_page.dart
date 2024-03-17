import 'package:flutter/material.dart';

class MarkdownEditPage extends StatelessWidget {
  final TextEditingController contentController;

  static route(TextEditingController contentController) => MaterialPageRoute(
      builder: (context) =>
          MarkdownEditPage(contentController: contentController));
  const MarkdownEditPage({super.key, required this.contentController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.done_rounded),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: contentController,
          maxLines: null,
          expands: true,
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(
            hintText: 'Write your content here...',
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
          autofocus: true,
        ),
      ),
    );
  }
}
