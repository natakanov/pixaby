// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HitModel {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get largeURL => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HitModelCopyWith<HitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitModelCopyWith<$Res> {
  factory $HitModelCopyWith(HitModel value, $Res Function(HitModel) then) =
      _$HitModelCopyWithImpl<$Res, HitModel>;
  @useResult
  $Res call({int id, String url, String largeURL, int likes, int views});
}

/// @nodoc
class _$HitModelCopyWithImpl<$Res, $Val extends HitModel>
    implements $HitModelCopyWith<$Res> {
  _$HitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? largeURL = null,
    Object? likes = null,
    Object? views = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      largeURL: null == largeURL
          ? _value.largeURL
          : largeURL // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitModelImplCopyWith<$Res>
    implements $HitModelCopyWith<$Res> {
  factory _$$HitModelImplCopyWith(
          _$HitModelImpl value, $Res Function(_$HitModelImpl) then) =
      __$$HitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String url, String largeURL, int likes, int views});
}

/// @nodoc
class __$$HitModelImplCopyWithImpl<$Res>
    extends _$HitModelCopyWithImpl<$Res, _$HitModelImpl>
    implements _$$HitModelImplCopyWith<$Res> {
  __$$HitModelImplCopyWithImpl(
      _$HitModelImpl _value, $Res Function(_$HitModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? largeURL = null,
    Object? likes = null,
    Object? views = null,
  }) {
    return _then(_$HitModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      largeURL: null == largeURL
          ? _value.largeURL
          : largeURL // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HitModelImpl implements _HitModel {
  const _$HitModelImpl(
      {required this.id,
      required this.url,
      required this.largeURL,
      required this.likes,
      required this.views});

  @override
  final int id;
  @override
  final String url;
  @override
  final String largeURL;
  @override
  final int likes;
  @override
  final int views;

  @override
  String toString() {
    return 'HitModel(id: $id, url: $url, largeURL: $largeURL, likes: $likes, views: $views)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.largeURL, largeURL) ||
                other.largeURL == largeURL) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.views, views) || other.views == views));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, url, largeURL, likes, views);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitModelImplCopyWith<_$HitModelImpl> get copyWith =>
      __$$HitModelImplCopyWithImpl<_$HitModelImpl>(this, _$identity);
}

abstract class _HitModel implements HitModel {
  const factory _HitModel(
      {required final int id,
      required final String url,
      required final String largeURL,
      required final int likes,
      required final int views}) = _$HitModelImpl;

  @override
  int get id;
  @override
  String get url;
  @override
  String get largeURL;
  @override
  int get likes;
  @override
  int get views;
  @override
  @JsonKey(ignore: true)
  _$$HitModelImplCopyWith<_$HitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
