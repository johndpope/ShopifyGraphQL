// Generated from graphql_swift_gen gem
import Foundation

public protocol PlayableMedia {
	var typeName: String { get }

	var contentId: GraphQL.ID { get }

	var mediaId: GraphQL.ID? { get }

	var milestones: [BAMify.Milestone?]? { get }

	var playbackUrls: [BAMify.HypermediaLink?]? { get }

	var type: String { get }

	func childResponseObjectMap() -> [GraphQL.AbstractResponse]

	func responseObject() -> GraphQL.AbstractResponse
}

extension BAMify {
	open class PlayableMediaQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = PlayableMedia

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> PlayableMediaQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func mediaId(aliasSuffix: String? = nil) -> PlayableMediaQuery {
			addField(field: "mediaId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func milestones(aliasSuffix: String? = nil, _ subfields: (MilestoneQuery) -> Void) -> PlayableMediaQuery {
			let subquery = MilestoneQuery()
			subfields(subquery)

			addField(field: "milestones", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func playbackUrls(aliasSuffix: String? = nil, _ subfields: (HypermediaLinkQuery) -> Void) -> PlayableMediaQuery {
			let subquery = HypermediaLinkQuery()
			subfields(subquery)

			addField(field: "playbackUrls", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> PlayableMediaQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		override init() {
			super.init()
			addField(field: "__typename")
		}

		@discardableResult
		open func onAiring(subfields: (AiringQuery) -> Void) -> PlayableMediaQuery {
			let subquery = AiringQuery()
			subfields(subquery)
			addInlineFragment(on: "Airing", subfields: subquery)
			return self
		}

		@discardableResult
		open func onMediaAsset(subfields: (MediaAssetQuery) -> Void) -> PlayableMediaQuery {
			let subquery = MediaAssetQuery()
			subfields(subquery)
			addInlineFragment(on: "MediaAsset", subfields: subquery)
			return self
		}
	}

	open class UnknownPlayableMedia: GraphQL.AbstractResponse, GraphQLObject, PlayableMedia {
		public typealias Query = PlayableMediaQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownPlayableMedia.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "mediaId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownPlayableMedia.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "milestones":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: UnknownPlayableMedia.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: UnknownPlayableMedia.self, field: fieldName, value: fieldValue)
				}
				return try Milestone(fields: value) } as [Any?]

				case "playbackUrls":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: UnknownPlayableMedia.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: UnknownPlayableMedia.self, field: fieldName, value: fieldValue)
				}
				return try HypermediaLink(fields: value) } as [Any?]

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: UnknownPlayableMedia.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: UnknownPlayableMedia.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return field(field: "__typename") as! String }

		open static func create(fields: [String: Any]) throws -> PlayableMedia {
			guard let typeName = fields["__typename"] as? String else {
				throw SchemaViolationError(type: UnknownPlayableMedia.self, field: "__typename", value: fields["__typename"] ?? NSNull())
			}
			switch typeName {
				case "Airing":
				return try Airing.init(fields: fields)

				case "MediaAsset":
				return try MediaAsset.init(fields: fields)

				default:
				return try UnknownPlayableMedia.init(fields: fields)
			}
		}

		open var contentId: GraphQL.ID {
			return internalGetContentId()
		}

		func internalGetContentId(aliasSuffix: String? = nil) -> GraphQL.ID {
			return field(field: "contentId", aliasSuffix: aliasSuffix) as! GraphQL.ID
		}

		open var mediaId: GraphQL.ID? {
			return internalGetMediaId()
		}

		func internalGetMediaId(aliasSuffix: String? = nil) -> GraphQL.ID? {
			return field(field: "mediaId", aliasSuffix: aliasSuffix) as! GraphQL.ID?
		}

		open var milestones: [BAMify.Milestone?]? {
			return internalGetMilestones()
		}

		func internalGetMilestones(aliasSuffix: String? = nil) -> [BAMify.Milestone?]? {
			return field(field: "milestones", aliasSuffix: aliasSuffix) as! [BAMify.Milestone?]?
		}

		open var playbackUrls: [BAMify.HypermediaLink?]? {
			return internalGetPlaybackUrls()
		}

		func internalGetPlaybackUrls(aliasSuffix: String? = nil) -> [BAMify.HypermediaLink?]? {
			return field(field: "playbackUrls", aliasSuffix: aliasSuffix) as! [BAMify.HypermediaLink?]?
		}

		open var type: String {
			return internalGetType()
		}

		func internalGetType(aliasSuffix: String? = nil) -> String {
			return field(field: "type", aliasSuffix: aliasSuffix) as! String
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "mediaId":

				return .scalar

				case "milestones":

				return .objectList

				case "playbackUrls":

				return .objectList

				case "type":

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
				case "milestones":
				return internalGetMilestones() ?? []

				case "playbackUrls":
				return internalGetPlaybackUrls() ?? []

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
