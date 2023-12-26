// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInApiResponse _$SignInApiResponseFromJson(Map<String, dynamic> json) {
  return _SignInApiResponse.fromJson(json);
}

/// @nodoc
mixin _$SignInApiResponse {
  @JsonKey(name: 'status')
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  SignInApiData get signInApiData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInApiResponseCopyWith<SignInApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInApiResponseCopyWith<$Res> {
  factory $SignInApiResponseCopyWith(
          SignInApiResponse value, $Res Function(SignInApiResponse) then) =
      _$SignInApiResponseCopyWithImpl<$Res, SignInApiResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool success,
      String message,
      @JsonKey(name: 'data') SignInApiData signInApiData});

  $SignInApiDataCopyWith<$Res> get signInApiData;
}

/// @nodoc
class _$SignInApiResponseCopyWithImpl<$Res, $Val extends SignInApiResponse>
    implements $SignInApiResponseCopyWith<$Res> {
  _$SignInApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? signInApiData = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      signInApiData: null == signInApiData
          ? _value.signInApiData
          : signInApiData // ignore: cast_nullable_to_non_nullable
              as SignInApiData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInApiDataCopyWith<$Res> get signInApiData {
    return $SignInApiDataCopyWith<$Res>(_value.signInApiData, (value) {
      return _then(_value.copyWith(signInApiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignInApiResponseCopyWith<$Res>
    implements $SignInApiResponseCopyWith<$Res> {
  factory _$$_SignInApiResponseCopyWith(_$_SignInApiResponse value,
          $Res Function(_$_SignInApiResponse) then) =
      __$$_SignInApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool success,
      String message,
      @JsonKey(name: 'data') SignInApiData signInApiData});

  @override
  $SignInApiDataCopyWith<$Res> get signInApiData;
}

/// @nodoc
class __$$_SignInApiResponseCopyWithImpl<$Res>
    extends _$SignInApiResponseCopyWithImpl<$Res, _$_SignInApiResponse>
    implements _$$_SignInApiResponseCopyWith<$Res> {
  __$$_SignInApiResponseCopyWithImpl(
      _$_SignInApiResponse _value, $Res Function(_$_SignInApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? signInApiData = null,
  }) {
    return _then(_$_SignInApiResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      signInApiData: null == signInApiData
          ? _value.signInApiData
          : signInApiData // ignore: cast_nullable_to_non_nullable
              as SignInApiData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInApiResponse implements _SignInApiResponse {
  const _$_SignInApiResponse(
      {@JsonKey(name: 'status') required this.success,
      required this.message,
      @JsonKey(name: 'data') required this.signInApiData});

  factory _$_SignInApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SignInApiResponseFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool success;
  @override
  final String message;
  @override
  @JsonKey(name: 'data')
  final SignInApiData signInApiData;

  @override
  String toString() {
    return 'SignInApiResponse(success: $success, message: $message, signInApiData: $signInApiData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInApiResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.signInApiData, signInApiData) ||
                other.signInApiData == signInApiData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, signInApiData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInApiResponseCopyWith<_$_SignInApiResponse> get copyWith =>
      __$$_SignInApiResponseCopyWithImpl<_$_SignInApiResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignInApiResponseToJson(
      this,
    );
  }
}

abstract class _SignInApiResponse implements SignInApiResponse {
  const factory _SignInApiResponse(
          {@JsonKey(name: 'status') required final bool success,
          required final String message,
          @JsonKey(name: 'data') required final SignInApiData signInApiData}) =
      _$_SignInApiResponse;

  factory _SignInApiResponse.fromJson(Map<String, dynamic> json) =
      _$_SignInApiResponse.fromJson;

  @override
  @JsonKey(name: 'status')
  bool get success;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  SignInApiData get signInApiData;
  @override
  @JsonKey(ignore: true)
  _$$_SignInApiResponseCopyWith<_$_SignInApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInApiData _$SignInApiDataFromJson(Map<String, dynamic> json) {
  return _SignInApiData.fromJson(json);
}

/// @nodoc
mixin _$SignInApiData {
  @JsonKey(name: 'auth_token')
  String get authToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  SignInUserData get signInUserData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInApiDataCopyWith<SignInApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInApiDataCopyWith<$Res> {
  factory $SignInApiDataCopyWith(
          SignInApiData value, $Res Function(SignInApiData) then) =
      _$SignInApiDataCopyWithImpl<$Res, SignInApiData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'auth_token') String authToken,
      @JsonKey(name: 'user') SignInUserData signInUserData});

  $SignInUserDataCopyWith<$Res> get signInUserData;
}

/// @nodoc
class _$SignInApiDataCopyWithImpl<$Res, $Val extends SignInApiData>
    implements $SignInApiDataCopyWith<$Res> {
  _$SignInApiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
    Object? signInUserData = null,
  }) {
    return _then(_value.copyWith(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
      signInUserData: null == signInUserData
          ? _value.signInUserData
          : signInUserData // ignore: cast_nullable_to_non_nullable
              as SignInUserData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInUserDataCopyWith<$Res> get signInUserData {
    return $SignInUserDataCopyWith<$Res>(_value.signInUserData, (value) {
      return _then(_value.copyWith(signInUserData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignInApiDataCopyWith<$Res>
    implements $SignInApiDataCopyWith<$Res> {
  factory _$$_SignInApiDataCopyWith(
          _$_SignInApiData value, $Res Function(_$_SignInApiData) then) =
      __$$_SignInApiDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'auth_token') String authToken,
      @JsonKey(name: 'user') SignInUserData signInUserData});

  @override
  $SignInUserDataCopyWith<$Res> get signInUserData;
}

/// @nodoc
class __$$_SignInApiDataCopyWithImpl<$Res>
    extends _$SignInApiDataCopyWithImpl<$Res, _$_SignInApiData>
    implements _$$_SignInApiDataCopyWith<$Res> {
  __$$_SignInApiDataCopyWithImpl(
      _$_SignInApiData _value, $Res Function(_$_SignInApiData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
    Object? signInUserData = null,
  }) {
    return _then(_$_SignInApiData(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
      signInUserData: null == signInUserData
          ? _value.signInUserData
          : signInUserData // ignore: cast_nullable_to_non_nullable
              as SignInUserData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInApiData implements _SignInApiData {
  const _$_SignInApiData(
      {@JsonKey(name: 'auth_token') required this.authToken,
      @JsonKey(name: 'user') required this.signInUserData});

  factory _$_SignInApiData.fromJson(Map<String, dynamic> json) =>
      _$$_SignInApiDataFromJson(json);

  @override
  @JsonKey(name: 'auth_token')
  final String authToken;
  @override
  @JsonKey(name: 'user')
  final SignInUserData signInUserData;

  @override
  String toString() {
    return 'SignInApiData(authToken: $authToken, signInUserData: $signInUserData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInApiData &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken) &&
            (identical(other.signInUserData, signInUserData) ||
                other.signInUserData == signInUserData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, authToken, signInUserData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInApiDataCopyWith<_$_SignInApiData> get copyWith =>
      __$$_SignInApiDataCopyWithImpl<_$_SignInApiData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignInApiDataToJson(
      this,
    );
  }
}

abstract class _SignInApiData implements SignInApiData {
  const factory _SignInApiData(
      {@JsonKey(name: 'auth_token')
          required final String authToken,
      @JsonKey(name: 'user')
          required final SignInUserData signInUserData}) = _$_SignInApiData;

  factory _SignInApiData.fromJson(Map<String, dynamic> json) =
      _$_SignInApiData.fromJson;

  @override
  @JsonKey(name: 'auth_token')
  String get authToken;
  @override
  @JsonKey(name: 'user')
  SignInUserData get signInUserData;
  @override
  @JsonKey(ignore: true)
  _$$_SignInApiDataCopyWith<_$_SignInApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInUserData _$SignInUserDataFromJson(Map<String, dynamic> json) {
  return _SignInUserData.fromJson(json);
}

/// @nodoc
mixin _$SignInUserData {
  @JsonKey(name: 'id')
  num get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get emailAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  num get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInUserDataCopyWith<SignInUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInUserDataCopyWith<$Res> {
  factory $SignInUserDataCopyWith(
          SignInUserData value, $Res Function(SignInUserData) then) =
      _$SignInUserDataCopyWithImpl<$Res, SignInUserData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') num userId,
      String name,
      @JsonKey(name: 'email') String emailAddress,
      @JsonKey(name: 'status') num statusCode});
}

/// @nodoc
class _$SignInUserDataCopyWithImpl<$Res, $Val extends SignInUserData>
    implements $SignInUserDataCopyWith<$Res> {
  _$SignInUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? emailAddress = null,
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInUserDataCopyWith<$Res>
    implements $SignInUserDataCopyWith<$Res> {
  factory _$$_SignInUserDataCopyWith(
          _$_SignInUserData value, $Res Function(_$_SignInUserData) then) =
      __$$_SignInUserDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') num userId,
      String name,
      @JsonKey(name: 'email') String emailAddress,
      @JsonKey(name: 'status') num statusCode});
}

/// @nodoc
class __$$_SignInUserDataCopyWithImpl<$Res>
    extends _$SignInUserDataCopyWithImpl<$Res, _$_SignInUserData>
    implements _$$_SignInUserDataCopyWith<$Res> {
  __$$_SignInUserDataCopyWithImpl(
      _$_SignInUserData _value, $Res Function(_$_SignInUserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? emailAddress = null,
    Object? statusCode = null,
  }) {
    return _then(_$_SignInUserData(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInUserData implements _SignInUserData {
  const _$_SignInUserData(
      {@JsonKey(name: 'id') required this.userId,
      required this.name,
      @JsonKey(name: 'email') required this.emailAddress,
      @JsonKey(name: 'status') required this.statusCode});

  factory _$_SignInUserData.fromJson(Map<String, dynamic> json) =>
      _$$_SignInUserDataFromJson(json);

  @override
  @JsonKey(name: 'id')
  final num userId;
  @override
  final String name;
  @override
  @JsonKey(name: 'email')
  final String emailAddress;
  @override
  @JsonKey(name: 'status')
  final num statusCode;

  @override
  String toString() {
    return 'SignInUserData(userId: $userId, name: $name, emailAddress: $emailAddress, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInUserData &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, name, emailAddress, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInUserDataCopyWith<_$_SignInUserData> get copyWith =>
      __$$_SignInUserDataCopyWithImpl<_$_SignInUserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignInUserDataToJson(
      this,
    );
  }
}

abstract class _SignInUserData implements SignInUserData {
  const factory _SignInUserData(
          {@JsonKey(name: 'id') required final num userId,
          required final String name,
          @JsonKey(name: 'email') required final String emailAddress,
          @JsonKey(name: 'status') required final num statusCode}) =
      _$_SignInUserData;

  factory _SignInUserData.fromJson(Map<String, dynamic> json) =
      _$_SignInUserData.fromJson;

  @override
  @JsonKey(name: 'id')
  num get userId;
  @override
  String get name;
  @override
  @JsonKey(name: 'email')
  String get emailAddress;
  @override
  @JsonKey(name: 'status')
  num get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$_SignInUserDataCopyWith<_$_SignInUserData> get copyWith =>
      throw _privateConstructorUsedError;
}
