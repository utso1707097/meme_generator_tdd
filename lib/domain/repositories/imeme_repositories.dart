import 'package:dartz/dartz.dart';
import 'package:meme_generator/core/error/failure.dart';
import 'package:meme_generator/domain/entities/memes.dart';


abstract class ImemeRepositories {
  Future<Either<Failure,List<Memes>>> getMemes();
}