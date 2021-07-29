// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'article_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleListStateTearOff {
  const _$ArticleListStateTearOff();

  _ArticleListState call({List<ArticleListItemModel> data = const []}) {
    return _ArticleListState(
      data: data,
    );
  }
}

/// @nodoc
const $ArticleListState = _$ArticleListStateTearOff();

/// @nodoc
mixin _$ArticleListState {
  List<ArticleListItemModel> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleListStateCopyWith<ArticleListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleListStateCopyWith<$Res> {
  factory $ArticleListStateCopyWith(
          ArticleListState value, $Res Function(ArticleListState) then) =
      _$ArticleListStateCopyWithImpl<$Res>;
  $Res call({List<ArticleListItemModel> data});
}

/// @nodoc
class _$ArticleListStateCopyWithImpl<$Res>
    implements $ArticleListStateCopyWith<$Res> {
  _$ArticleListStateCopyWithImpl(this._value, this._then);

  final ArticleListState _value;
  // ignore: unused_field
  final $Res Function(ArticleListState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ArticleListItemModel>,
    ));
  }
}

/// @nodoc
abstract class _$ArticleListStateCopyWith<$Res>
    implements $ArticleListStateCopyWith<$Res> {
  factory _$ArticleListStateCopyWith(
          _ArticleListState value, $Res Function(_ArticleListState) then) =
      __$ArticleListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ArticleListItemModel> data});
}

/// @nodoc
class __$ArticleListStateCopyWithImpl<$Res>
    extends _$ArticleListStateCopyWithImpl<$Res>
    implements _$ArticleListStateCopyWith<$Res> {
  __$ArticleListStateCopyWithImpl(
      _ArticleListState _value, $Res Function(_ArticleListState) _then)
      : super(_value, (v) => _then(v as _ArticleListState));

  @override
  _ArticleListState get _value => super._value as _ArticleListState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ArticleListState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ArticleListItemModel>,
    ));
  }
}

/// @nodoc

class _$_ArticleListState implements _ArticleListState {
  const _$_ArticleListState({this.data = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<ArticleListItemModel> data;

  @override
  String toString() {
    return 'ArticleListState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArticleListState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ArticleListStateCopyWith<_ArticleListState> get copyWith =>
      __$ArticleListStateCopyWithImpl<_ArticleListState>(this, _$identity);
}

abstract class _ArticleListState implements ArticleListState {
  const factory _ArticleListState({List<ArticleListItemModel> data}) =
      _$_ArticleListState;

  @override
  List<ArticleListItemModel> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArticleListStateCopyWith<_ArticleListState> get copyWith =>
      throw _privateConstructorUsedError;
}
