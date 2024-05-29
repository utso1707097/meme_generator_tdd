import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meme_generator/domain/entities/memes.dart';

part 'memes_model.freezed.dart';
part 'memes_model.g.dart';

@freezed
class MemesModel with _$MemesModel implements Memes {
  const factory MemesModel({
    required String id,
    required String name,
    required String url,
    required int width,
    required int height,
    required int boxCount,
  }) = _MemesModel;

  factory MemesModel.fromJson(Map<String, dynamic> json) => _$MemesModelFromJson(json);
}
