// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDataInHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDataInHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDataInHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDataInHome value) loadDataInHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDataInHome value)? loadDataInHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDataInHome value)? loadDataInHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadDataInHomeCopyWith<$Res> {
  factory _$$LoadDataInHomeCopyWith(
          _$LoadDataInHome value, $Res Function(_$LoadDataInHome) then) =
      __$$LoadDataInHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDataInHomeCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadDataInHome>
    implements _$$LoadDataInHomeCopyWith<$Res> {
  __$$LoadDataInHomeCopyWithImpl(
      _$LoadDataInHome _value, $Res Function(_$LoadDataInHome) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadDataInHome implements LoadDataInHome {
  const _$LoadDataInHome();

  @override
  String toString() {
    return 'HomeEvent.loadDataInHome()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDataInHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDataInHome,
  }) {
    return loadDataInHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDataInHome,
  }) {
    return loadDataInHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDataInHome,
    required TResult orElse(),
  }) {
    if (loadDataInHome != null) {
      return loadDataInHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDataInHome value) loadDataInHome,
  }) {
    return loadDataInHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDataInHome value)? loadDataInHome,
  }) {
    return loadDataInHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDataInHome value)? loadDataInHome,
    required TResult orElse(),
  }) {
    if (loadDataInHome != null) {
      return loadDataInHome(this);
    }
    return orElse();
  }
}

abstract class LoadDataInHome implements HomeEvent {
  const factory LoadDataInHome() = _$LoadDataInHome;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<HomeModel> get homeData => throw _privateConstructorUsedError;
  List<HomeModel> get cartData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<HomeModel> homeData,
      List<HomeModel> cartData});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? homeData = null,
    Object? cartData = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      homeData: null == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
      cartData: null == cartData
          ? _value.cartData
          : cartData // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<HomeModel> homeData,
      List<HomeModel> cartData});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? homeData = null,
    Object? cartData = null,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      homeData: null == homeData
          ? _value._homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
      cartData: null == cartData
          ? _value._cartData
          : cartData // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.hasError,
      required final List<HomeModel> homeData,
      required final List<HomeModel> cartData})
      : _homeData = homeData,
        _cartData = cartData;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  final List<HomeModel> _homeData;
  @override
  List<HomeModel> get homeData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeData);
  }

  final List<HomeModel> _cartData;
  @override
  List<HomeModel> get cartData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartData);
  }

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, hasError: $hasError, homeData: $homeData, cartData: $cartData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality().equals(other._homeData, _homeData) &&
            const DeepCollectionEquality().equals(other._cartData, _cartData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      const DeepCollectionEquality().hash(_homeData),
      const DeepCollectionEquality().hash(_cartData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final List<HomeModel> homeData,
      required final List<HomeModel> cartData}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<HomeModel> get homeData;
  @override
  List<HomeModel> get cartData;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
