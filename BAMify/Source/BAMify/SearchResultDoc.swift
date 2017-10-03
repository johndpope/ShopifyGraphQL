// Generated from graphql_swift_gen gem
import Foundation

public protocol SearchResultDoc {
	var typeName: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension BAMify {
	open class SearchResultDocQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = SearchResultDoc

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onAiring(subfields: (AiringQuery) -> Void) -> SearchResultDocQuery {
			let subquery = AiringQuery()
			subfields(subquery)
			addInlineFragment(on: "Airing", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCategory(subfields: (CategoryQuery) -> Void) -> SearchResultDocQuery {
			let subquery = CategoryQuery()
			subfields(subquery)
			addInlineFragment(on: "Category", subfields: subquery)
			return self
		}

		@discardableResult
		open func onChannel(subfields: (ChannelQuery) -> Void) -> SearchResultDocQuery {
			let subquery = ChannelQuery()
			subfields(subquery)
			addInlineFragment(on: "Channel", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCollection(subfields: (CollectionQuery) -> Void) -> SearchResultDocQuery {
			let subquery = CollectionQuery()
			subfields(subquery)
			addInlineFragment(on: "Collection", subfields: subquery)
			return self
		}

		@discardableResult
		open func onConfigurationJson(subfields: (ConfigurationJsonQuery) -> Void) -> SearchResultDocQuery {
			let subquery = ConfigurationJsonQuery()
			subfields(subquery)
			addInlineFragment(on: "ConfigurationJson", subfields: subquery)
			return self
		}

		@discardableResult
		open func onEventPage(subfields: (EventPageQuery) -> Void) -> SearchResultDocQuery {
			let subquery = EventPageQuery()
			subfields(subquery)
			addInlineFragment(on: "EventPage", subfields: subquery)
			return self
		}

		@discardableResult
		open func onList(subfields: (ListQuery) -> Void) -> SearchResultDocQuery {
			let subquery = ListQuery()
			subfields(subquery)
			addInlineFragment(on: "List", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMediaAsset(subfields: (MediaAssetQuery) -> Void) -> SearchResultDocQuery {
			let subquery = MediaAssetQuery()
			subfields(subquery)
			addInlineFragment(on: "MediaAsset", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMediaList(subfields: (MediaListQuery) -> Void) -> SearchResultDocQuery {
			let subquery = MediaListQuery()
			subfields(subquery)
			addInlineFragment(on: "MediaList", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPhotoAsset(subfields: (PhotoAssetQuery) -> Void) -> SearchResultDocQuery {
			let subquery = PhotoAssetQuery()
			subfields(subquery)
			addInlineFragment(on: "PhotoAsset", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSeason(subfields: (SeasonQuery) -> Void) -> SearchResultDocQuery {
			let subquery = SeasonQuery()
			subfields(subquery)
			addInlineFragment(on: "Season", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSeasonContainer(subfields: (SeasonContainerQuery) -> Void) -> SearchResultDocQuery {
			let subquery = SeasonContainerQuery()
			subfields(subquery)
			addInlineFragment(on: "SeasonContainer", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSection(subfields: (SectionQuery) -> Void) -> SearchResultDocQuery {
			let subquery = SectionQuery()
			subfields(subquery)
			addInlineFragment(on: "Section", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSeries(subfields: (SeriesQuery) -> Void) -> SearchResultDocQuery {
			let subquery = SeriesQuery()
			subfields(subquery)
			addInlineFragment(on: "Series", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSeriesContainer(subfields: (SeriesContainerQuery) -> Void) -> SearchResultDocQuery {
			let subquery = SeriesContainerQuery()
			subfields(subquery)
			addInlineFragment(on: "SeriesContainer", subfields: subquery)
			return self
		}

		@discardableResult
		open func onShortContent(subfields: (ShortContentQuery) -> Void) -> SearchResultDocQuery {
			let subquery = ShortContentQuery()
			subfields(subquery)
			addInlineFragment(on: "ShortContent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onVideo(subfields: (VideoQuery) -> Void) -> SearchResultDocQuery {
			let subquery = VideoQuery()
			subfields(subquery)
			addInlineFragment(on: "Video", subfields: subquery)
			return self
		}
	}

	open class UnknownSearchResultDoc: GraphQL.AbstractResponse, GraphQLObject, SearchResultDoc {
		public typealias Query = SearchResultDocQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				default:
				throw SchemaViolationError(type: UnknownSearchResultDoc.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> SearchResultDoc {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownSearchResultDoc.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Airing":
				return try Airing.init(fields: fields)

				case "Category":
				return try Category.init(fields: fields)

				case "Channel":
				return try Channel.init(fields: fields)

				case "Collection":
				return try Collection.init(fields: fields)

				case "ConfigurationJson":
				return try ConfigurationJson.init(fields: fields)

				case "EventPage":
				return try EventPage.init(fields: fields)

				case "List":
				return try List.init(fields: fields)

				case "MediaAsset":
				return try MediaAsset.init(fields: fields)

				case "MediaList":
				return try MediaList.init(fields: fields)

				case "PhotoAsset":
				return try PhotoAsset.init(fields: fields)

				case "Season":
				return try Season.init(fields: fields)

				case "SeasonContainer":
				return try SeasonContainer.init(fields: fields)

				case "Section":
				return try Section.init(fields: fields)

				case "Series":
				return try Series.init(fields: fields)

				case "SeriesContainer":
				return try SeriesContainer.init(fields: fields)

				case "ShortContent":
				return try ShortContent.init(fields: fields)

				case "Video":
				return try Video.init(fields: fields)

				default:
				return try UnknownSearchResultDoc.init(fields: fields)
			}
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
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
