import 'package:blog_app/features/blog/domain/entities/blog.dart';

class BlogModel extends Blog {
  BlogModel({
    required super.id,
    required super.title,
    required super.content,
    required super.posterId,
    required super.imageUrl,
    required super.updatedAt,
    required super.topics,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'content': content,
      'poster_id': posterId,
      'image_url': imageUrl,
      'updated_at': updatedAt.toIso8601String(),
      // 'updatedAt': updatedAt.millisecondsSinceEpoch, // no
      'topics': topics,
    };
  }

  factory BlogModel.fromJson(Map<String, dynamic> map) {
    return BlogModel(
      id: map['id'] as String,
      title: map['title'] as String,
      content: map['content'] as String,
      posterId: map['poster_id'] as String,
      imageUrl: map['image_url'] as String,
      updatedAt: map['updated_at'] == null
          ? DateTime.now()
          : DateTime.parse(map['updated_at']),
      topics: List<String>.from(
        (map['topics'] ?? []),
      ),
    );
  }

  BlogModel copyWith({
    String? id,
    String? title,
    String? content,
    String? posterId,
    String? imageUrl,
    DateTime? updatedAt,
    List<String>? topics,
  }) {
    return BlogModel(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      posterId: posterId ?? this.posterId,
      imageUrl: imageUrl ?? this.imageUrl,
      updatedAt: updatedAt ?? this.updatedAt,
      topics: topics ?? this.topics,
    );
  }
}
