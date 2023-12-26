// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'validate_otp_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ValidateOtpApiResponse _$ValidateOtpApiResponseFromJson(
    Map<String, dynamic> json) {
  return _ValidateOtpApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ValidateOtpApiResponse {
  @JsonKey(name: 'status')
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  ValidateOtpApiData get validateOtpApiData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateOtpApiResponseCopyWith<ValidateOtpApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateOtpApiResponseCopyWith<$Res> {
  factory $ValidateOtpApiResponseCopyWith(ValidateOtpApiResponse value,
          $Res Function(ValidateOtpApiResponse) then) =
      _$ValidateOtpApiResponseCopyWithImpl<$Res, ValidateOtpApiResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool success,
      String message,
      @JsonKey(name: 'data') ValidateOtpApiData validateOtpApiData});

  $ValidateOtpApiDataCopyWith<$Res> get validateOtpApiData;
}

/// @nodoc
class _$ValidateOtpApiResponseCopyWithImpl<$Res,
        $Val extends ValidateOtpApiResponse>
    implements $ValidateOtpApiResponseCopyWith<$Res> {
  _$ValidateOtpApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? validateOtpApiData = null,
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
      validateOtpApiData: null == validateOtpApiData
          ? _value.validateOtpApiData
          : validateOtpApiData // ignore: cast_nullable_to_non_nullable
              as ValidateOtpApiData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ValidateOtpApiDataCopyWith<$Res> get validateOtpApiData {
    return $ValidateOtpApiDataCopyWith<$Res>(_value.validateOtpApiData,
        (value) {
      return _then(_value.copyWith(validateOtpApiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ValidateOtpApiResponseCopyWith<$Res>
    implements $ValidateOtpApiResponseCopyWith<$Res> {
  factory _$$_ValidateOtpApiResponseCopyWith(_$_ValidateOtpApiResponse value,
          $Res Function(_$_ValidateOtpApiResponse) then) =
      __$$_ValidateOtpApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool success,
      String message,
      @JsonKey(name: 'data') ValidateOtpApiData validateOtpApiData});

  @override
  $ValidateOtpApiDataCopyWith<$Res> get validateOtpApiData;
}

/// @nodoc
class __$$_ValidateOtpApiResponseCopyWithImpl<$Res>
    extends _$ValidateOtpApiResponseCopyWithImpl<$Res,
        _$_ValidateOtpApiResponse>
    implements _$$_ValidateOtpApiResponseCopyWith<$Res> {
  __$$_ValidateOtpApiResponseCopyWithImpl(_$_ValidateOtpApiResponse _value,
      $Res Function(_$_ValidateOtpApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? validateOtpApiData = null,
  }) {
    return _then(_$_ValidateOtpApiResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      validateOtpApiData: null == validateOtpApiData
          ? _value.validateOtpApiData
          : validateOtpApiData // ignore: cast_nullable_to_non_nullable
              as ValidateOtpApiData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ValidateOtpApiResponse implements _ValidateOtpApiResponse {
  const _$_ValidateOtpApiResponse(
      {@JsonKey(name: 'status') required this.success,
      required this.message,
      @JsonKey(name: 'data') required this.validateOtpApiData});

  factory _$_ValidateOtpApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ValidateOtpApiResponseFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool success;
  @override
  final String message;
  @override
  @JsonKey(name: 'data')
  final ValidateOtpApiData validateOtpApiData;

  @override
  String toString() {
    return 'ValidateOtpApiResponse(success: $success, message: $message, validateOtpApiData: $validateOtpApiData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateOtpApiResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.validateOtpApiData, validateOtpApiData) ||
                other.validateOtpApiData == validateOtpApiData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, validateOtpApiData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidateOtpApiResponseCopyWith<_$_ValidateOtpApiResponse> get copyWith =>
      __$$_ValidateOtpApiResponseCopyWithImpl<_$_ValidateOtpApiResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ValidateOtpApiResponseToJson(
      this,
    );
  }
}

abstract class _ValidateOtpApiResponse implements ValidateOtpApiResponse {
  const factory _ValidateOtpApiResponse(
          {@JsonKey(name: 'status')
              required final bool success,
          required final String message,
          @JsonKey(name: 'data')
              required final ValidateOtpApiData validateOtpApiData}) =
      _$_ValidateOtpApiResponse;

  factory _ValidateOtpApiResponse.fromJson(Map<String, dynamic> json) =
      _$_ValidateOtpApiResponse.fromJson;

  @override
  @JsonKey(name: 'status')
  bool get success;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  ValidateOtpApiData get validateOtpApiData;
  @override
  @JsonKey(ignore: true)
  _$$_ValidateOtpApiResponseCopyWith<_$_ValidateOtpApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidateOtpApiData _$ValidateOtpApiDataFromJson(Map<String, dynamic> json) {
  return _ValidateOtpApiData.fromJson(json);
}

/// @nodoc
mixin _$ValidateOtpApiData {
  @JsonKey(name: 'auth_token')
  String get authToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  ValidatedUserData get validatedUserData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateOtpApiDataCopyWith<ValidateOtpApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateOtpApiDataCopyWith<$Res> {
  factory $ValidateOtpApiDataCopyWith(
          ValidateOtpApiData value, $Res Function(ValidateOtpApiData) then) =
      _$ValidateOtpApiDataCopyWithImpl<$Res, ValidateOtpApiData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'auth_token') String authToken,
      @JsonKey(name: 'user') ValidatedUserData validatedUserData});

  $ValidatedUserDataCopyWith<$Res> get validatedUserData;
}

/// @nodoc
class _$ValidateOtpApiDataCopyWithImpl<$Res, $Val extends ValidateOtpApiData>
    implements $ValidateOtpApiDataCopyWith<$Res> {
  _$ValidateOtpApiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
    Object? validatedUserData = null,
  }) {
    return _then(_value.copyWith(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
      validatedUserData: null == validatedUserData
          ? _value.validatedUserData
          : validatedUserData // ignore: cast_nullable_to_non_nullable
              as ValidatedUserData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ValidatedUserDataCopyWith<$Res> get validatedUserData {
    return $ValidatedUserDataCopyWith<$Res>(_value.validatedUserData, (value) {
      return _then(_value.copyWith(validatedUserData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ValidateOtpApiDataCopyWith<$Res>
    implements $ValidateOtpApiDataCopyWith<$Res> {
  factory _$$_ValidateOtpApiDataCopyWith(_$_ValidateOtpApiData value,
          $Res Function(_$_ValidateOtpApiData) then) =
      __$$_ValidateOtpApiDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'auth_token') String authToken,
      @JsonKey(name: 'user') ValidatedUserData validatedUserData});

  @override
  $ValidatedUserDataCopyWith<$Res> get validatedUserData;
}

/// @nodoc
class __$$_ValidateOtpApiDataCopyWithImpl<$Res>
    extends _$ValidateOtpApiDataCopyWithImpl<$Res, _$_ValidateOtpApiData>
    implements _$$_ValidateOtpApiDataCopyWith<$Res> {
  __$$_ValidateOtpApiDataCopyWithImpl(
      _$_ValidateOtpApiData _value, $Res Function(_$_ValidateOtpApiData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
    Object? validatedUserData = null,
  }) {
    return _then(_$_ValidateOtpApiData(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
      validatedUserData: null == validatedUserData
          ? _value.validatedUserData
          : validatedUserData // ignore: cast_nullable_to_non_nullable
              as ValidatedUserData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ValidateOtpApiData implements _ValidateOtpApiData {
  const _$_ValidateOtpApiData(
      {@JsonKey(name: 'auth_token') required this.authToken,
      @JsonKey(name: 'user') required this.validatedUserData});

  factory _$_ValidateOtpApiData.fromJson(Map<String, dynamic> json) =>
      _$$_ValidateOtpApiDataFromJson(json);

  @override
  @JsonKey(name: 'auth_token')
  final String authToken;
  @override
  @JsonKey(name: 'user')
  final ValidatedUserData validatedUserData;

  @override
  String toString() {
    return 'ValidateOtpApiData(authToken: $authToken, validatedUserData: $validatedUserData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateOtpApiData &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken) &&
            (identical(other.validatedUserData, validatedUserData) ||
                other.validatedUserData == validatedUserData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, authToken, validatedUserData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidateOtpApiDataCopyWith<_$_ValidateOtpApiData> get copyWith =>
      __$$_ValidateOtpApiDataCopyWithImpl<_$_ValidateOtpApiData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ValidateOtpApiDataToJson(
      this,
    );
  }
}

abstract class _ValidateOtpApiData implements ValidateOtpApiData {
  const factory _ValidateOtpApiData(
          {@JsonKey(name: 'auth_token')
              required final String authToken,
          @JsonKey(name: 'user')
              required final ValidatedUserData validatedUserData}) =
      _$_ValidateOtpApiData;

  factory _ValidateOtpApiData.fromJson(Map<String, dynamic> json) =
      _$_ValidateOtpApiData.fromJson;

  @override
  @JsonKey(name: 'auth_token')
  String get authToken;
  @override
  @JsonKey(name: 'user')
  ValidatedUserData get validatedUserData;
  @override
  @JsonKey(ignore: true)
  _$$_ValidateOtpApiDataCopyWith<_$_ValidateOtpApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidatedUserData _$ValidatedUserDataFromJson(Map<String, dynamic> json) {
  return _ValidatedUserData.fromJson(json);
}

/// @nodoc
mixin _$ValidatedUserData {
  @JsonKey(name: 'id')
  num get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get emailAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  num get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidatedUserDataCopyWith<ValidatedUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidatedUserDataCopyWith<$Res> {
  factory $ValidatedUserDataCopyWith(
          ValidatedUserData value, $Res Function(ValidatedUserData) then) =
      _$ValidatedUserDataCopyWithImpl<$Res, ValidatedUserData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') num userId,
      String name,
      @JsonKey(name: 'email') String emailAddress,
      @JsonKey(name: 'status') num statusCode});
}

/// @nodoc
class _$ValidatedUserDataCopyWithImpl<$Res, $Val extends ValidatedUserData>
    implements $ValidatedUserDataCopyWith<$Res> {
  _$ValidatedUserDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_ValidatedUserDataCopyWith<$Res>
    implements $ValidatedUserDataCopyWith<$Res> {
  factory _$$_ValidatedUserDataCopyWith(_$_ValidatedUserData value,
          $Res Function(_$_ValidatedUserData) then) =
      __$$_ValidatedUserDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') num userId,
      String name,
      @JsonKey(name: 'email') String emailAddress,
      @JsonKey(name: 'status') num statusCode});
}

/// @nodoc
class __$$_ValidatedUserDataCopyWithImpl<$Res>
    extends _$ValidatedUserDataCopyWithImpl<$Res, _$_ValidatedUserData>
    implements _$$_ValidatedUserDataCopyWith<$Res> {
  __$$_ValidatedUserDataCopyWithImpl(
      _$_ValidatedUserData _value, $Res Function(_$_ValidatedUserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? emailAddress = null,
    Object? statusCode = null,
  }) {
    return _then(_$_ValidatedUserData(
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
class _$_ValidatedUserData implements _ValidatedUserData {
  const _$_ValidatedUserData(
      {@JsonKey(name: 'id') required this.userId,
      required this.name,
      @JsonKey(name: 'email') required this.emailAddress,
      @JsonKey(name: 'status') required this.statusCode});

  factory _$_ValidatedUserData.fromJson(Map<String, dynamic> json) =>
      _$$_ValidatedUserDataFromJson(json);

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
    return 'ValidatedUserData(userId: $userId, name: $name, emailAddress: $emailAddress, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidatedUserData &&
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
  _$$_ValidatedUserDataCopyWith<_$_ValidatedUserData> get copyWith =>
      __$$_ValidatedUserDataCopyWithImpl<_$_ValidatedUserData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ValidatedUserDataToJson(
      this,
    );
  }
}

abstract class _ValidatedUserData implements ValidatedUserData {
  const factory _ValidatedUserData(
          {@JsonKey(name: 'id') required final num userId,
          required final String name,
          @JsonKey(name: 'email') required final String emailAddress,
          @JsonKey(name: 'status') required final num statusCode}) =
      _$_ValidatedUserData;

  factory _ValidatedUserData.fromJson(Map<String, dynamic> json) =
      _$_ValidatedUserData.fromJson;

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
  _$$_ValidatedUserDataCopyWith<_$_ValidatedUserData> get copyWith =>
      throw _privateConstructorUsedError;
}
