// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class KeyValueQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = KeyValue

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> KeyValueQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> KeyValueQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> KeyValueQuery {
			var args: [String] = []

			if let type = type {
				args.append("type:[\(type.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = TagQuery()
			subfields(subquery)

			addField(field: "tags", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func value(aliasSuffix: String? = nil) -> KeyValueQuery {
			addField(field: "value", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func listValue(aliasSuffix: String? = nil, _ subfields: (CmsItemQuery) -> Void) -> KeyValueQuery {
			let subquery = CmsItemQuery()
			subfields(subquery)

			addField(field: "listValue", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func key(aliasSuffix: String? = nil) -> KeyValueQuery {
			addField(field: "key", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class KeyValue: GraphQL.AbstractResponse, GraphQLObject, CmsItem {
		public typealias Query = KeyValueQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: KeyValue.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: KeyValue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: KeyValue.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "value":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: KeyValue.self, field: fieldName, value: fieldValue)
				}
				return value

				case "listValue":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: KeyValue.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: KeyValue.self, field: fieldName, value: fieldValue)
				}
				return try UnknownCmsItem.create(fields: value) } as [Any?]

				case "key":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: KeyValue.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: KeyValue.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "KeyValue" }

		open var contentId: GraphQL.ID {
			return internalGetContentId()
		}

		func internalGetContentId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "contentId", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var type: String {
			return internalGetType()
		}

		func internalGetType(aliasSuffix: String? = nil) -> String {
			return field(field: "type", aliasSuffix: aliasSuffix) as! String
		}

		open var tags: [BAMify.Tag]? {
			return internalGetTags()
		}

		open func aliasedTags(aliasSuffix: String) -> [BAMify.Tag]? {
			return internalGetTags(aliasSuffix: aliasSuffix)
		}

		func internalGetTags(aliasSuffix: String? = nil) -> [BAMify.Tag]? {
			return field(field: "tags", aliasSuffix: aliasSuffix) as! [BAMify.Tag]?
		}

		open var value: String? {
			return internalGetValue()
		}

		func internalGetValue(aliasSuffix: String? = nil) -> String? {
			return field(field: "value", aliasSuffix: aliasSuffix) as! String?
		}

		open var listValue: [CmsItem?]? {
			return internalGetListValue()
		}

		func internalGetListValue(aliasSuffix: String? = nil) -> [CmsItem?]? {
			return field(field: "listValue", aliasSuffix: aliasSuffix) as! [CmsItem?]?
		}

		open var key: String? {
			return internalGetKey()
		}

		func internalGetKey(aliasSuffix: String? = nil) -> String? {
			return field(field: "key", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "value":

				return .scalar

				case "listValue":

				return .objectList

				case "key":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				default:
				break
			}
			return nil
		}

		override open func fetchChildObjectList(key: String) -> [GraphQL.AbstractResponse] {
			switch(key) {
				case "tags":
				return internalGetTags() ?? []

				default:
				return []
			}
		}

		open func childResponseObjectMap() -> [GraphQL.AbstractResponse]  {
			return []
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
