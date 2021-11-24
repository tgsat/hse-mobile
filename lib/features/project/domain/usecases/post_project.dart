import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hse_product/core/domain/entities/post_general.dart';
import 'package:hse_product/core/domain/usecases/usecase.dart';
import 'package:hse_product/core/error/failures.dart';
import 'package:hse_product/features/project/domain/repositories/project_repository.dart';

class PostProject implements UseCase<PostGeneral, Params> {
  final ProjectRepository repository;

  PostProject(this.repository);

  @override
  Future<Either<Failure, PostGeneral>> call(Params params) async {
    return await repository.postProject(
        params.projectName,
        params.location,
        params.projectType,
        params.date,
        params.name,
        params.hp,
        params.email,
        params.other,
        params.file);
  }
}

class Params extends Equatable {
  final String projectName;
  final String location;
  final String projectType;
  final String date;
  final String name;
  final String hp;
  final String email;
  final String other;
  final File file;

  Params({
    required this.projectName,
    required this.location,
    required this.projectType,
    required this.date,
    required this.name,
    required this.hp,
    required this.email,
    required this.other,
    required this.file,
  });

  @override
  List<Object> get props => [];
}
