import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:meme_generator/core/error/failure.dart';
import 'package:meme_generator/data/models/memes_model.dart';

abstract class MemeDataSources {
  Future<Either<Failure, List<MemesModel>>> getMemes();
}

class MemeDataSourcesImpl implements MemeDataSources {
  final dio = Dio();
  @override
  Future<Either<Failure, List<MemesModel>>> getMemes() async{
    try {
      final response = await dio.get('https://api.imgflip.com/get_memes');
      if(response.statusCode == 200){
        debugPrint("This is here");
        return Right((response.data['data']['memes'] as List<dynamic>).map(
            (e) => MemesModel.fromJson( e as Map<String, dynamic>)
        ).toList());
      }
      else{
        return const Left(
          Failure(message: 'Server Failure')
        );
      }
    } catch (e) {
      print('Error fetching memes: $e');
    }

    return Left(Failure());
  }
}