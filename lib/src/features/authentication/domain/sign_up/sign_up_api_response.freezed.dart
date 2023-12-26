// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpApiResponse _$SignUpApiResponseFromJson(Map<String, dynamic> json) {
  return _SignUpApiResponse.fromJson(json);
}

/// @nodoc
mixin _$SignUpApiResponse {
  @JsonKey(name: 'status')
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  SignUpApiData get signUpApiData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpApiResponseCopyWith<SignUpApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpApiResponseCopyWith<$Res> {
  factory $SignUpApiResponseCopyWith(
          SignUpApiResponse value, $Res Function(SignUpApiResponse) then) =
      _$SignUpApiResponseCopyWithImpl<$Res, SignUpApiResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool success,
      String message,
      @JsonKey(name: 'data') SignUpApiData signUpApiData});

  $SignUpApiDataCopyWith<$Res> get signUpApiData;
}

/// @nodoc
class _$SignUpApiResponseCopyWithImpl<$Res, $Val extends SignUpApiResponse>
    implements $SignUpApiResponseCopyWith<$Res> {
  _$SignUpApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? signUpApiData = null,
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
      signUpApiData: null == signUpApiData
          ? _value.signUpApiData
          : signUpApiData // ignore: cast_nullable_to_non_nullable
              as SignUpApiData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignUpApiDataCopyWith<$Res> get signUpApiData {
    return $SignUpApiDataCopyWith<$Res>(_value.signUpApiData, (value) {
      return _then(_value.copyWith(signUpApiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignUpApiResponseCopyWith<$Res>
    implements $SignUpApiResponseCopyWith<$Res> {
  factory _$$_SignUpApiResponseCopyWith(_$_SignUpApiResponse value,
          $Res Function(_$_SignUpApiResponse) then) =
      __$$_SignUpApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool success,
      String message,
      @JsonKey(name: 'data') SignUpApiData signUpApiData});

  @override
  $SignUpApiDataCopyWith<$Res> get signUpApiData;
}

/// @nodoc
class __$$_SignUpApiResponseCopyWithImpl<$Res>
    extends _$SignUpApiResponseCopyWithImpl<$Res, _$_SignUpApiResponse>
    implements _$$_SignUpApiResponseCopyWith<$Res> {
  __$$_SignUpApiResponseCopyWithImpl(
      _$_SignUpApiResponse _value, $Res Function(_$_SignUpApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? signUpApiData = null,
  }) {
    return _then(_$_SignUpApiResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      signUpApiData: null == signUpApiData
          ? _value.signUpApiData
          : signUpApiData // ignore: cast_nullable_to_non_nullable
              as SignUpApiData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpApiResponse implements _SignUpApiResponse {
  const _$_SignUpApiResponse(
      {@JsonKey(name: 'status') required this.success,
      required this.message,
      @JsonKey(name: 'data') required this.signUpApiData});

  factory _$_SignUpApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpApiResponseFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool success;
  @override
  final String message;
  @override
  @JsonKey(name: 'data')
  final SignUpApiData signUpApiData;

  @override
  String toString() {
    return 'SignUpApiResponse(success: $success, message: $message, signUpApiData: $signUpApiData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpApiResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.signUpApiData, signUpApiData) ||
                other.signUpApiData == signUpApiData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, signUpApiData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpApiResponseCopyWith<_$_SignUpApiResponse> get copyWith =>
      __$$_SignUpApiResponseCopyWithImpl<_$_SignUpApiResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpApiResponseToJson(
      this,
    );
  }
}

abstract class _SignUpApiResponse implements SignUpApiResponse {
  const factory _SignUpApiResponse(
          {@JsonKey(name: 'status') required final bool success,
          required final String message,
          @JsonKey(name: 'data') required final SignUpApiData signUpApiData}) =
      _$_SignUpApiResponse;

  factory _SignUpApiResponse.fromJson(Map<String, dynamic> json) =
      _$_SignUpApiResponse.fromJson;

  @override
  @JsonKey(name: 'status')
  bool get success;
  @override
  String get message;
  @override
  @JsonKey(name: 'data')
  SignUpApiData get signUpApiData;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpApiResponseCopyWith<_$_SignUpApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SignUpApiData _$SignUpApiDataFromJson(Map<String, dynamic> json) {
  return _SignUpApiData.fromJson(json);
}

/// @nodoc
mixin _$SignUpApiData {
  @JsonKey(name: 'name')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get userEmail => throw _privateConstructorUsedError;
  num get otp => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  num get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpApiDataCopyWith<SignUpApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpApiDataCopyWith<$Res> {
  factory $SignUpApiDataCopyWith(
          SignUpApiData value, $Res Function(SignUpApiData) then) =
      _$SignUpApiDataCopyWithImpl<$Res, SignUpApiData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String userName,
      @JsonKey(name: 'email') String userEmail,
      num otp,
      bool status,
      @JsonKey(name: 'id') num userId});
}

/// @nodoc
class _$SignUpApiDataCopyWithImpl<$Res, $Val extends SignUpApiData>
    implements $SignUpApiDataCopyWith<$Res> {
  _$SignUpApiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userEmail = null,
    Object? otp = null,
    Object? status = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as num,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpApiDataCopyWith<$Res>
    implements $SignUpApiDataCopyWith<$Res> {
  factory _$$_SignUpApiDataCopyWith(
          _$_SignUpApiData value, $Res Function(_$_SignUpApiData) then) =
      __$$_SignUpApiDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String userName,
      @JsonKey(name: 'email') String userEmail,
      num otp,
      bool status,
      @JsonKey(name: 'id') num userId});
}

/// @nodoc
class __$$_SignUpApiDataCopyWithImpl<$Res>
    extends _$SignUpApiDataCopyWithImpl<$Res, _$_SignUpApiData>
    implements _$$_SignUpApiDataCopyWith<$Res> {
  __$$_SignUpApiDataCopyWithImpl(
      _$_SignUpApiData _value, $Res Function(_$_SignUpApiData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userEmail = null,
    Object? otp = null,
    Object? status = null,
    Object? userId = null,
  }) {
    return _then(_$_SignUpApiData(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as num,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpApiData implements _SignUpApiData {
  const _$_SignUpApiData(
      {@JsonKey(name: 'name') required this.userName,
      @JsonKey(name: 'email') required this.userEmail,
      required this.otp,
      required this.status,
      @JsonKey(name: 'id') required this.userId});

  factory _$_SignUpApiData.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpApiDataFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String userName;
  @override
  @JsonKey(name: 'email')
  final String userEmail;
  @override
  final num otp;
  @override
  final bool status;
  @override
  @JsonKey(name: 'id')
  final num userId;

  @override
  String toString() {
    return 'SignUpApiData(userName: $userName, userEmail: $userEmail, otp: $otp, status: $status, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpApiData &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, userEmail, otp, status, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpApiDataCopyWith<_$_SignUpApiData> get copyWith =>
      __$$_SignUpApiDataCopyWithImpl<_$_SignUpApiData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpApiDataToJson(
      this,
    );
  }
}

abstract class _SignUpApiData implements SignUpApiData {
  const factory _SignUpApiData(
      {@JsonKey(name: 'name') required final String userName,
      @JsonKey(name: 'email') required final String userEmail,
      required final num otp,
      required final bool status,
      @JsonKey(name: 'id') required final num userId}) = _$_SignUpApiData;

  factory _SignUpApiData.fromJson(Map<String, dynamic> json) =
      _$_SignUpApiData.fromJson;

  @override
  @JsonKey(name: 'name')
  String get userName;
  @override
  @JsonKey(name: 'email')
  String get userEmail;
  @override
  num get otp;
  @override
  bool get status;
  @override
  @JsonKey(name: 'id')
  num get userId;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpApiDataCopyWith<_$_SignUpApiData> get copyWith =>
      throw _privateConstructorUsedError;
}
