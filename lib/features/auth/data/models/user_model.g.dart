// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int?,
      createdAt: json['createdAt'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      age: json['age'] as int?,
      avatar: json['avatar'] as String?,
      tasks: json['tasks'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'name': instance.name,
      'email': instance.email,
      'age': instance.age,
      'avatar': instance.avatar,
      'tasks': instance.tasks,
    };
