import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meme_generator/data/datasources/meme_datasources.dart';
import 'package:meme_generator/data/repositories/meme_repositories.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../mocks/migrated_mocks.dart';
import 'meme_repositories_test.mocks.dart';

@GenerateMocks([MemeDataSources])
void main() {
  final mockMemeDataSource = MockMemeDataSources();

  void setupSuccessForGetMemes() {
    when(mockMemeDataSource.getMemes()).thenAnswer(
      (realInvocation) async =>  Right(mockListofMemesModel),
    );
  }

  void setupFailureForGetMemes() {
    when(mockMemeDataSource.getMemes()).thenAnswer(
          (realInvocation) async => const Left(mockFailure),
    );
  }

  test('while calling getMemes we should get list of Meme Models', () async {
    setupSuccessForGetMemes();
    final mockMemeReposotoryImpl =
        MemeRepositoriesImpl(memeDataSources: mockMemeDataSource);

    final res = await mockMemeReposotoryImpl.getMemes();

    expect(res.fold((l) => l, (r) => r), mockListofMemesModel);
  });

  test('while calling getMemes we should get failure', () async {
    setupFailureForGetMemes();
    final mockMemeReposotoryImpl =
    MemeRepositoriesImpl(memeDataSources: mockMemeDataSource);

    final res = await mockMemeReposotoryImpl.getMemes();

    expect(res.fold((l) => l, (r) => r), mockFailure);
  });
}
