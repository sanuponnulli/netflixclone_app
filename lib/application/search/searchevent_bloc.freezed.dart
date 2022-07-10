// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'searchevent_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearcheventEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String movieQuery) searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String movieQuery)? searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String movieQuery)? searchmovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(_Searchmovie value) searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(_Searchmovie value)? searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(_Searchmovie value)? searchmovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearcheventEventCopyWith<$Res> {
  factory $SearcheventEventCopyWith(
          SearcheventEvent value, $Res Function(SearcheventEvent) then) =
      _$SearcheventEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearcheventEventCopyWithImpl<$Res>
    implements $SearcheventEventCopyWith<$Res> {
  _$SearcheventEventCopyWithImpl(this._value, this._then);

  final SearcheventEvent _value;
  // ignore: unused_field
  final $Res Function(SearcheventEvent) _then;
}

/// @nodoc
abstract class _$$InitializeCopyWith<$Res> {
  factory _$$InitializeCopyWith(
          _$Initialize value, $Res Function(_$Initialize) then) =
      __$$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCopyWithImpl<$Res>
    extends _$SearcheventEventCopyWithImpl<$Res>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, (v) => _then(v as _$Initialize));

  @override
  _$Initialize get _value => super._value as _$Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'SearcheventEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String movieQuery) searchmovie,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String movieQuery)? searchmovie,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String movieQuery)? searchmovie,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(_Searchmovie value) searchmovie,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(_Searchmovie value)? searchmovie,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(_Searchmovie value)? searchmovie,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements SearcheventEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$_SearchmovieCopyWith<$Res> {
  factory _$$_SearchmovieCopyWith(
          _$_Searchmovie value, $Res Function(_$_Searchmovie) then) =
      __$$_SearchmovieCopyWithImpl<$Res>;
  $Res call({String movieQuery});
}

/// @nodoc
class __$$_SearchmovieCopyWithImpl<$Res>
    extends _$SearcheventEventCopyWithImpl<$Res>
    implements _$$_SearchmovieCopyWith<$Res> {
  __$$_SearchmovieCopyWithImpl(
      _$_Searchmovie _value, $Res Function(_$_Searchmovie) _then)
      : super(_value, (v) => _then(v as _$_Searchmovie));

  @override
  _$_Searchmovie get _value => super._value as _$_Searchmovie;

  @override
  $Res call({
    Object? movieQuery = freezed,
  }) {
    return _then(_$_Searchmovie(
      movieQuery: movieQuery == freezed
          ? _value.movieQuery
          : movieQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Searchmovie implements _Searchmovie {
  const _$_Searchmovie({required this.movieQuery});

  @override
  final String movieQuery;

  @override
  String toString() {
    return 'SearcheventEvent.searchmovie(movieQuery: $movieQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Searchmovie &&
            const DeepCollectionEquality()
                .equals(other.movieQuery, movieQuery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieQuery));

  @JsonKey(ignore: true)
  @override
  _$$_SearchmovieCopyWith<_$_Searchmovie> get copyWith =>
      __$$_SearchmovieCopyWithImpl<_$_Searchmovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String movieQuery) searchmovie,
  }) {
    return searchmovie(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String movieQuery)? searchmovie,
  }) {
    return searchmovie?.call(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String movieQuery)? searchmovie,
    required TResult orElse(),
  }) {
    if (searchmovie != null) {
      return searchmovie(movieQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(_Searchmovie value) searchmovie,
  }) {
    return searchmovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(_Searchmovie value)? searchmovie,
  }) {
    return searchmovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(_Searchmovie value)? searchmovie,
    required TResult orElse(),
  }) {
    if (searchmovie != null) {
      return searchmovie(this);
    }
    return orElse();
  }
}

abstract class _Searchmovie implements SearcheventEvent {
  const factory _Searchmovie({required final String movieQuery}) =
      _$_Searchmovie;

  String get movieQuery => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SearchmovieCopyWith<_$_Searchmovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearcheventState {
  List<SearchResulstData> get searchResultList =>
      throw _privateConstructorUsedError;
  List<Downloads> get IdleList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearcheventStateCopyWith<SearcheventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearcheventStateCopyWith<$Res> {
  factory $SearcheventStateCopyWith(
          SearcheventState value, $Res Function(SearcheventState) then) =
      _$SearcheventStateCopyWithImpl<$Res>;
  $Res call(
      {List<SearchResulstData> searchResultList,
      List<Downloads> IdleList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$SearcheventStateCopyWithImpl<$Res>
    implements $SearcheventStateCopyWith<$Res> {
  _$SearcheventStateCopyWithImpl(this._value, this._then);

  final SearcheventState _value;
  // ignore: unused_field
  final $Res Function(SearcheventState) _then;

  @override
  $Res call({
    Object? searchResultList = freezed,
    Object? IdleList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      searchResultList: searchResultList == freezed
          ? _value.searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<SearchResulstData>,
      IdleList: IdleList == freezed
          ? _value.IdleList
          : IdleList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SearcheventStateCopyWith<$Res>
    implements $SearcheventStateCopyWith<$Res> {
  factory _$$_SearcheventStateCopyWith(
          _$_SearcheventState value, $Res Function(_$_SearcheventState) then) =
      __$$_SearcheventStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SearchResulstData> searchResultList,
      List<Downloads> IdleList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_SearcheventStateCopyWithImpl<$Res>
    extends _$SearcheventStateCopyWithImpl<$Res>
    implements _$$_SearcheventStateCopyWith<$Res> {
  __$$_SearcheventStateCopyWithImpl(
      _$_SearcheventState _value, $Res Function(_$_SearcheventState) _then)
      : super(_value, (v) => _then(v as _$_SearcheventState));

  @override
  _$_SearcheventState get _value => super._value as _$_SearcheventState;

  @override
  $Res call({
    Object? searchResultList = freezed,
    Object? IdleList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_SearcheventState(
      searchResultList: searchResultList == freezed
          ? _value._searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<SearchResulstData>,
      IdleList: IdleList == freezed
          ? _value._IdleList
          : IdleList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearcheventState implements _SearcheventState {
  const _$_SearcheventState(
      {required final List<SearchResulstData> searchResultList,
      required final List<Downloads> IdleList,
      required this.isLoading,
      required this.isError})
      : _searchResultList = searchResultList,
        _IdleList = IdleList;

  final List<SearchResulstData> _searchResultList;
  @override
  List<SearchResulstData> get searchResultList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultList);
  }

  final List<Downloads> _IdleList;
  @override
  List<Downloads> get IdleList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_IdleList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'SearcheventState(searchResultList: $searchResultList, IdleList: $IdleList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearcheventState &&
            const DeepCollectionEquality()
                .equals(other._searchResultList, _searchResultList) &&
            const DeepCollectionEquality().equals(other._IdleList, _IdleList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchResultList),
      const DeepCollectionEquality().hash(_IdleList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_SearcheventStateCopyWith<_$_SearcheventState> get copyWith =>
      __$$_SearcheventStateCopyWithImpl<_$_SearcheventState>(this, _$identity);
}

abstract class _SearcheventState implements SearcheventState {
  const factory _SearcheventState(
      {required final List<SearchResulstData> searchResultList,
      required final List<Downloads> IdleList,
      required final bool isLoading,
      required final bool isError}) = _$_SearcheventState;

  @override
  List<SearchResulstData> get searchResultList =>
      throw _privateConstructorUsedError;
  @override
  List<Downloads> get IdleList => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SearcheventStateCopyWith<_$_SearcheventState> get copyWith =>
      throw _privateConstructorUsedError;
}
