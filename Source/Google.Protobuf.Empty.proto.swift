/// Generated by the Protocol Buffers 3.3.2 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.22
/// Source file "empty.proto"
/// Syntax "Proto3"

import Foundation

public extension Google.Protobuf{}

public extension Google.Protobuf {
    public struct EmptyRoot {
        public static let `default` = EmptyRoot()
        public var extensionRegistry:ExtensionRegistry

        init() {
            extensionRegistry = ExtensionRegistry()
            registerAllExtensions(registry: extensionRegistry)
            Google.Protobuf.SwiftDescriptorRoot.default.registerAllExtensions(registry: extensionRegistry)
        }
        public func registerAllExtensions(registry: ExtensionRegistry) {
        }
    }

    /// A generic empty message that you can re-use to avoid defining duplicated
    /// empty messages in your APIs. A typical example is to use it as the request
    /// or the response type of an API method. For instance:
    ///     service Foo {
    ///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
    ///     }
    final public class Empty : GeneratedMessage {
        public typealias BuilderType = Google.Protobuf.Empty.Builder

        public static func == (lhs: Google.Protobuf.Empty, rhs: Google.Protobuf.Empty) -> Bool {
            if lhs === rhs {
                return true
            }
            var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
            fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
            return fieldCheck
        }

        required public init() {
            super.init()
        }
        override public func isInitialized() -> Bool {
            return true
        }
        override public func writeTo(codedOutputStream: CodedOutputStream) throws {
            try unknownFields.writeTo(codedOutputStream: codedOutputStream)
        }
        override public func serializedSize() -> Int32 {
            var serialize_size:Int32 = memoizedSerializedSize
            if serialize_size != -1 {
             return serialize_size
            }

            serialize_size = 0
            serialize_size += unknownFields.serializedSize()
            memoizedSerializedSize = serialize_size
            return serialize_size
        }
        public class func getBuilder() -> Google.Protobuf.Empty.Builder {
            return Google.Protobuf.Empty.classBuilder() as! Google.Protobuf.Empty.Builder
        }
        public func getBuilder() -> Google.Protobuf.Empty.Builder {
            return classBuilder() as! Google.Protobuf.Empty.Builder
        }
        override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
            return Google.Protobuf.Empty.Builder()
        }
        override public func classBuilder() -> ProtocolBuffersMessageBuilder {
            return Google.Protobuf.Empty.Builder()
        }
        public func toBuilder() throws -> Google.Protobuf.Empty.Builder {
            return try Google.Protobuf.Empty.builderWithPrototype(prototype:self)
        }
        public class func builderWithPrototype(prototype:Google.Protobuf.Empty) throws -> Google.Protobuf.Empty.Builder {
            return try Google.Protobuf.Empty.Builder().mergeFrom(other:prototype)
        }
        override public func encode() throws -> Dictionary<String,Any> {
            guard isInitialized() else {
                throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
            }

            let jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
            return jsonMap
        }
        override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Google.Protobuf.Empty {
            return try Google.Protobuf.Empty.Builder.decodeToBuilder(jsonMap:jsonMap).build()
        }
        override class public func fromJSON(data:Data) throws -> Google.Protobuf.Empty {
            return try Google.Protobuf.Empty.Builder.fromJSONToBuilder(data:data).build()
        }
        override public func getDescription(indent:String) throws -> String {
            var output = ""
            output += unknownFields.getDescription(indent: indent)
            return output
        }
        override public var hashValue:Int {
            get {
                var hashCode:Int = 7
                hashCode = (hashCode &* 31) &+  unknownFields.hashValue
                return hashCode
            }
        }


        //Meta information declaration start

        override public class func className() -> String {
            return "Google.Protobuf.Empty"
        }
        override public func className() -> String {
            return "Google.Protobuf.Empty"
        }
        //Meta information declaration end

        final public class Builder : GeneratedMessageBuilder {
            fileprivate var builderResult:Google.Protobuf.Empty = Google.Protobuf.Empty()
            public func getMessage() -> Google.Protobuf.Empty {
                return builderResult
            }

            required override public init () {
                super.init()
            }
            override public var internalGetResult:GeneratedMessage {
                get {
                    return builderResult
                }
            }
            @discardableResult
            override public func clear() -> Google.Protobuf.Empty.Builder {
                builderResult = Google.Protobuf.Empty()
                return self
            }
            override public func clone() throws -> Google.Protobuf.Empty.Builder {
                return try Google.Protobuf.Empty.builderWithPrototype(prototype:builderResult)
            }
            override public func build() throws -> Google.Protobuf.Empty {
                try checkInitialized()
                return buildPartial()
            }
            public func buildPartial() -> Google.Protobuf.Empty {
                let returnMe:Google.Protobuf.Empty = builderResult
                return returnMe
            }
            @discardableResult
            public func mergeFrom(other:Google.Protobuf.Empty) throws -> Google.Protobuf.Empty.Builder {
                if other == Google.Protobuf.Empty() {
                    return self
                }
                try merge(unknownField: other.unknownFields)
                return self
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Google.Protobuf.Empty.Builder {
                return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.Empty.Builder {
                let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
                while (true) {
                    let protobufTag = try codedInputStream.readTag()
                    switch protobufTag {
                    case 0: 
                        self.unknownFields = try unknownFieldsBuilder.build()
                        return self

                    default:
                        if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                            unknownFields = try unknownFieldsBuilder.build()
                            return self
                        }
                    }
                }
            }
            class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Google.Protobuf.Empty.Builder {
                let resultDecodedBuilder = Google.Protobuf.Empty.Builder()
                return resultDecodedBuilder
            }
            override class public func fromJSONToBuilder(data:Data) throws -> Google.Protobuf.Empty.Builder {
                let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
                guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
                  throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
                }
                return try Google.Protobuf.Empty.Builder.decodeToBuilder(jsonMap:jsDataCast)
            }
        }

    }

}
extension Google.Protobuf.Empty: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Google.Protobuf.Empty> {
        var mergedArray = Array<Google.Protobuf.Empty>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> Google.Protobuf.Empty? {
        return try Google.Protobuf.Empty.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> Google.Protobuf.Empty {
        return try Google.Protobuf.Empty.Builder().mergeFrom(data: data, extensionRegistry:Google.Protobuf.EmptyRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.Empty {
        return try Google.Protobuf.Empty.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> Google.Protobuf.Empty {
        return try Google.Protobuf.Empty.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.Empty {
        return try Google.Protobuf.Empty.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> Google.Protobuf.Empty {
        return try Google.Protobuf.Empty.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.Empty {
        return try Google.Protobuf.Empty.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        return nil
    }
}
extension Google.Protobuf.Empty.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = Google.Protobuf.Empty
    public subscript(key: String) -> Any? {
        get { return nil }
        set { }
    }
}

// @@protoc_insertion_point(global_scope)
