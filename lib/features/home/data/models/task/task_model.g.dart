// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      json['id'] as int?,
      json['createdAt'] as String?,
      json['dueDate'] as String?,
      json['title'] as String?,
      json['description'] as String?,
      json['completed'] as bool?,
      json['image'] as String?,
      json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'dueDate': instance.dueDate,
      'title': instance.title,
      'description': instance.description,
      'completed': instance.completed,
      'image': instance.image,
      'user': instance.user,
    };
