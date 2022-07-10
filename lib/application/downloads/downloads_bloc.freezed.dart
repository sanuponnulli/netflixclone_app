// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImage value) getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  final DownloadsEvent _value;
  // ignore: unused_field
  final $Res Function(DownloadsEvent) _then;
}

/// @nodoc
abstract class _$$_GetDownloadsImageCopyWith<$Res> {
  factory _$$_GetDownloadsImageCopyWith(_$_GetDownloadsImage value,
          $Res Function(_$_GetDownloadsImage) then) =
      __$$_GetDownloadsImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDownloadsImageCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res>
    implements _$$_GetDownloadsImageCopyWith<$Res> {
  __$$_GetDownloadsImageCopyWithImpl(
      _$_GetDownloadsImage _value, $Res Function(_$_GetDownloadsImage) _then)
      : super(_value, (v) => _then(v as _$_GetDownloadsImage));

  @override
  _$_GetDownloadsImage get _value => super._value as _$_GetDownloadsImage;
}

/// @nodoc

class _$_GetDownloadsImage implements _GetDownloadsImage {
  const _$_GetDownloadsImage();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadsImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetDownloadsImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImage,
  }) {
    return getDownloadsImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
  }) {
    return getDownloadsImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
    required TResult orElse(),
  }) {
    if (getDownloadsImage != null) {
      return getDownloadsImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImage value) getDownloadsImage,
  }) {
    return getDownloadsImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
  }) {
    return getDownloadsImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
    required TResult orElse(),
  }) {
    if (getDownloadsImage != null) {
      return getDownloadsImage(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadsImage implements DownloadsEvent {
  const factory _GetDownloadsImage() = _$_GetDownloadsImage;
}

/// @nodoc
mixin _$DownlaodsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Downloads> get downloads => throw _privateConstructorUsedError;
  Option<Either<Mainfailure, List<Downloads>>>
      get downloadsFailureorSuccesOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownlaodsStateCopyWith<DownlaodsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownlaodsStateCopyWith<$Res> {
  factory $DownlaodsStateCopyWith(
          DownlaodsState value, $Res Function(DownlaodsState) then) =
      _$DownlaodsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Downloads> downloads,
      Option<Either<Mainfailure, List<Downloads>>>
          downloadsFailureorSuccesOption});
}

/// @nodoc
class _$DownlaodsStateCopyWithImpl<$Res>
    implements $DownlaodsStateCopyWith<$Res> {
  _$DownlaodsStateCopyWithImpl(this._value, this._then);

  final DownlaodsState _value;
  // ignore: unused_field
  final $Res Function(DownlaodsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downloads = freezed,
    Object? downloadsFailureorSuccesOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: downloads == freezed
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downloadsFailureorSuccesOption: downloadsFailureorSuccesOption == freezed
          ? _value.downloadsFailureorSuccesOption
          : downloadsFailureorSuccesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Mainfailure, List<Downloads>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_DownlaodsStateCopyWith<$Res>
    implements $DownlaodsStateCopyWith<$Res> {
  factory _$$_DownlaodsStateCopyWith(
          _$_DownlaodsState value, $Res Function(_$_DownlaodsState) then) =
      __$$_DownlaodsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Downloads> downloads,
      Option<Either<Mainfailure, List<Downloads>>>
          downloadsFailureorSuccesOption});
}

/// @nodoc
class __$$_DownlaodsStateCopyWithImpl<$Res>
    extends _$DownlaodsStateCopyWithImpl<$Res>
    implements _$$_DownlaodsStateCopyWith<$Res> {
  __$$_DownlaodsStateCopyWithImpl(
      _$_DownlaodsState _value, $Res Function(_$_DownlaodsState) _then)
      : super(_value, (v) => _then(v as _$_DownlaodsState));

  @override
  _$_DownlaodsState get _value => super._value as _$_DownlaodsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downloads = freezed,
    Object? downloadsFailureorSuccesOption = freezed,
  }) {
    return _then(_$_DownlaodsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: downloads == freezed
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downloadsFailureorSuccesOption: downloadsFailureorSuccesOption == freezed
          ? _value.downloadsFailureorSuccesOption
          : downloadsFailureorSuccesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Mainfailure, List<Downloads>>>,
    ));
  }
}

/// @nodoc

class _$_DownlaodsState implements _DownlaodsState {
  const _$_DownlaodsState(
      {required this.isLoading,
      required final List<Downloads> downloads,
      required this.downloadsFailureorSuccesOption})
      : _downloads = downloads;

  @override
  final bool isLoading;
  final List<Downloads> _downloads;
  @override
  List<Downloads> get downloads {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloads);
  }

  @override
  final Option<Either<Mainfailure, List<Downloads>>>
      downloadsFailureorSuccesOption;

  @override
  String toString() {
    return 'DownlaodsState(isLoading: $isLoading, downloads: $downloads, downloadsFailureorSuccesOption: $downloadsFailureorSuccesOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownlaodsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads) &&
            const DeepCollectionEquality().equals(
                other.downloadsFailureorSuccesOption,
                downloadsFailureorSuccesOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_downloads),
      const DeepCollectionEquality().hash(downloadsFailureorSuccesOption));

  @JsonKey(ignore: true)
  @override
  _$$_DownlaodsStateCopyWith<_$_DownlaodsState> get copyWith =>
      __$$_DownlaodsStateCopyWithImpl<_$_DownlaodsState>(this, _$identity);
}

abstract class _DownlaodsState implements DownlaodsState {
  const factory _DownlaodsState(
      {required final bool isLoading,
      required final List<Downloads> downloads,
      required final Option<Either<Mainfailure, List<Downloads>>>
          downloadsFailureorSuccesOption}) = _$_DownlaodsState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<Downloads> get downloads => throw _privateConstructorUsedError;
  @override
  Option<Either<Mainfailure, List<Downloads>>>
      get downloadsFailureorSuccesOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DownlaodsStateCopyWith<_$_DownlaodsState> get copyWith =>
      throw _privateConstructorUsedError;
}
