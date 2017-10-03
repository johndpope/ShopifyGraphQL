// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class TitleAssetQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = TitleAsset

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> TitleAssetQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> TitleAssetQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> TitleAssetQuery {
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
		open func episodeName(aliasSuffix: String? = nil) -> TitleAssetQuery {
			addField(field: "episodeName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func summaryLong(aliasSuffix: String? = nil) -> TitleAssetQuery {
			addField(field: "summaryLong", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func summaryShort(aliasSuffix: String? = nil) -> TitleAssetQuery {
			addField(field: "summaryShort", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func title(aliasSuffix: String? = nil) -> TitleAssetQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func titleBrief(aliasSuffix: String? = nil) -> TitleAssetQuery {
			addField(field: "titleBrief", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func titleSortName(aliasSuffix: String? = nil) -> TitleAssetQuery {
			addField(field: "titleSortName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func language(aliasSuffix: String? = nil) -> TitleAssetQuery {
			addField(field: "language", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Use titleSlug instead")
		@discardableResult
		open func slug(aliasSuffix: String? = nil) -> TitleAssetQuery {
			addField(field: "slug", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func titleSlug(aliasSuffix: String? = nil) -> TitleAssetQuery {
			addField(field: "titleSlug", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class TitleAsset: GraphQL.AbstractResponse, GraphQLObject, CmsItem {
		public typealias Query = TitleAssetQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TitleAsset.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: TitleAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: TitleAsset.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "episodeName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TitleAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "summaryLong":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TitleAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "summaryShort":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TitleAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "title":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TitleAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "titleBrief":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TitleAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "titleSortName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TitleAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "language":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TitleAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "slug":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TitleAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "titleSlug":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: TitleAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: TitleAsset.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "TitleAsset" }

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

		open var episodeName: String? {
			return internalGetEpisodeName()
		}

		func internalGetEpisodeName(aliasSuffix: String? = nil) -> String? {
			return field(field: "episodeName", aliasSuffix: aliasSuffix) as! String?
		}

		open var summaryLong: String? {
			return internalGetSummaryLong()
		}

		func internalGetSummaryLong(aliasSuffix: String? = nil) -> String? {
			return field(field: "summaryLong", aliasSuffix: aliasSuffix) as! String?
		}

		open var summaryShort: String? {
			return internalGetSummaryShort()
		}

		func internalGetSummaryShort(aliasSuffix: String? = nil) -> String? {
			return field(field: "summaryShort", aliasSuffix: aliasSuffix) as! String?
		}

		open var title: String? {
			return internalGetTitle()
		}

		func internalGetTitle(aliasSuffix: String? = nil) -> String? {
			return field(field: "title", aliasSuffix: aliasSuffix) as! String?
		}

		open var titleBrief: String? {
			return internalGetTitleBrief()
		}

		func internalGetTitleBrief(aliasSuffix: String? = nil) -> String? {
			return field(field: "titleBrief", aliasSuffix: aliasSuffix) as! String?
		}

		open var titleSortName: String? {
			return internalGetTitleSortName()
		}

		func internalGetTitleSortName(aliasSuffix: String? = nil) -> String? {
			return field(field: "titleSortName", aliasSuffix: aliasSuffix) as! String?
		}

		open var language: String? {
			return internalGetLanguage()
		}

		func internalGetLanguage(aliasSuffix: String? = nil) -> String? {
			return field(field: "language", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"Use titleSlug instead")
		open var slug: String? {
			return internalGetSlug()
		}

		func internalGetSlug(aliasSuffix: String? = nil) -> String? {
			return field(field: "slug", aliasSuffix: aliasSuffix) as! String?
		}

		open var titleSlug: String? {
			return internalGetTitleSlug()
		}

		func internalGetTitleSlug(aliasSuffix: String? = nil) -> String? {
			return field(field: "titleSlug", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "episodeName":

				return .scalar

				case "summaryLong":

				return .scalar

				case "summaryShort":

				return .scalar

				case "title":

				return .scalar

				case "titleBrief":

				return .scalar

				case "titleSortName":

				return .scalar

				case "language":

				return .scalar

				case "slug":

				return .scalar

				case "titleSlug":

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
