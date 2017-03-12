/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/duration.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

///   A Duration represents a signed, fixed-length span of time represented
///   as a count of seconds and fractions of seconds at nanosecond
///   resolution. It is independent of any calendar and concepts like "day"
///   or "month". It is related to Timestamp in that the difference between
///   two Timestamp values is a Duration and it can be added or subtracted
///   from a Timestamp. Range is approximately +-10,000 years.
///  
///   Example 1: Compute Duration from two Timestamps in pseudo code.
///  
///       Timestamp start = ...;
///       Timestamp end = ...;
///       Duration duration = ...;
///  
///       duration.seconds = end.seconds - start.seconds;
///       duration.nanos = end.nanos - start.nanos;
///  
///       if (duration.seconds < 0 && duration.nanos > 0) {
///         duration.seconds += 1;
///         duration.nanos -= 1000000000;
///       } else if (durations.seconds > 0 && duration.nanos < 0) {
///         duration.seconds -= 1;
///         duration.nanos += 1000000000;
///       }
///  
///   Example 2: Compute Timestamp from Timestamp + Duration in pseudo code.
///  
///       Timestamp start = ...;
///       Duration duration = ...;
///       Timestamp end = ...;
///  
///       end.seconds = start.seconds + duration.seconds;
///       end.nanos = start.nanos + duration.nanos;
///  
///       if (end.nanos < 0) {
///         end.seconds -= 1;
///         end.nanos += 1000000000;
///       } else if (end.nanos >= 1000000000) {
///         end.seconds += 1;
///         end.nanos -= 1000000000;
///       }
///  
///   Example 3: Compute Duration from datetime.timedelta in Python.
///  
///       td = datetime.timedelta(days=3, minutes=10)
///       duration = Duration()
///       duration.FromTimedelta(td)
public struct Google_Protobuf_Duration: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "Duration"
  public static let protoPackageName: String = "google.protobuf"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "seconds"),
    2: .same(proto: "nanos"),
  ]

  ///   Signed seconds of the span of time. Must be from -315,576,000,000
  ///   to +315,576,000,000 inclusive.
  public var seconds: Int64 = 0

  ///   Signed fractions of a second at nanosecond resolution of the span
  ///   of time. Durations less than one second are represented with a 0
  ///   `seconds` field and a positive or negative `nanos` field. For durations
  ///   of one second or more, a non-zero value for the `nanos` field must be
  ///   of the same sign as the `seconds` field. Must be from -999,999,999
  ///   to +999,999,999 inclusive.
  public var nanos: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &seconds)
      case 2: try decoder.decodeSingularInt32Field(value: &nanos)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if seconds != 0 {
      try visitor.visitSingularInt64Field(value: seconds, fieldNumber: 1)
    }
    if nanos != 0 {
      try visitor.visitSingularInt32Field(value: nanos, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Google_Protobuf_Duration) -> Bool {
    if seconds != other.seconds {return false}
    if nanos != other.nanos {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
