// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class ConfigurationStructuredQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = ConfigurationStructured

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> ConfigurationStructuredQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> ConfigurationStructuredQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> ConfigurationStructuredQuery {
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
		open func configuration(aliasSuffix: String? = nil) -> ConfigurationStructuredQuery {
			addField(field: "configuration", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func list(aliasSuffix: String? = nil, _ subfields: (CmsItemQuery) -> Void) -> ConfigurationStructuredQuery {
			let subquery = CmsItemQuery()
			subfields(subquery)

			addField(field: "list", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class ConfigurationStructured: GraphQL.AbstractResponse, GraphQLObject, CmsItem {
		public typealias Query = ConfigurationStructuredQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ConfigurationStructured.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: ConfigurationStructured.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: ConfigurationStructured.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "configuration":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: ConfigurationStructured.self, field: fieldName, value: fieldValue)
				}
				return value

				case "list":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: ConfigurationStructured.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: ConfigurationStructured.self, field: fieldName, value: fieldValue)
				}
				return try UnknownCmsItem.create(fields: value) } as [Any?]

				default:
				throw SchemaViolationError(type: ConfigurationStructured.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "ConfigurationStructured" }

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

		open var configuration: String? {
			return internalGetConfiguration()
		}

		func internalGetConfiguration(aliasSuffix: String? = nil) -> String? {
			return field(field: "configuration", aliasSuffix: aliasSuffix) as! String?
		}

		open var list: [CmsItem?]? {
			return internalGetList()
		}

		func internalGetList(aliasSuffix: String? = nil) -> [CmsItem?]? {
			return field(field: "list", aliasSuffix: aliasSuffix) as! [CmsItem?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "configuration":

				return .scalar

				case "list":

				return .objectList

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
