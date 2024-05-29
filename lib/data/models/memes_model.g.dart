// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemesModelImpl _$$MemesModelImplFromJson(Map<String, dynamic> json) =>
    _$MemesModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      boxCount: (json['boxCount'] as num).toInt(),
    );

Map<String, dynamic> _$$MemesModelImplToJson(_$MemesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'boxCount': instance.boxCount,
    };
