// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class SeriesQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = Series

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> SeriesQuery {
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
		open func user(aliasSuffix: String? = nil, _ subfields: (WatchlistUserQuery) -> Void) -> SeriesQuery {
			let subquery = WatchlistUserQuery()
			subfields(subquery)

			addField(field: "user", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func photos(aliasSuffix: String? = nil, dimensions: [String]? = nil, max_width: Int32? = nil, max_height: Int32? = nil, min_width: Int32? = nil, min_height: Int32? = nil, _ subfields: (PhotoAssetQuery) -> Void) -> SeriesQuery {
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
		open func seriesTitle(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "seriesTitle", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seriesBrief(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "seriesBrief", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seriesSortName(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "seriesSortName", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func summaryShort(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "summaryShort", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func summaryLong(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "summaryLong", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func language(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "language", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seriesId(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "seriesId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seriesSequenceNumber(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "seriesSequenceNumber", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"Use genres instead")
		@discardableResult
		open func genre(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "genre", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func genres(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "genres", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func category(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "category", aliasSuffix: aliasSuffix)
			return self
		}

		@available(*, deprecated, message:"User seriesSlug instead")
		@discardableResult
		open func slug(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "slug", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func seriesSlug(aliasSuffix: String? = nil) -> SeriesQuery {
			addField(field: "seriesSlug", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class Series: GraphQL.AbstractResponse, GraphQLObject, CmsItem, SearchResultDoc, Watchable, WatchlistPersonalizedHit {
		public typealias Query = SeriesQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "user":
				if value is NSNull { return nil }
				guard let value = value as? [String: Any] else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return try WatchlistUser(fields: value)

				case "photos":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return try PhotoAsset(fields: value) } as [Any?]

				case "seriesTitle":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seriesBrief":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seriesSortName":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return value

				case "summaryShort":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return value

				case "summaryLong":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return value

				case "language":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seriesId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seriesSequenceNumber":
				if value is NSNull { return nil }
				guard let value = value as? Int else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return Int32(value)

				case "genre":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return value

				case "genres":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? String else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return value } as [Any?]

				case "category":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return value

				case "slug":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return value

				case "seriesSlug":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: Series.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "Series" }

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

		open var user: BAMify.WatchlistUser? {
			return internalGetUser()
		}

		func internalGetUser(aliasSuffix: String? = nil) -> BAMify.WatchlistUser? {
			return field(field: "user", aliasSuffix: aliasSuffix) as! BAMify.WatchlistUser?
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

		open var seriesTitle: String? {
			return internalGetSeriesTitle()
		}

		func internalGetSeriesTitle(aliasSuffix: String? = nil) -> String? {
			return field(field: "seriesTitle", aliasSuffix: aliasSuffix) as! String?
		}

		open var seriesBrief: String? {
			return internalGetSeriesBrief()
		}

		func internalGetSeriesBrief(aliasSuffix: String? = nil) -> String? {
			return field(field: "seriesBrief", aliasSuffix: aliasSuffix) as! String?
		}

		open var seriesSortName: String? {
			return internalGetSeriesSortName()
		}

		func internalGetSeriesSortName(aliasSuffix: String? = nil) -> String? {
			return field(field: "seriesSortName", aliasSuffix: aliasSuffix) as! String?
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

		open var seriesSequenceNumber: Int32? {
			return internalGetSeriesSequenceNumber()
		}

		func internalGetSeriesSequenceNumber(aliasSuffix: String? = nil) -> Int32? {
			return field(field: "seriesSequenceNumber", aliasSuffix: aliasSuffix) as! Int32?
		}

		@available(*, deprecated, message:"Use genres instead")
		open var genre: String? {
			return internalGetGenre()
		}

		func internalGetGenre(aliasSuffix: String? = nil) -> String? {
			return field(field: "genre", aliasSuffix: aliasSuffix) as! String?
		}

		open var genres: [String?]? {
			return internalGetGenres()
		}

		func internalGetGenres(aliasSuffix: String? = nil) -> [String?]? {
			return field(field: "genres", aliasSuffix: aliasSuffix) as! [String?]?
		}

		open var category: String? {
			return internalGetCategory()
		}

		func internalGetCategory(aliasSuffix: String? = nil) -> String? {
			return field(field: "category", aliasSuffix: aliasSuffix) as! String?
		}

		@available(*, deprecated, message:"User seriesSlug instead")
		open var slug: String? {
			return internalGetSlug()
		}

		func internalGetSlug(aliasSuffix: String? = nil) -> String? {
			return field(field: "slug", aliasSuffix: aliasSuffix) as! String?
		}

		open var seriesSlug: String? {
			return internalGetSeriesSlug()
		}

		func internalGetSeriesSlug(aliasSuffix: String? = nil) -> String? {
			return field(field: "seriesSlug", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "user":

				return .object

				case "photos":

				return .objectList

				case "seriesTitle":

				return .scalar

				case "seriesBrief":

				return .scalar

				case "seriesSortName":

				return .scalar

				case "summaryShort":

				return .scalar

				case "summaryLong":

				return .scalar

				case "language":

				return .scalar

				case "seriesId":

				return .scalar

				case "seriesSequenceNumber":

				return .scalar

				case "genre":

				return .scalar

				case "genres":

				return .scalarList

				case "category":

				return .scalar

				case "slug":

				return .scalar

				case "seriesSlug":

				return .scalar

				default:
				return .scalar
			}
		}

		override open func fetchChildObject(key: String) -> GraphQL.AbstractResponse? {
			switch(key) {
				case "user":
				return internalGetUser()

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
			var response: [GraphQL.AbstractResponse] = []
			objectMap.keys.forEach({
				key in
				switch(key) {
					case "tags":
					if let value = internalGetTags() {
						value.forEach {
							response.append($0)
							response.append(contentsOf: $0.childResponseObjectMap())
						}
					}

					case "user":
					if let value = internalGetUser() {
						response.append(value)
						response.append(contentsOf: value.childResponseObjectMap())
					}

					case "photos":
					if let value = internalGetPhotos() {
						value.forEach {
							if let value = $0 {
								response.append(value)
								response.append(contentsOf: value.childResponseObjectMap())
							}
						}
					}

					default:
					break
				}
			})
			return response
		}

		open func responseObject() -> GraphQL.AbstractResponse {
			return self as GraphQL.AbstractResponse
		}
	}
}
