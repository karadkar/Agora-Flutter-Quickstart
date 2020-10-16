import 'package:agora_rtc_engine/rtc_engine.dart';

class AgoraConfiguration {
  final String channelName;
  final ChannelProfile channelProfile;
  final ClientRole clientRole;

  AgoraConfiguration({this.channelName, this.channelProfile, this.clientRole});

  @override
  bool operator ==(Object other) {
    if (other is AgoraConfiguration) {
      return (other.channelName == channelName &&
          other.clientRole == clientRole &&
          other.channelProfile == channelProfile);
    } else {
      return false;
    }
  }

  @override
  int get hashCode {
    // not an ideal way to calculate hashcode
    return channelName.hashCode + clientRole.hashCode + channelProfile.hashCode;
  }
}
