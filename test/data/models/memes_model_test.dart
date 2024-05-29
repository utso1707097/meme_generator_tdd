import 'package:flutter_test/flutter_test.dart';
import 'package:meme_generator/data/models/memes_model.dart';

import '../../mocks/migrated_mocks.dart';

void main() {
  test('MemeModel should create a json when we use  MemeModelToJsonMethod', ()async{
    final memeModel = await MemesModel.fromJson(mockMemesJson);
    final resultModel = memeModel.toJson();
    expect(memeModel.id, '1');
    expect(memeModel.name, 'Dhet');
    expect(memeModel.url, 'https://abcd.com');
    expect(memeModel.width, 1523);
    expect(memeModel.height, 234);
    expect(memeModel.boxCount, 2);


    expect(resultModel['id'], mockMemesJson['id']);
    expect(resultModel['name'], mockMemesJson['name']);
    expect(resultModel['url'], mockMemesJson['url']);
    expect(resultModel['width'], mockMemesJson['width']);
    expect(resultModel['height'], mockMemesJson['height']);
    expect(resultModel['boxCount'], mockMemesJson['boxCount']);
  });
}
