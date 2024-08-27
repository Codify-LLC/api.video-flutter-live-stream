import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';

part 'video_config.g.dart';

/// Live streaming video configuration.
@JsonSerializable()
class VideoConfig {
  /// The video bitrate in bps
  int bitrate;

  /// The live streaming video resolution
  int height;

  int width;

  /// The video frame rate in fps
  int fps;

  /// Creates a [VideoConfig] instance
  VideoConfig(
      {required this.bitrate,
      this.height = 1280,
        this.width = 720,
      this.fps = 30})
      : assert(bitrate > 0),
        assert(fps > 0);


  /// Creates a [VideoConfig] from a [json] map.
  factory VideoConfig.fromJson(Map<String, dynamic> json) =>
      _$VideoConfigFromJson(json);

  /// Creates a json map from a [VideoConfig].
  Map<String, dynamic> toJson() => _$VideoConfigToJson(this);

}
