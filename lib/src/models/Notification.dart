import 'package:club_house/src/models/User.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Notification.g.dart';

@JsonSerializable()
class Notification {
  int notificationId;
  User user_profile;
  bool is_unread;
  int event_id;
  // 1=> user 16=> event
  int type;
  DateTime time_created;
  String message;

  is_event()=> type == 16;

  Notification(this.is_unread,this.notificationId,this.event_id,this.type,this.time_created,this.message);

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);
}

@JsonSerializable()
class NotificationResponse{

  int count;

  List<Notification> notifications;

  NotificationResponse(this.count, this.notifications);

  factory NotificationResponse.fromJson(Map<String, dynamic> json) => _$NotificationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationResponseToJson(this);
}