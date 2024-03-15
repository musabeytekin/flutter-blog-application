import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/core/utils/calculate_reading_time.dart';
import 'package:blog_app/core/utils/format_date.dart';
import 'package:blog_app/features/blog/domain/entities/blog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BlogViewerPage extends StatelessWidget {
  static route(Blog blog) =>
      MaterialPageRoute(builder: (context) => BlogViewerPage(blog: blog));

  final Blog blog;
  const BlogViewerPage({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  blog.title,
                  style:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(height: 10),
                RichText(
                    text: TextSpan(
                  text: 'By ',
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppPallete.mutedTextColor,
                  ),
                  children: [
                    TextSpan(
                      text: blog.posterName,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                )),
                const SizedBox(height: 10),
                Text(
                  '${formatDateByDMMMYYYY(blog.updatedAt)}. ${calculateReadingTime(blog.content)} min read',
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppPallete.greyColor,
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  child: Image.network(
                    blog.imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  blog.content,
                  style: const TextStyle(
                    fontSize: 15,
                    height: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
