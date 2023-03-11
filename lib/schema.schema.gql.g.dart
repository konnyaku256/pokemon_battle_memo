// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GCacheControlScope _$gCacheControlScopePUBLIC =
    const GCacheControlScope._('PUBLIC');
const GCacheControlScope _$gCacheControlScopePRIVATE =
    const GCacheControlScope._('PRIVATE');

GCacheControlScope _$gCacheControlScopeValueOf(String name) {
  switch (name) {
    case 'PUBLIC':
      return _$gCacheControlScopePUBLIC;
    case 'PRIVATE':
      return _$gCacheControlScopePRIVATE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GCacheControlScope> _$gCacheControlScopeValues =
    new BuiltSet<GCacheControlScope>(const <GCacheControlScope>[
  _$gCacheControlScopePUBLIC,
  _$gCacheControlScopePRIVATE,
]);

Serializer<GCacheControlScope> _$gCacheControlScopeSerializer =
    new _$GCacheControlScopeSerializer();

class _$GCacheControlScopeSerializer
    implements PrimitiveSerializer<GCacheControlScope> {
  @override
  final Iterable<Type> types = const <Type>[GCacheControlScope];
  @override
  final String wireName = 'GCacheControlScope';

  @override
  Object serialize(Serializers serializers, GCacheControlScope object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GCacheControlScope deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GCacheControlScope.valueOf(serialized as String);
}

class _$GJSON extends GJSON {
  @override
  final String value;

  factory _$GJSON([void Function(GJSONBuilder)? updates]) =>
      (new GJSONBuilder()..update(updates)).build();

  _$GJSON._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'GJSON', 'value');
  }

  @override
  GJSON rebuild(void Function(GJSONBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GJSONBuilder toBuilder() => new GJSONBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GJSON && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GJSON')..add('value', value))
        .toString();
  }
}

class GJSONBuilder implements Builder<GJSON, GJSONBuilder> {
  _$GJSON? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GJSONBuilder();

  GJSONBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GJSON other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GJSON;
  }

  @override
  void update(void Function(GJSONBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GJSON build() {
    final _$result = _$v ??
        new _$GJSON._(
            value:
                BuiltValueNullFieldError.checkNotNull(value, 'GJSON', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GJSONObject extends GJSONObject {
  @override
  final String value;

  factory _$GJSONObject([void Function(GJSONObjectBuilder)? updates]) =>
      (new GJSONObjectBuilder()..update(updates)).build();

  _$GJSONObject._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'GJSONObject', 'value');
  }

  @override
  GJSONObject rebuild(void Function(GJSONObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GJSONObjectBuilder toBuilder() => new GJSONObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GJSONObject && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GJSONObject')..add('value', value))
        .toString();
  }
}

class GJSONObjectBuilder implements Builder<GJSONObject, GJSONObjectBuilder> {
  _$GJSONObject? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GJSONObjectBuilder();

  GJSONObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GJSONObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GJSONObject;
  }

  @override
  void update(void Function(GJSONObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GJSONObject build() {
    final _$result = _$v ??
        new _$GJSONObject._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'GJSONObject', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpload extends GUpload {
  @override
  final String value;

  factory _$GUpload([void Function(GUploadBuilder)? updates]) =>
      (new GUploadBuilder()..update(updates)).build();

  _$GUpload._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'GUpload', 'value');
  }

  @override
  GUpload rebuild(void Function(GUploadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUploadBuilder toBuilder() => new GUploadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpload && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpload')..add('value', value))
        .toString();
  }
}

class GUploadBuilder implements Builder<GUpload, GUploadBuilder> {
  _$GUpload? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GUploadBuilder();

  GUploadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpload;
  }

  @override
  void update(void Function(GUploadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpload build() {
    final _$result = _$v ??
        new _$GUpload._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'GUpload', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
