// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class FieldOptionQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = FieldOption

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> FieldOptionQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> FieldOptionQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> FieldOptionQuery {
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
		open func value(aliasSuffix: String? = nil) -> FieldOptionQuery {
			addField(field: "value", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func displayName(aliasSuffix: String? = nil) -> FieldOptionQuery {
			addField(field: "displayName", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class FieldOption: GraphQL.AbstractResponse, GraphQLObject, CmsItem {
		public typealias Query = FieldOptionQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: FieldOption.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: FieldOption.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: FieldOption.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "value":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: FieldOption.self, field: fieldName, value: fieldValue)
				}
				return value

				case "displayName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: FieldOption.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: FieldOption.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "FieldOption" }

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

		open var displayName: String? {
			return internalGetDisplayName()
		}

		func internalGetDisplayName(aliasSuffix: String? = nil) -> String? {
			return field(field: "displayName", aliasSuffix: aliasSuffix) as! String?
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

				case "displayName":

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
