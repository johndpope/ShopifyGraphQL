// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class PageQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Page

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> PageQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> PageQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> PageQuery {
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
		open func body(aliasSuffix: String? = nil) -> PageQuery {
			addField(field: "body", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func blurb(aliasSuffix: String? = nil) -> PageQuery {
			addField(field: "blurb", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func noFollow(aliasSuffix: String? = nil) -> PageQuery {
			addField(field: "noFollow", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seoKeywords(aliasSuffix: String? = nil) -> PageQuery {
			addField(field: "seoKeywords", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seoBlurb(aliasSuffix: String? = nil) -> PageQuery {
			addField(field: "seoBlurb", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seoTitle(aliasSuffix: String? = nil) -> PageQuery {
			addField(field: "seoTitle", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func title(aliasSuffix: String? = nil) -> PageQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func key(aliasSuffix: String? = nil) -> PageQuery {
			addField(field: "key", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Page: GraphQL.AbstractResponse, GraphQLObject, CmsItem {
		public typealias Query = PageQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Page.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Page.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: Page.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "body":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Page.self, field: fieldName, value: fieldValue)
				}
				return value

				case "blurb":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Page.self, field: fieldName, value: fieldValue)
				}
				return value

				case "noFollow":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: Page.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seoKeywords":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Page.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seoBlurb":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Page.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seoTitle":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Page.self, field: fieldName, value: fieldValue)
				}
				return value

				case "title":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Page.self, field: fieldName, value: fieldValue)
				}
				return value

				case "key":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Page.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Page.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Page" }

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

		open var body: String? {
			return internalGetBody()
		}

		func internalGetBody(aliasSuffix: String? = nil) -> String? {
			return field(field: "body", aliasSuffix: aliasSuffix) as! String?
		}

		open var blurb: String? {
			return internalGetBlurb()
		}

		func internalGetBlurb(aliasSuffix: String? = nil) -> String? {
			return field(field: "blurb", aliasSuffix: aliasSuffix) as! String?
		}

		open var noFollow: Bool? {
			return internalGetNoFollow()
		}

		func internalGetNoFollow(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "noFollow", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var seoKeywords: String? {
			return internalGetSeoKeywords()
		}

		func internalGetSeoKeywords(aliasSuffix: String? = nil) -> String? {
			return field(field: "seoKeywords", aliasSuffix: aliasSuffix) as! String?
		}

		open var seoBlurb: String? {
			return internalGetSeoBlurb()
		}

		func internalGetSeoBlurb(aliasSuffix: String? = nil) -> String? {
			return field(field: "seoBlurb", aliasSuffix: aliasSuffix) as! String?
		}

		open var seoTitle: String? {
			return internalGetSeoTitle()
		}

		func internalGetSeoTitle(aliasSuffix: String? = nil) -> String? {
			return field(field: "seoTitle", aliasSuffix: aliasSuffix) as! String?
		}

		open var title: String? {
			return internalGetTitle()
		}

		func internalGetTitle(aliasSuffix: String? = nil) -> String? {
			return field(field: "title", aliasSuffix: aliasSuffix) as! String?
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

				case "body":

				return .scalar

				case "blurb":

				return .scalar

				case "noFollow":

				return .scalar

				case "seoKeywords":

				return .scalar

				case "seoBlurb":

				return .scalar

				case "seoTitle":

				return .scalar

				case "title":

				return .scalar

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
