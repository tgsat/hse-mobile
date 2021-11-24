import 'package:dartz/dartz.dart';
import 'package:hse_product/core/domain/usecases/usecase.dart';
import 'package:hse_product/core/error/failures.dart';
import 'package:hse_product/features/project/domain/entities/list_project.dart';
import 'package:hse_product/features/project/domain/repositories/project_repository.dart';

class GetProjects implements UseCase<ListProject, Params> {
  final ProjectRepository repository;

  GetProjects(this.repository);

  @override
  Future<Either<Failure, ListProject>> call(Params params) async {
    return await repository.getProjects(params.url);
  }
}

class Params {
  final String? url;

  Params({this.url});
}
