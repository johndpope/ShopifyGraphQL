// Generated from graphql_swift_gen gem
import Foundation

public protocol CmsItem {
	var typeName: String { get }

	var contentId: GraphQL.ID { get }

	var type: String { get }

	var tags: [BAMify.Tag]? { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension BAMify {
	open class CmsItemQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = CmsItem

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> CmsItemQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> CmsItemQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> CmsItemQuery {
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

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onCategory(subfields: (CategoryQuery) -> Void) -> CmsItemQuery {
			let subquery = CategoryQuery()
			subfields(subquery)
			addInlineFragment(on: "Category", subfields: subquery)
			return self
		}

		@discardableResult
		open func onChannel(subfields: (ChannelQuery) -> Void) -> CmsItemQuery {
			let subquery = ChannelQuery()
			subfields(subquery)
			addInlineFragment(on: "Channel", subfields: subquery)
			return self
		}

		@discardableResult
		open func onCollection(subfields: (CollectionQuery) -> Void) -> CmsItemQuery {
			let subquery = CollectionQuery()
			subfields(subquery)
			addInlineFragment(on: "Collection", subfields: subquery)
			return self
		}

		@discardableResult
		open func onConfigurationJson(subfields: (ConfigurationJsonQuery) -> Void) -> CmsItemQuery {
			let subquery = ConfigurationJsonQuery()
			subfields(subquery)
			addInlineFragment(on: "ConfigurationJson", subfields: subquery)
			return self
		}

		@discardableResult
		open func onConfigurationStructured(subfields: (ConfigurationStructuredQuery) -> Void) -> CmsItemQuery {
			let subquery = ConfigurationStructuredQuery()
			subfields(subquery)
			addInlineFragment(on: "ConfigurationStructured", subfields: subquery)
			return self
		}

		@discardableResult
		open func onDimension(subfields: (DimensionQuery) -> Void) -> CmsItemQuery {
			let subquery = DimensionQuery()
			subfields(subquery)
			addInlineFragment(on: "Dimension", subfields: subquery)
			return self
		}

		@discardableResult
		open func onEventDetail(subfields: (EventDetailQuery) -> Void) -> CmsItemQuery {
			let subquery = EventDetailQuery()
			subfields(subquery)
			addInlineFragment(on: "EventDetail", subfields: subquery)
			return self
		}

		@discardableResult
		open func onEventPage(subfields: (EventPageQuery) -> Void) -> CmsItemQuery {
			let subquery = EventPageQuery()
			subfields(subquery)
			addInlineFragment(on: "EventPage", subfields: subquery)
			return self
		}

		@discardableResult
		open func onFieldOption(subfields: (FieldOptionQuery) -> Void) -> CmsItemQuery {
			let subquery = FieldOptionQuery()
			subfields(subquery)
			addInlineFragment(on: "FieldOption", subfields: subquery)
			return self
		}

		@discardableResult
		open func onKeyValue(subfields: (KeyValueQuery) -> Void) -> CmsItemQuery {
			let subquery = KeyValueQuery()
			subfields(subquery)
			addInlineFragment(on: "KeyValue", subfields: subquery)
			return self
		}

		@discardableResult
		open func onList(subfields: (ListQuery) -> Void) -> CmsItemQuery {
			let subquery = ListQuery()
			subfields(subquery)
			addInlineFragment(on: "List", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMasterCut(subfields: (MasterCutQuery) -> Void) -> CmsItemQuery {
			let subquery = MasterCutQuery()
			subfields(subquery)
			addInlineFragment(on: "MasterCut", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMediaAsset(subfields: (MediaAssetQuery) -> Void) -> CmsItemQuery {
			let subquery = MediaAssetQuery()
			subfields(subquery)
			addInlineFragment(on: "MediaAsset", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPage(subfields: (PageQuery) -> Void) -> CmsItemQuery {
			let subquery = PageQuery()
			subfields(subquery)
			addInlineFragment(on: "Page", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPhoto(subfields: (PhotoQuery) -> Void) -> CmsItemQuery {
			let subquery = PhotoQuery()
			subfields(subquery)
			addInlineFragment(on: "Photo", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPhotoAsset(subfields: (PhotoAssetQuery) -> Void) -> CmsItemQuery {
			let subquery = PhotoAssetQuery()
			subfields(subquery)
			addInlineFragment(on: "PhotoAsset", subfields: subquery)
			return self
		}

		@discardableResult
		open func onPhotoTemplate(subfields: (PhotoTemplateQuery) -> Void) -> CmsItemQuery {
			let subquery = PhotoTemplateQuery()
			subfields(subquery)
			addInlineFragment(on: "PhotoTemplate", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSeason(subfields: (SeasonQuery) -> Void) -> CmsItemQuery {
			let subquery = SeasonQuery()
			subfields(subquery)
			addInlineFragment(on: "Season", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSeasonContainer(subfields: (SeasonContainerQuery) -> Void) -> CmsItemQuery {
			let subquery = SeasonContainerQuery()
			subfields(subquery)
			addInlineFragment(on: "SeasonContainer", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSection(subfields: (SectionQuery) -> Void) -> CmsItemQuery {
			let subquery = SectionQuery()
			subfields(subquery)
			addInlineFragment(on: "Section", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSeries(subfields: (SeriesQuery) -> Void) -> CmsItemQuery {
			let subquery = SeriesQuery()
			subfields(subquery)
			addInlineFragment(on: "Series", subfields: subquery)
			return self
		}

		@discardableResult
		open func onSeriesContainer(subfields: (SeriesContainerQuery) -> Void) -> CmsItemQuery {
			let subquery = SeriesContainerQuery()
			subfields(subquery)
			addInlineFragment(on: "SeriesContainer", subfields: subquery)
			return self
		}

		@discardableResult
		open func onShortContent(subfields: (ShortContentQuery) -> Void) -> CmsItemQuery {
			let subquery = ShortContentQuery()
			subfields(subquery)
			addInlineFragment(on: "ShortContent", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTemplateAspectRatio(subfields: (TemplateAspectRatioQuery) -> Void) -> CmsItemQuery {
			let subquery = TemplateAspectRatioQuery()
			subfields(subquery)
			addInlineFragment(on: "TemplateAspectRatio", subfields: subquery)
			return self
		}

		@discardableResult
		open func onTitleAsset(subfields: (TitleAssetQuery) -> Void) -> CmsItemQuery {
			let subquery = TitleAssetQuery()
			subfields(subquery)
			addInlineFragment(on: "TitleAsset", subfields: subquery)
			return self
		}

		@discardableResult
		open func onVideo(subfields: (VideoQuery) -> Void) -> CmsItemQuery {
			let subquery = VideoQuery()
			subfields(subquery)
			addInlineFragment(on: "Video", subfields: subquery)
			return self
		}
	}

	open class UnknownCmsItem: GraphQL.AbstractResponse, GraphQLObject, CmsItem {
		public typealias Query = CmsItemQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownCmsItem.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownCmsItem.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: UnknownCmsItem.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				default:
				throw SchemaViolationError(type: UnknownCmsItem.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> CmsItem {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownCmsItem.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Category":
				return try Category.init(fields: fields)

				case "Channel":
				return try Channel.init(fields: fields)

				case "Collection":
				return try Collection.init(fields: fields)

				case "ConfigurationJson":
				return try ConfigurationJson.init(fields: fields)

				case "ConfigurationStructured":
				return try ConfigurationStructured.init(fields: fields)

				case "Dimension":
				return try Dimension.init(fields: fields)

				case "EventDetail":
				return try EventDetail.init(fields: fields)

				case "EventPage":
				return try EventPage.init(fields: fields)

				case "FieldOption":
				return try FieldOption.init(fields: fields)

				case "KeyValue":
				return try KeyValue.init(fields: fields)

				case "List":
				return try List.init(fields: fields)

				case "MasterCut":
				return try MasterCut.init(fields: fields)

				case "MediaAsset":
				return try MediaAsset.init(fields: fields)

				case "Page":
				return try Page.init(fields: fields)

				case "Photo":
				return try Photo.init(fields: fields)

				case "PhotoAsset":
				return try PhotoAsset.init(fields: fields)

				case "PhotoTemplate":
				return try PhotoTemplate.init(fields: fields)

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

				case "TemplateAspectRatio":
				return try TemplateAspectRatio.init(fields: fields)

				case "TitleAsset":
				return try TitleAsset.init(fields: fields)

				case "Video":
				return try Video.init(fields: fields)

				default:
				return try UnknownCmsItem.init(fields: fields)
			}
		}

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

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

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
