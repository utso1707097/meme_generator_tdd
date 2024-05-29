
import 'package:dartz/dartz.dart';
import 'package:meme_generator/core/error/failure.dart';
import 'package:meme_generator/data/datasources/meme_datasources.dart';
import 'package:meme_generator/data/models/memes_model.dart';
import 'package:meme_generator/domain/repositories/imeme_repositories.dart';

class MemeRepositoriesImpl extends ImemeRepositories{

  final MemeDataSources memeDataSources;

  MemeRepositoriesImpl({required this.memeDataSources});
  @override
  Future<Either<Failure, List<MemesModel>>> getMemes() {
    return memeDataSources.getMemes();
  }

}