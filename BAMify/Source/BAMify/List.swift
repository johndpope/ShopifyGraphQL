// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class ListQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = List

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> ListQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> ListQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> ListQuery {
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
		open func key(aliasSuffix: String? = nil) -> ListQuery {
			addField(field: "key", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func numitems(aliasSuffix: String? = nil) -> ListQuery {
			addField(field: "numitems", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func list(aliasSuffix: String? = nil, _ subfields: (CmsItemQuery) -> Void) -> ListQuery {
			let subquery = CmsItemQuery()
			subfields(subquery)

			addField(field: "list", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func blurb(aliasSuffix: String? = nil) -> ListQuery {
			addField(field: "blurb", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func aliasList(aliasSuffix: String? = nil, _ subfields: (CmsItemQuery) -> Void) -> ListQuery {
			let subquery = CmsItemQuery()
			subfields(subquery)

			addField(field: "aliasList", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class List: GraphQL.AbstractResponse, GraphQLObject, CmsItem, ContentOrContents, SearchResultDoc {
		public typealias Query = ListQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: List.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: List.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: List.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "key":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: List.self, field: fieldName, value: fieldValue)
				}
				return value

				case "numitems":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: List.self, field: fieldName, value: fieldValue)
				}
				return value

				case "list":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: List.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: List.self, field: fieldName, value: fieldValue)
				}
				return try UnknownCmsItem.create(fields: value) } as [Any?]

				case "blurb":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: List.self, field: fieldName, value: fieldValue)
				}
				return value

				case "aliasList":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: List.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: List.self, field: fieldName, value: fieldValue)
				}
				return try UnknownCmsItem.create(fields: value) } as [Any?]

				default:
				throw SchemaViolationError(type: List.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "List" }

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

		open var key: String? {
			return internalGetKey()
		}

		func internalGetKey(aliasSuffix: String? = nil) -> String? {
			return field(field: "key", aliasSuffix: aliasSuffix) as! String?
		}

		open var numitems: String? {
			return internalGetNumitems()
		}

		func internalGetNumitems(aliasSuffix: String? = nil) -> String? {
			return field(field: "numitems", aliasSuffix: aliasSuffix) as! String?
		}

		open var list: [CmsItem?]? {
			return internalGetList()
		}

		func internalGetList(aliasSuffix: String? = nil) -> [CmsItem?]? {
			return field(field: "list", aliasSuffix: aliasSuffix) as! [CmsItem?]?
		}

		open var blurb: String? {
			return internalGetBlurb()
		}

		func internalGetBlurb(aliasSuffix: String? = nil) -> String? {
			return field(field: "blurb", aliasSuffix: aliasSuffix) as! String?
		}

		open var aliasList: [CmsItem?]? {
			return internalGetAliasList()
		}

		func internalGetAliasList(aliasSuffix: String? = nil) -> [CmsItem?]? {
			return field(field: "aliasList", aliasSuffix: aliasSuffix) as! [CmsItem?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "key":

				return .scalar

				case "numitems":

				return .scalar

				case "list":

				return .objectList

				case "blurb":

				return .scalar

				case "aliasList":

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
