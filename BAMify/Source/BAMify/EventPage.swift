// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class EventPageQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = EventPage

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> EventPageQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> EventPageQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> EventPageQuery {
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
		open func heroImage(aliasSuffix: String? = nil, dimensions: [String]? = nil, max_width: Int32? = nil, max_height: Int32? = nil, min_width: Int32? = nil, min_height: Int32? = nil, _ subfields: (PhotoAssetQuery) -> Void) -> EventPageQuery {
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

			addField(field: "heroImage", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func tileImage(aliasSuffix: String? = nil, dimensions: [String]? = nil, max_width: Int32? = nil, max_height: Int32? = nil, min_width: Int32? = nil, min_height: Int32? = nil, _ subfields: (PhotoAssetQuery) -> Void) -> EventPageQuery {
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

			addField(field: "tileImage", aliasSuffix: aliasSuffix, args: argsString, subfields: subquery)
			return self
		}

		@discardableResult
		open func appears(aliasSuffix: String? = nil) -> EventPageQuery {
			addField(field: "appears", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func bigBlurb(aliasSuffix: String? = nil) -> EventPageQuery {
			addField(field: "bigBlurb", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func endDate(aliasSuffix: String? = nil) -> EventPageQuery {
			addField(field: "endDate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func expires(aliasSuffix: String? = nil) -> EventPageQuery {
			addField(field: "expires", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func media(aliasSuffix: String? = nil, _ subfields: (MediaListQuery) -> Void) -> EventPageQuery {
			let subquery = MediaListQuery()
			subfields(subquery)

			addField(field: "media", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func publishDestination(aliasSuffix: String? = nil) -> EventPageQuery {
			addField(field: "publishDestination", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func eventDetails(aliasSuffix: String? = nil, _ subfields: (EventDetailQuery) -> Void) -> EventPageQuery {
			let subquery = EventDetailQuery()
			subfields(subquery)

			addField(field: "eventDetails", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func scheduledPublish(aliasSuffix: String? = nil) -> EventPageQuery {
			addField(field: "scheduledPublish", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func startDate(aliasSuffix: String? = nil) -> EventPageQuery {
			addField(field: "startDate", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func subTitle(aliasSuffix: String? = nil) -> EventPageQuery {
			addField(field: "subTitle", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func title(aliasSuffix: String? = nil) -> EventPageQuery {
			addField(field: "title", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class EventPage: GraphQL.AbstractResponse, GraphQLObject, CmsItem, SearchResultDoc {
		public typealias Query = EventPageQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "heroImage":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return try PhotoAsset(fields: value) } as [Any?]

				case "tileImage":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return try PhotoAsset(fields: value) } as [Any?]

				case "appears":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return value

				case "bigBlurb":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return value

				case "endDate":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return value

				case "expires":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return value

				case "media":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return try MediaList(fields: value) } as [Any?]

				case "publishDestination":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return value

				case "eventDetails":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return try EventDetail(fields: value) } as [Any?]

				case "scheduledPublish":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return value

				case "startDate":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return value

				case "subTitle":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return value

				case "title":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: EventPage.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "EventPage" }

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

		open var heroImage: [BAMify.PhotoAsset?]? {
			return internalGetHeroImage()
		}

		open func aliasedHeroImage(aliasSuffix: String) -> [BAMify.PhotoAsset?]? {
			return internalGetHeroImage(aliasSuffix: aliasSuffix)
		}

		func internalGetHeroImage(aliasSuffix: String? = nil) -> [BAMify.PhotoAsset?]? {
			return field(field: "heroImage", aliasSuffix: aliasSuffix) as! [BAMify.PhotoAsset?]?
		}

		open var tileImage: [BAMify.PhotoAsset?]? {
			return internalGetTileImage()
		}

		open func aliasedTileImage(aliasSuffix: String) -> [BAMify.PhotoAsset?]? {
			return internalGetTileImage(aliasSuffix: aliasSuffix)
		}

		func internalGetTileImage(aliasSuffix: String? = nil) -> [BAMify.PhotoAsset?]? {
			return field(field: "tileImage", aliasSuffix: aliasSuffix) as! [BAMify.PhotoAsset?]?
		}

		open var appears: String? {
			return internalGetAppears()
		}

		func internalGetAppears(aliasSuffix: String? = nil) -> String? {
			return field(field: "appears", aliasSuffix: aliasSuffix) as! String?
		}

		open var bigBlurb: String? {
			return internalGetBigBlurb()
		}

		func internalGetBigBlurb(aliasSuffix: String? = nil) -> String? {
			return field(field: "bigBlurb", aliasSuffix: aliasSuffix) as! String?
		}

		open var endDate: String? {
			return internalGetEndDate()
		}

		func internalGetEndDate(aliasSuffix: String? = nil) -> String? {
			return field(field: "endDate", aliasSuffix: aliasSuffix) as! String?
		}

		open var expires: String? {
			return internalGetExpires()
		}

		func internalGetExpires(aliasSuffix: String? = nil) -> String? {
			return field(field: "expires", aliasSuffix: aliasSuffix) as! String?
		}

		open var media: [BAMify.MediaList?]? {
			return internalGetMedia()
		}

		func internalGetMedia(aliasSuffix: String? = nil) -> [BAMify.MediaList?]? {
			return field(field: "media", aliasSuffix: aliasSuffix) as! [BAMify.MediaList?]?
		}

		open var publishDestination: String? {
			return internalGetPublishDestination()
		}

		func internalGetPublishDestination(aliasSuffix: String? = nil) -> String? {
			return field(field: "publishDestination", aliasSuffix: aliasSuffix) as! String?
		}

		open var eventDetails: [BAMify.EventDetail?]? {
			return internalGetEventDetails()
		}

		func internalGetEventDetails(aliasSuffix: String? = nil) -> [BAMify.EventDetail?]? {
			return field(field: "eventDetails", aliasSuffix: aliasSuffix) as! [BAMify.EventDetail?]?
		}

		open var scheduledPublish: String? {
			return internalGetScheduledPublish()
		}

		func internalGetScheduledPublish(aliasSuffix: String? = nil) -> String? {
			return field(field: "scheduledPublish", aliasSuffix: aliasSuffix) as! String?
		}

		open var startDate: String? {
			return internalGetStartDate()
		}

		func internalGetStartDate(aliasSuffix: String? = nil) -> String? {
			return field(field: "startDate", aliasSuffix: aliasSuffix) as! String?
		}

		open var subTitle: String? {
			return internalGetSubTitle()
		}

		func internalGetSubTitle(aliasSuffix: String? = nil) -> String? {
			return field(field: "subTitle", aliasSuffix: aliasSuffix) as! String?
		}

		open var title: String? {
			return internalGetTitle()
		}

		func internalGetTitle(aliasSuffix: String? = nil) -> String? {
			return field(field: "title", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "heroImage":

				return .objectList

				case "tileImage":

				return .objectList

				case "appears":

				return .scalar

				case "bigBlurb":

				return .scalar

				case "endDate":

				return .scalar

				case "expires":

				return .scalar

				case "media":

				return .objectList

				case "publishDestination":

				return .scalar

				case "eventDetails":

				return .objectList

				case "scheduledPublish":

				return .scalar

				case "startDate":

				return .scalar

				case "subTitle":

				return .scalar

				case "title":

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

				case "heroImage":
				return internalGetHeroImage() ?? []

				case "tileImage":
				return internalGetTileImage() ?? []

				case "media":
				return internalGetMedia() ?? []

				case "eventDetails":
				return internalGetEventDetails() ?? []

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
