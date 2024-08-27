package video.api.flutter.livestream.utils

import android.util.Size
import io.github.thibaultbee.streampack.data.AudioConfig
import io.github.thibaultbee.streampack.data.VideoConfig


fun Map<String, Any>.toVideoConfig(): VideoConfig {
    return VideoConfig(
        startBitrate = this["bitrate"] as Int,
        resolution = Size(this["width"], this["height"]),
        fps = this["fps"] as Int
    )
}

fun Map<String, Any>.toAudioConfig(): AudioConfig {
    return AudioConfig(
        startBitrate = this["bitrate"] as Int,
        sampleRate = this["sampleRate"] as Int,
        channelConfig = AudioConfig.getChannelConfig(
            if (this["channel"] == "stereo") {
                2
            } else {
                1
            }
        ),
        enableNoiseSuppressor = this["enableNoiseSuppressor"] as Boolean,
        enableEchoCanceler = this["enableEchoCanceler"] as Boolean
    )
}

/**
 * Add a slash at the end of a [String] only if it is missing.
 *
 * @return the given string with a trailing slash.
 */
fun String.addTrailingSlashIfNeeded(): String {
    return if (this.endsWith("/")) this else "$this/"
}


