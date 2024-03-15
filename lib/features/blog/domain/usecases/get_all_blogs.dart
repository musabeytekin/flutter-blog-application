import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/blog/domain/entities/blog.dart';
import 'package:blog_app/features/blog/domain/repositories/blog_repositories.dart';
import 'package:fpdart/fpdart.dart';

class GetAllBlogs implements UseCase<List<Blog>, NoParams> {
  final BlogRepository repository;

  GetAllBlogs(this.repository);

  @override
  Future<Either<Failure, List<Blog>>> call(NoParams params) async {
    return await repository.getAllBlogs();
  }
}