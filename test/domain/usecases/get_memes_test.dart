import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meme_generator/core/usecases/empty_params.dart';
import 'package:meme_generator/domain/repositories/imeme_repositories.dart';
import 'package:meme_generator/domain/usecases/get_memes.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../mocks/migrated_mocks.dart';
import 'get_memes_test.mocks.dart';

@GenerateMocks([ImemeRepositories])
void main() {
  final mockImemeRepositories = MockImemeRepositories();

  void setUpSuccessForGetMemes() async {
    when(mockImemeRepositories.getMemes())
        .thenAnswer((realInvocation) async => Right(mockListofMemes));
  }

  void setUpFailureForGetMemes() async {
    when(mockImemeRepositories.getMemes())
        .thenAnswer((realInvocation) async => Left(mockFailure));
  }

  test('while calling getMemes useCases should get List of Memes objects',
          () async {
        setUpSuccessForGetMemes();

        GetMemes getMemes = GetMemes(imemeRepositories: mockImemeRepositories);

        final result = await getMemes(NoParams());

        expect(result.fold((l) => l, (r) => r), mockListofMemes);
      });

  test('while calling getMemes useCases should Failure',
          () async {
        setUpFailureForGetMemes();

        GetMemes getMemes = GetMemes(imemeRepositories: mockImemeRepositories);

        final result = await getMemes(NoParams());

        expect(result.fold((l) => l, (r) => r), mockFailure);
      });
}
