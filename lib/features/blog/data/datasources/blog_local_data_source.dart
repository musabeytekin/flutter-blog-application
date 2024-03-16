import 'package:blog_app/features/blog/data/models/blog_model.dart';
import 'package:hive/hive.dart';

abstract interface class BlogLocalDataSource {
  void cacheBlogs(List<BlogModel> blogs);
  List<BlogModel> getLastBlogs();
}

class BlogLocalDataSourceImpl implements BlogLocalDataSource {
  final Box box;

  BlogLocalDataSourceImpl(this.box);
  @override
  void cacheBlogs(List<BlogModel> blogs) {
    box.clear();
    box.write(() {
      for (int i = 0; i < blogs.length; i++) {
        box.put(i.toString(), blogs[i].toJson());
        print(blogs[i].posterName);
      }
    });
  }

  @override
  List<BlogModel> getLastBlogs() {
    List<BlogModel> blogs = [];

    box.read(() => {
          for (int i = 0; i < box.length; i++)
            {
              blogs.add(BlogModel.fromJson(
                box.get(i.toString()),
              ))
            }
        });
    
    return blogs;
  }
}
