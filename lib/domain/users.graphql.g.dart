// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$GetUser _$Query$GetUserFromJson(Map<String, dynamic> json) =>
    Query$GetUser(
      user: json['user'] == null
          ? null
          : Query$GetUser$user.fromJson(json['user'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetUserToJson(Query$GetUser instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetUser$user _$Query$GetUser$userFromJson(Map<String, dynamic> json) =>
    Query$GetUser$user(
      me: json['me'] == null
          ? null
          : Query$GetUser$user$me.fromJson(json['me'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetUser$userToJson(Query$GetUser$user instance) =>
    <String, dynamic>{
      'me': instance.me?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetUser$user$me _$Query$GetUser$user$meFromJson(
        Map<String, dynamic> json) =>
    Query$GetUser$user$me(
      id: json['id'] as String,
      fullname: json['fullname'] as String,
      avatarURL: json['avatarURL'] as String?,
      email: json['email'] as String,
      telephone: json['telephone'] as String,
      address: json['address'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetUser$user$meToJson(
        Query$GetUser$user$me instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'avatarURL': instance.avatarURL,
      'email': instance.email,
      'telephone': instance.telephone,
      'address': instance.address,
      '__typename': instance.$__typename,
    };
