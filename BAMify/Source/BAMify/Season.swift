// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class SeasonQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Season

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> SeasonQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> SeasonQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> SeasonQuery {
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
		open func photos(aliasSuffix: String? = nil, dimensions: [String]? = nil, max_width: Int32? = nil, max_height: Int32? = nil, min_width: Int32? = nil, min_height: Int32? = nil, _ subfields: (PhotoAssetQuery) -> Void) -> SeasonQuery {
			var args: [String] = []

			if let dimensions = dimensions {
				args.append("dimensions:[\(dimensions.map{ "\(GraphQL.quoteString(input: $0))" }.joined(separator: ","))]")
			}

			if let max_width = max_width {
				args.append("max_width:\(max_width)")
			}

			if let max_height = max_height {
				args.append("max_height:\(max_height)")
			}

			if let min_width = min_width {
				args.append("min_width:\(min_width)")
			}

			if let min_height = min_height {
				args.append("min_height:\(min_height)")
			}

			let argsString: String? = args.isEmpty ? nil : "(\(args.joined(separator: ",")))"

			let subquery = PhotoAssetQuery()
			subfields(subquery)

			addField(field: "photos", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func seasonTitle(aliasSuffix: String? = nil) -> SeasonQuery {
			addField(field: "seasonTitle", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seasonBrief(aliasSuffix: String? = nil) -> SeasonQuery {
			addField(field: "seasonBrief", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seasonSortName(aliasSuffix: String? = nil) -> SeasonQuery {
			addField(field: "seasonSortName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func summaryShort(aliasSuffix: String? = nil) -> SeasonQuery {
			addField(field: "summaryShort", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func summaryLong(aliasSuffix: String? = nil) -> SeasonQuery {
			addField(field: "summaryLong", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func language(aliasSuffix: String? = nil) -> SeasonQuery {
			addField(field: "language", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seriesId(aliasSuffix: String? = nil) -> SeasonQuery {
			addField(field: "seriesId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seasonId(aliasSuffix: String? = nil) -> SeasonQuery {
			addField(field: "seasonId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seasonSequenceNumber(aliasSuffix: String? = nil) -> SeasonQuery {
			addField(field: "seasonSequenceNumber", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func slug(aliasSuffix: String? = nil) -> SeasonQuery {
			addField(field: "slug", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Season: GraphQL.AbstractResponse, GraphQLObject, CmsItem, SearchResultDoc {
		public typealias Query = SeasonQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "photos":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return try PhotoAsset(fields: value) } as [Any?]

				case "seasonTitle":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seasonBrief":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seasonSortName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return value

				case "summaryShort":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return value

				case "summaryLong":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return value

				case "language":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seriesId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seasonId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seasonSequenceNumber":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "slug":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Season.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Season" }

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

		open var photos: [BAMify.PhotoAsset?]? {
			return internalGetPhotos()
		}

		open func aliasedPhotos(aliasSuffix: String) -> [BAMify.PhotoAsset?]? {
			return internalGetPhotos(aliasSuffix: aliasSuffix)
		}

		func internalGetPhotos(aliasSuffix: String? = nil) -> [BAMify.PhotoAsset?]? {
			return field(field: "photos", aliasSuffix: aliasSuffix) as! [BAMify.PhotoAsset?]?
		}

		open var seasonTitle: String? {
			return internalGetSeasonTitle()
		}

		func internalGetSeasonTitle(aliasSuffix: String? = nil) -> String? {
			return field(field: "seasonTitle", aliasSuffix: aliasSuffix) as! String?
		}

		open var seasonBrief: String? {
			return internalGetSeasonBrief()
		}

		func internalGetSeasonBrief(aliasSuffix: String? = nil) -> String? {
			return field(field: "seasonBrief", aliasSuffix: aliasSuffix) as! String?
		}

		open var seasonSortName: String? {
			return internalGetSeasonSortName()
		}

		func internalGetSeasonSortName(aliasSuffix: String? = nil) -> String? {
			return field(field: "seasonSortName", aliasSuffix: aliasSuffix) as! String?
		}

		open var summaryShort: String? {
			return internalGetSummaryShort()
		}

		func internalGetSummaryShort(aliasSuffix: String? = nil) -> String? {
			return field(field: "summaryShort", aliasSuffix: aliasSuffix) as! String?
		}

		open var summaryLong: String? {
			return internalGetSummaryLong()
		}

		func internalGetSummaryLong(aliasSuffix: String? = nil) -> String? {
			return field(field: "summaryLong", aliasSuffix: aliasSuffix) as! String?
		}

		open var language: String? {
			return internalGetLanguage()
		}

		func internalGetLanguage(aliasSuffix: String? = nil) -> String? {
			return field(field: "language", aliasSuffix: aliasSuffix) as! String?
		}

		open var seriesId: String? {
			return internalGetSeriesId()
		}

		func internalGetSeriesId(aliasSuffix: String? = nil) -> String? {
			return field(field: "seriesId", aliasSuffix: aliasSuffix) as! String?
		}

		open var seasonId: String? {
			return internalGetSeasonId()
		}

		func internalGetSeasonId(aliasSuffix: String? = nil) -> String? {
			return field(field: "seasonId", aliasSuffix: aliasSuffix) as! String?
		}

		open var seasonSequenceNumber: Int32? {
			return internalGetSeasonSequenceNumber()
		}

		func internalGetSeasonSequenceNumber(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "seasonSequenceNumber", aliasSuffix: aliasSuffix) as! Int32?
		}

		open var slug: String? {
			return internalGetSlug()
		}

		func internalGetSlug(aliasSuffix: String? = nil) -> String? {
			return field(field: "slug", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "photos":

				return .objectList

				case "seasonTitle":

				return .scalar

				case "seasonBrief":

				return .scalar

				case "seasonSortName":

				return .scalar

				case "summaryShort":

				return .scalar

				case "summaryLong":

				return .scalar

				case "language":

				return .scalar

				case "seriesId":

				return .scalar

				case "seasonId":

				return .scalar

				case "seasonSequenceNumber":

				return .scalar

				case "slug":

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

				case "photos":
				return internalGetPhotos() ?? []

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
