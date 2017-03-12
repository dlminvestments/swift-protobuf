/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: unittest_swift_extension.proto
 *
 */

//  Protos/unittest_swift_extension.proto - test proto
// 
//  This source file is part of the Swift.org open source project
// 
//  Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
//  Licensed under Apache License v2.0 with Runtime Library Exception
// 
//  See http://swift.org/LICENSE.txt for license information
//  See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
// 
//  -----------------------------------------------------------------------------
// /
// / Test handling of extensions to deeply nested messages.
// /
//  -----------------------------------------------------------------------------

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

struct ProtobufUnittest_Extend_Foo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Foo"
  static let protoPackageName: String = "protobuf_unittest.extend"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct Bar: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = "Bar"
    static let protoPackageName: String = "protobuf_unittest.extend"
    static let _protobuf_nameMap = SwiftProtobuf._NameMap()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    struct Baz: SwiftProtobuf.Message, SwiftProtobuf.ExtensibleMessage, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
      static let protoMessageName: String = "Baz"
      static let protoPackageName: String = "protobuf_unittest.extend"
      static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .same(proto: "a"),
      ]

      private var _a: Int32? = nil
      var a: Int32 {
        get {return _a ?? 0}
        set {_a = newValue}
      }
      var hasA: Bool {
        return _a != nil
      }
      mutating func clearA() {
        return _a = nil
      }

      var unknownFields = SwiftProtobuf.UnknownStorage()

      init() {}

      public var isInitialized: Bool {
        if !_extensionFieldValues.isInitialized {return false}
        return true
      }

      mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
          switch fieldNumber {
          case 1: try decoder.decodeSingularInt32Field(value: &_a)
          case 100..<1001:
            try decoder.decodeExtensionField(values: &_extensionFieldValues, messageType: Baz.self, fieldNumber: fieldNumber)
          default: break
          }
        }
      }

      func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if let v = _a {
          try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
        }
        try visitor.visitExtensionFields(fields: _extensionFieldValues, start: 100, end: 1001)
        try unknownFields.traverse(visitor: &visitor)
      }

      func _protobuf_generated_isEqualTo(other: ProtobufUnittest_Extend_Foo.Bar.Baz) -> Bool {
        if _a != other._a {return false}
        if unknownFields != other.unknownFields {return false}
        if _extensionFieldValues != other._extensionFieldValues {return false}
        return true
      }

      private var _extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()

      mutating func setExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Baz>, value: F.ValueType) {
        _extensionFieldValues[ext.fieldNumber] = ext._protobuf_set(value: value)
      }

      mutating func clearExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Baz>) {
        _extensionFieldValues[ext.fieldNumber] = nil
      }

      func getExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Baz>) -> F.ValueType {
        if let fieldValue = _extensionFieldValues[ext.fieldNumber] as? F {
          return fieldValue.value
        }
        return ext.defaultValue
      }

      func hasExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Baz>) -> Bool {
        return _extensionFieldValues[ext.fieldNumber] is F
      }
      func _protobuf_names(for number: Int) -> _NameMap.Names? {
        return Baz._protobuf_nameMap.names(for: number) ?? _extensionFieldValues._protobuf_fieldNames(for: number)
      }
    }

    init() {}

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let _ = try decoder.nextFieldNumber() {
      }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      try unknownFields.traverse(visitor: &visitor)
    }

    func _protobuf_generated_isEqualTo(other: ProtobufUnittest_Extend_Foo.Bar) -> Bool {
      if unknownFields != other.unknownFields {return false}
      return true
    }
  }

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_Extend_Foo) -> Bool {
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

struct ProtobufUnittest_Extend_C: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "C"
  static let protoPackageName: String = "protobuf_unittest.extend"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    999: .same(proto: "c"),
  ]

  ///        extensions 10 to 20;
  private var _c: Int64? = nil
  var c: Int64 {
    get {return _c ?? 0}
    set {_c = newValue}
  }
  var hasC: Bool {
    return _c != nil
  }
  mutating func clearC() {
    return _c = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 999: try decoder.decodeSingularInt64Field(value: &_c)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = _c {
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 999)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_Extend_C) -> Bool {
    if _c != other._c {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

// 
// extend Foo.Bar.Baz.C {
// optional bool d = 12;
// }

//  If this compiles then it means we deal with unique proto names that
//  could end up with naming collisions when remapped to Swifty names.

struct ProtobufUnittest_Extend_Msg1: SwiftProtobuf.Message, SwiftProtobuf.ExtensibleMessage, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Msg1"
  static let protoPackageName: String = "protobuf_unittest.extend"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  public var isInitialized: Bool {
    if !_extensionFieldValues.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      if (1 <= fieldNumber && fieldNumber < 1001) {
        try decoder.decodeExtensionField(values: &_extensionFieldValues, messageType: ProtobufUnittest_Extend_Msg1.self, fieldNumber: fieldNumber)
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try visitor.visitExtensionFields(fields: _extensionFieldValues, start: 1, end: 1001)
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_Extend_Msg1) -> Bool {
    if unknownFields != other.unknownFields {return false}
    if _extensionFieldValues != other._extensionFieldValues {return false}
    return true
  }

  private var _extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()

  mutating func setExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_Msg1>, value: F.ValueType) {
    _extensionFieldValues[ext.fieldNumber] = ext._protobuf_set(value: value)
  }

  mutating func clearExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_Msg1>) {
    _extensionFieldValues[ext.fieldNumber] = nil
  }

  func getExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_Msg1>) -> F.ValueType {
    if let fieldValue = _extensionFieldValues[ext.fieldNumber] as? F {
      return fieldValue.value
    }
    return ext.defaultValue
  }

  func hasExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_Msg1>) -> Bool {
    return _extensionFieldValues[ext.fieldNumber] is F
  }
  func _protobuf_names(for number: Int) -> _NameMap.Names? {
    return ProtobufUnittest_Extend_Msg1._protobuf_nameMap.names(for: number) ?? _extensionFieldValues._protobuf_fieldNames(for: number)
  }
}

struct ProtobufUnittest_Extend_Msg2: SwiftProtobuf.Message, SwiftProtobuf.ExtensibleMessage, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Msg2"
  static let protoPackageName: String = "protobuf_unittest.extend"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  public var isInitialized: Bool {
    if !_extensionFieldValues.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      if (1 <= fieldNumber && fieldNumber < 1001) {
        try decoder.decodeExtensionField(values: &_extensionFieldValues, messageType: ProtobufUnittest_Extend_Msg2.self, fieldNumber: fieldNumber)
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try visitor.visitExtensionFields(fields: _extensionFieldValues, start: 1, end: 1001)
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_Extend_Msg2) -> Bool {
    if unknownFields != other.unknownFields {return false}
    if _extensionFieldValues != other._extensionFieldValues {return false}
    return true
  }

  private var _extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()

  mutating func setExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_Msg2>, value: F.ValueType) {
    _extensionFieldValues[ext.fieldNumber] = ext._protobuf_set(value: value)
  }

  mutating func clearExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_Msg2>) {
    _extensionFieldValues[ext.fieldNumber] = nil
  }

  func getExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_Msg2>) -> F.ValueType {
    if let fieldValue = _extensionFieldValues[ext.fieldNumber] as? F {
      return fieldValue.value
    }
    return ext.defaultValue
  }

  func hasExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_Msg2>) -> Bool {
    return _extensionFieldValues[ext.fieldNumber] is F
  }
  func _protobuf_names(for number: Int) -> _NameMap.Names? {
    return ProtobufUnittest_Extend_Msg2._protobuf_nameMap.names(for: number) ?? _extensionFieldValues._protobuf_fieldNames(for: number)
  }
}

//  These allow testing where a StorageClass is and isn't used.

struct ProtobufUnittest_Extend_MsgNoStorage: SwiftProtobuf.Message, SwiftProtobuf.ExtensibleMessage, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "MsgNoStorage"
  static let protoPackageName: String = "protobuf_unittest.extend"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "x"),
  ]

  private var _x: Int32? = nil
  var x: Int32 {
    get {return _x ?? 0}
    set {_x = newValue}
  }
  var hasX: Bool {
    return _x != nil
  }
  mutating func clearX() {
    return _x = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  public var isInitialized: Bool {
    if !_extensionFieldValues.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &_x)
      case 100..<201:
        try decoder.decodeExtensionField(values: &_extensionFieldValues, messageType: ProtobufUnittest_Extend_MsgNoStorage.self, fieldNumber: fieldNumber)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = _x {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    try visitor.visitExtensionFields(fields: _extensionFieldValues, start: 100, end: 201)
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_Extend_MsgNoStorage) -> Bool {
    if _x != other._x {return false}
    if unknownFields != other.unknownFields {return false}
    if _extensionFieldValues != other._extensionFieldValues {return false}
    return true
  }

  private var _extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()

  mutating func setExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_MsgNoStorage>, value: F.ValueType) {
    _extensionFieldValues[ext.fieldNumber] = ext._protobuf_set(value: value)
  }

  mutating func clearExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_MsgNoStorage>) {
    _extensionFieldValues[ext.fieldNumber] = nil
  }

  func getExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_MsgNoStorage>) -> F.ValueType {
    if let fieldValue = _extensionFieldValues[ext.fieldNumber] as? F {
      return fieldValue.value
    }
    return ext.defaultValue
  }

  func hasExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_MsgNoStorage>) -> Bool {
    return _extensionFieldValues[ext.fieldNumber] is F
  }
  func _protobuf_names(for number: Int) -> _NameMap.Names? {
    return ProtobufUnittest_Extend_MsgNoStorage._protobuf_nameMap.names(for: number) ?? _extensionFieldValues._protobuf_fieldNames(for: number)
  }
}

struct ProtobufUnittest_Extend_MsgUsesStorage: SwiftProtobuf.Message, SwiftProtobuf.ExtensibleMessage, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "MsgUsesStorage"
  static let protoPackageName: String = "protobuf_unittest.extend"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "x"),
    2: .same(proto: "y"),
  ]

  private class _StorageClass {
    var _x: Int32? = nil
    var _y: ProtobufUnittest_Extend_MsgUsesStorage? = nil

    init() {}

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._x = _x
      clone._y = _y
      return clone
    }
  }

  private var _storage = _StorageClass()

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }

  var x: Int32 {
    get {return _storage._x ?? 0}
    set {_uniqueStorage()._x = newValue}
  }
  var hasX: Bool {
    return _storage._x != nil
  }
  mutating func clearX() {
    return _storage._x = nil
  }

  ///   Recursive class (i.e. - can build a graph), forces _StorageClass.
  var y: ProtobufUnittest_Extend_MsgUsesStorage {
    get {return _storage._y ?? ProtobufUnittest_Extend_MsgUsesStorage()}
    set {_uniqueStorage()._y = newValue}
  }
  var hasY: Bool {
    return _storage._y != nil
  }
  mutating func clearY() {
    return _storage._y = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_extensionFieldValues.isInitialized {return false}
      if let v = _storage._y, !v.isInitialized {return false}
      return true
    }
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt32Field(value: &_storage._x)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._y)
        case 100..<201:
          try decoder.decodeExtensionField(values: &_extensionFieldValues, messageType: ProtobufUnittest_Extend_MsgUsesStorage.self, fieldNumber: fieldNumber)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._x {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
      }
      if let v = _storage._y {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      try visitor.visitExtensionFields(fields: _extensionFieldValues, start: 100, end: 201)
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_Extend_MsgUsesStorage) -> Bool {
    return withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
      if _storage !== other_storage {
        if _storage._x != other_storage._x {return false}
        if _storage._y != other_storage._y {return false}
      }
      if unknownFields != other.unknownFields {return false}
      if _extensionFieldValues != other._extensionFieldValues {return false}
      return true
    }
  }

  private var _extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()

  mutating func setExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_MsgUsesStorage>, value: F.ValueType) {
    _extensionFieldValues[ext.fieldNumber] = ext._protobuf_set(value: value)
  }

  mutating func clearExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_MsgUsesStorage>) {
    _extensionFieldValues[ext.fieldNumber] = nil
  }

  func getExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_MsgUsesStorage>) -> F.ValueType {
    if let fieldValue = _extensionFieldValues[ext.fieldNumber] as? F {
      return fieldValue.value
    }
    return ext.defaultValue
  }

  func hasExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_Extend_MsgUsesStorage>) -> Bool {
    return _extensionFieldValues[ext.fieldNumber] is F
  }
  func _protobuf_names(for number: Int) -> _NameMap.Names? {
    return ProtobufUnittest_Extend_MsgUsesStorage._protobuf_nameMap.names(for: number) ?? _extensionFieldValues._protobuf_fieldNames(for: number)
  }
}

let ProtobufUnittest_Extend_Extensions_b = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufString>, ProtobufUnittest_Extend_Foo.Bar.Baz>(
  _protobuf_fieldNumber: 100,
  fieldNames: .same(proto: "protobuf_unittest.extend.b"),
  defaultValue: ""
)

let ProtobufUnittest_Extend_Extensions_C = SwiftProtobuf.MessageExtension<OptionalGroupExtensionField<ProtobufUnittest_Extend_C>, ProtobufUnittest_Extend_Foo.Bar.Baz>(
  _protobuf_fieldNumber: 101,
  fieldNames: .same(proto: "protobuf_unittest.extend.C"),
  defaultValue: ProtobufUnittest_Extend_C()
)

let ProtobufUnittest_Extend_Extensions_a_b = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, ProtobufUnittest_Extend_Msg1>(
  _protobuf_fieldNumber: 1,
  fieldNames: .same(proto: "protobuf_unittest.extend.a_b"),
  defaultValue: 0
)

let ProtobufUnittest_Extend_Extensions_aB = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, ProtobufUnittest_Extend_Msg2>(
  _protobuf_fieldNumber: 1,
  fieldNames: .same(proto: "protobuf_unittest.extend.aB"),
  defaultValue: 0
)

let ProtobufUnittest_Extend_Extensions_ext_a = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, ProtobufUnittest_Extend_MsgNoStorage>(
  _protobuf_fieldNumber: 100,
  fieldNames: .same(proto: "protobuf_unittest.extend.ext_a"),
  defaultValue: 0
)

let ProtobufUnittest_Extend_Extensions_ext_b = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, ProtobufUnittest_Extend_MsgNoStorage>(
  _protobuf_fieldNumber: 101,
  fieldNames: .same(proto: "protobuf_unittest.extend.ext_b"),
  defaultValue: 0
)

let ProtobufUnittest_Extend_Extensions_ext_c = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, ProtobufUnittest_Extend_MsgUsesStorage>(
  _protobuf_fieldNumber: 100,
  fieldNames: .same(proto: "protobuf_unittest.extend.ext_c"),
  defaultValue: 0
)

let ProtobufUnittest_Extend_Extensions_ext_d = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, ProtobufUnittest_Extend_MsgUsesStorage>(
  _protobuf_fieldNumber: 101,
  fieldNames: .same(proto: "protobuf_unittest.extend.ext_d"),
  defaultValue: 0
)

extension ProtobufUnittest_Extend_Foo.Bar.Baz {
  var ProtobufUnittest_Extend_b: String {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b) ?? ""}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b, value: newValue)}
  }
  var hasProtobufUnittest_Extend_b: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b)
  }
  mutating func clearProtobufUnittest_Extend_b() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b)
  }
}

extension ProtobufUnittest_Extend_Foo.Bar.Baz {
  var ProtobufUnittest_Extend_c: ProtobufUnittest_Extend_C {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_C) ?? ProtobufUnittest_Extend_C()}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_C, value: newValue)}
  }
  var hasProtobufUnittest_Extend_c: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_C)
  }
  mutating func clearProtobufUnittest_Extend_c() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_C)
  }
}

extension ProtobufUnittest_Extend_Msg1 {
  var ProtobufUnittest_Extend_aB: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_a_b) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_a_b, value: newValue)}
  }
  var hasProtobufUnittest_Extend_aB: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_a_b)
  }
  mutating func clearProtobufUnittest_Extend_aB() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_a_b)
  }
}

extension ProtobufUnittest_Extend_Msg2 {
  var ProtobufUnittest_Extend_aB: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_aB) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_aB, value: newValue)}
  }
  var hasProtobufUnittest_Extend_aB: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_aB)
  }
  mutating func clearProtobufUnittest_Extend_aB() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_aB)
  }
}

extension ProtobufUnittest_Extend_MsgNoStorage {
  var ProtobufUnittest_Extend_extA: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_a) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_a, value: newValue)}
  }
  var hasProtobufUnittest_Extend_extA: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_a)
  }
  mutating func clearProtobufUnittest_Extend_extA() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_a)
  }
}

extension ProtobufUnittest_Extend_MsgNoStorage {
  var ProtobufUnittest_Extend_extB: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_b) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_b, value: newValue)}
  }
  var hasProtobufUnittest_Extend_extB: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_b)
  }
  mutating func clearProtobufUnittest_Extend_extB() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_b)
  }
}

extension ProtobufUnittest_Extend_MsgUsesStorage {
  var ProtobufUnittest_Extend_extC: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_c) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_c, value: newValue)}
  }
  var hasProtobufUnittest_Extend_extC: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_c)
  }
  mutating func clearProtobufUnittest_Extend_extC() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_c)
  }
}

extension ProtobufUnittest_Extend_MsgUsesStorage {
  var ProtobufUnittest_Extend_extD: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_d) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_d, value: newValue)}
  }
  var hasProtobufUnittest_Extend_extD: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_d)
  }
  mutating func clearProtobufUnittest_Extend_extD() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_ext_d)
  }
}

let ProtobufUnittest_Extend_UnittestSwiftExtension_Extensions: SwiftProtobuf.ExtensionSet = [
  ProtobufUnittest_Extend_Extensions_b,
  ProtobufUnittest_Extend_Extensions_C,
  ProtobufUnittest_Extend_Extensions_a_b,
  ProtobufUnittest_Extend_Extensions_aB,
  ProtobufUnittest_Extend_Extensions_ext_a,
  ProtobufUnittest_Extend_Extensions_ext_b,
  ProtobufUnittest_Extend_Extensions_ext_c,
  ProtobufUnittest_Extend_Extensions_ext_d
]
