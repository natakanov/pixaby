// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hits_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HitsListModel {
  int get total => throw _privateConstructorUsedError;
  IList<HitModel> get hits => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HitsListModelCopyWith<HitsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitsListModelCopyWith<$Res> {
  factory $HitsListModelCopyWith(
          HitsListModel value, $Res Function(HitsListModel) then) =
      _$HitsListModelCopyWithImpl<$Res, HitsListModel>;
  @useResult
  $Res call({int total, IList<HitModel> hits});
}

/// @nodoc
class _$HitsListModelCopyWithImpl<$Res, $Val extends HitsListModel>
    implements $HitsListModelCopyWith<$Res> {
  _$HitsListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? hits = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      hits: null == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as IList<HitModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitsListModelImplCopyWith<$Res>
    implements $HitsListModelCopyWith<$Res> {
  factory _$$HitsListModelImplCopyWith(
          _$HitsListModelImpl value, $Res Function(_$HitsListModelImpl) then) =
      __$$HitsListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, IList<HitModel> hits});
}

/// @nodoc
class __$$HitsListModelImplCopyWithImpl<$Res>
    extends _$HitsListModelCopyWithImpl<$Res, _$HitsListModelImpl>
    implements _$$HitsListModelImplCopyWith<$Res> {
  __$$HitsListModelImplCopyWithImpl(
      _$HitsListModelImpl _value, $Res Function(_$HitsListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? hits = null,
  }) {
    return _then(_$HitsListModelImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      hits: null == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as IList<HitModel>,
    ));
  }
}

/// @nodoc

class _$HitsListModelImpl implements _HitsListModel {
  const _$HitsListModelImpl({required this.total, required this.hits});

  @override
  final int total;
  @override
  final IList<HitModel> hits;

  @override
  String toString() {
    return 'HitsListModel(total: $total, hits: $hits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitsListModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other.hits, hits));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(hits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitsListModelImplCopyWith<_$HitsListModelImpl> get copyWith =>
      __$$HitsListModelImplCopyWithImpl<_$HitsListModelImpl>(this, _$identity);
}

abstract class _HitsListModel implements HitsListModel {
  const factory _HitsListModel(
      {required final int total,
      required final IList<HitModel> hits}) = _$HitsListModelImpl;

  @override
  int get total;
  @override
  IList<HitModel> get hits;
  @override
  @JsonKey(ignore: true)
  _$$HitsListModelImplCopyWith<_$HitsListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
