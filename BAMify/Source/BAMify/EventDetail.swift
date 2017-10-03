// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class EventDetailQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EventDetail

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> EventDetailQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> EventDetailQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> EventDetailQuery {
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
		open func title(aliasSuffix: String? = nil) -> EventDetailQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bigBlurb(aliasSuffix: String? = nil) -> EventDetailQuery {
			addField(field: "bigBlurb", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func subTitle(aliasSuffix: String? = nil) -> EventDetailQuery {
			addField(field: "subTitle", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EventDetail: GraphQL.AbstractResponse, GraphQLObject, CmsItem {
		public typealias Query = EventDetailQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventDetail.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventDetail.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: EventDetail.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "title":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventDetail.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bigBlurb":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventDetail.self, field: fieldName, value: fieldValue)
				}
				return value

				case "subTitle":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventDetail.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: EventDetail.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EventDetail" }

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

		open var title: String? {
			return internalGetTitle()
		}

		func internalGetTitle(aliasSuffix: String? = nil) -> String? {
			return field(field: "title", aliasSuffix: aliasSuffix) as! String?
		}

		open var bigBlurb: String? {
			return internalGetBigBlurb()
		}

		func internalGetBigBlurb(aliasSuffix: String? = nil) -> String? {
			return field(field: "bigBlurb", aliasSuffix: aliasSuffix) as! String?
		}

		open var subTitle: String? {
			return internalGetSubTitle()
		}

		func internalGetSubTitle(aliasSuffix: String? = nil) -> String? {
			return field(field: "subTitle", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "title":

				return .scalar

				case "bigBlurb":

				return .scalar

				case "subTitle":

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
