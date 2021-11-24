import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:hse_product/core/domain/entities/post_general.dart';
import 'package:hse_product/core/error/failures.dart';
import 'package:hse_product/features/project/domain/entities/list_project.dart';

abstract class ProjectRepository {
  Future<Either<Failure, PostGeneral>> postProject(
    String projectName,
    String location,
    String projectType,
    String date,
    String name,
    String hp,
    String email,
    String other,
    File file,
  );

  Future<Either<Failure, ListProject>> getProjects(String? url);
}
