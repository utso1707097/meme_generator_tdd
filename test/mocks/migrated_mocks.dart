import 'package:meme_generator/core/error/failure.dart';
import 'package:meme_generator/data/models/memes_model.dart';
import 'package:meme_generator/domain/entities/memes.dart';

final mockListofMemes = [
  const Memes(
      id: '1',
      name: 'Lavlu',
      url: 'https://abcd.com',
      width: 120,
      height: 12,
      boxCount: 20)
];

final mockListofMemesModel = [
  const MemesModel(
      id: '1',
      name: 'Lavlu',
      url: 'https://abcd.com',
      width: 120,
      height: 12,
      boxCount: 20)
];

const mockFailure = Failure(message: 'Server Failure');

Map<String, dynamic> mockMemesJson = {
  "id": '1',
  "name": 'Dhet',
  "url": "https://abcd.com",
  "width": 1523,
  "height": 234,
  "boxCount": 2,
};

const mockMemesEntities = Memes(
  id: '1',
  name: 'Dhet',
  url: "https://abcd.com",
  width: 1523,
  height: 234,
  boxCount: 2,
);
