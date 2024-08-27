// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoConfig _$VideoConfigFromJson(Map<String, dynamic> json) => VideoConfig(
      bitrate: (json['bitrate'] as num).toInt(),
      height: (json['height'] as num?)?.toInt() ?? 1280,
      width: (json['width'] as num?)?.toInt() ?? 720,
      fps: (json['fps'] as num?)?.toInt() ?? 30,
    );

Map<String, dynamic> _$VideoConfigToJson(VideoConfig instance) =>
    <String, dynamic>{
      'bitrate': instance.bitrate,
      'height': instance.height,
      'width': instance.width,
      'fps': instance.fps,
    };
