// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class PhotoTemplateQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PhotoTemplate

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> PhotoTemplateQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> PhotoTemplateQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> PhotoTemplateQuery {
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
		open func templateKey(aliasSuffix: String? = nil) -> PhotoTemplateQuery {
			addField(field: "templateKey", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func aspectRatios(aliasSuffix: String? = nil, _ subfields: (TemplateAspectRatioQuery) -> Void) -> PhotoTemplateQuery {
			let subquery = TemplateAspectRatioQuery()
			subfields(subquery)

			addField(field: "aspectRatios", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}
	}

	open class PhotoTemplate: GraphQL.AbstractResponse, GraphQLObject, CmsItem {
		public typealias Query = PhotoTemplateQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PhotoTemplate.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: PhotoTemplate.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: PhotoTemplate.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "templateKey":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: PhotoTemplate.self, field: fieldName, value: fieldValue)
				}
				return value

				case "aspectRatios":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: PhotoTemplate.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: PhotoTemplate.self, field: fieldName, value: fieldValue)
				}
				return try TemplateAspectRatio(fields: value) } as [Any?]

				default:
				throw SchemaViolationError(type: PhotoTemplate.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "PhotoTemplate" }

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

		open var templateKey: String? {
			return internalGetTemplateKey()
		}

		func internalGetTemplateKey(aliasSuffix: String? = nil) -> String? {
			return field(field: "templateKey", aliasSuffix: aliasSuffix) as! String?
		}

		open var aspectRatios: [BAMify.TemplateAspectRatio?]? {
			return internalGetAspectRatios()
		}

		func internalGetAspectRatios(aliasSuffix: String? = nil) -> [BAMify.TemplateAspectRatio?]? {
			return field(field: "aspectRatios", aliasSuffix: aliasSuffix) as! [BAMify.TemplateAspectRatio?]?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "templateKey":

				return .scalar

				case "aspectRatios":

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

				case "aspectRatios":
				return internalGetAspectRatios()  as? [GraphQL.AbstractResponse]  ?? []

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
