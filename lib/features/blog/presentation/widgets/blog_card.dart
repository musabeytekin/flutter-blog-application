import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/blog/domain/entities/blog.dart';
import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  final Blog blog;
  const BlogCard({
    super.key,
    required this.blog,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.blogCardColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: AppPallete.blogCardRadiusColor,
            blurStyle: BlurStyle.inner,
            blurRadius: 3,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            blog.title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: blog.topics
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Chip(
                        label: Text(
                          e,
                          style: const TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          const Spacer(),
          Text(
            '${blog.content.substring(0, 150)}...',
          ),
          const Spacer(),
          Row(
            children: [
              const Text('1 min'),
              const Spacer(),
              RichText(text: 
                TextSpan(
                  text: 'By ',
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(
                      text: blog.posterName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
