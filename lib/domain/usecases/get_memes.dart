
import 'package:dartz/dartz.dart';
import 'package:meme_generator/core/error/failure.dart';
import 'package:meme_generator/core/usecases/empty_params.dart';
import 'package:meme_generator/core/usecases/usecases.dart';
import 'package:meme_generator/domain/entities/memes.dart';
import 'package:meme_generator/domain/repositories/imeme_repositories.dart';

class GetMemes implements UseCases<List<Memes>,NoParams>{

  const GetMemes({
    required this.imemeRepositories,
});

  final ImemeRepositories imemeRepositories;

  @override
  Future<Either<Failure, List<Memes>>> call(NoParams params) {
    return imemeRepositories.getMemes();
  }

}