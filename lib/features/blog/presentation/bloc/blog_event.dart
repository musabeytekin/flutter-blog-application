part of 'blog_bloc.dart';

@immutable
sealed class BlogEvent {}

final class BlogUpload extends BlogEvent {
  final String title;
  final String content;
  final String posterId;
  final File image;
  final List<String> topics;

  BlogUpload({
    required this.title,
    required this.content,
    required this.posterId,
    required this.image,
    required this.topics,
  });
}

final class BlogFetchAll extends BlogEvent {}