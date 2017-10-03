// Generated from graphql_swift_gen gem
import Foundation

extension BAMify {
	open class MediaAssetQuery: GraphQL.AbstractQuery, GraphQLQuery {
		public typealias Response = MediaAsset

		@discardableResult
		open func contentId(aliasSuffix: String? = nil) -> MediaAssetQuery {
			addField(field: "contentId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func type(aliasSuffix: String? = nil) -> MediaAssetQuery {
			addField(field: "type", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func tags(aliasSuffix: String? = nil, type: [String]? = nil, _ subfields: (TagQuery) -> Void) -> MediaAssetQuery {
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
		open func mediaId(aliasSuffix: String? = nil) -> MediaAssetQuery {
			addField(field: "mediaId", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func milestones(aliasSuffix: String? = nil, _ subfields: (MilestoneQuery) -> Void) -> MediaAssetQuery {
			let subquery = MilestoneQuery()
			subfields(subquery)

			addField(field: "milestones", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func playbackUrls(aliasSuffix: String? = nil, _ subfields: (HypermediaLinkQuery) -> Void) -> MediaAssetQuery {
			let subquery = HypermediaLinkQuery()
			subfields(subquery)

			addField(field: "playbackUrls", aliasSuffix: aliasSuffix, subfields: subquery)
			return self
		}

		@discardableResult
		open func audioType(aliasSuffix: String? = nil) -> MediaAssetQuery {
			addField(field: "audioType", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func captions(aliasSuffix: String? = nil) -> MediaAssetQuery {
			addField(field: "captions", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func dubbedLanguages(aliasSuffix: String? = nil) -> MediaAssetQuery {
			addField(field: "dubbedLanguages", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func hdcontent(aliasSuffix: String? = nil) -> MediaAssetQuery {
			addField(field: "HDContent", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func language(aliasSuffix: String? = nil) -> MediaAssetQuery {
			addField(field: "language", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func mediaState(aliasSuffix: String? = nil) -> MediaAssetQuery {
			addField(field: "mediaState", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func secure(aliasSuffix: String? = nil) -> MediaAssetQuery {
			addField(field: "secure", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func subtitleLanguages(aliasSuffix: String? = nil) -> MediaAssetQuery {
			addField(field: "subtitleLanguages", aliasSuffix: aliasSuffix)
			return self
		}

		@discardableResult
		open func mediaAssetType(aliasSuffix: String? = nil) -> MediaAssetQuery {
			addField(field: "mediaAssetType", aliasSuffix: aliasSuffix)
			return self
		}
	}

	open class MediaAsset: GraphQL.AbstractResponse, GraphQLObject, CmsItem, PlayableMedia, SearchResultDoc {
		public typealias Query = MediaAssetQuery

		open override func deserializeValue(fieldName: String, value: Any) throws -> Any? {
			let fieldValue = value
			switch fieldName {
				case "contentId":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "type":
				guard let value = value as? String else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "tags":
				if value is NSNull { return nil }
				guard let value = value as? [[String: Any]] else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return try value.map { return try Tag(fields: $0) }

				case "mediaId":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return GraphQL.ID(rawValue: value)

				case "milestones":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return try Milestone(fields: value) } as [Any?]

				case "playbackUrls":
				if value is NSNull { return nil }
				guard let value = value as? [Any] else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return try value.map { if $0 is NSNull { return nil }
				guard let value = $0 as? [String: Any] else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return try HypermediaLink(fields: value) } as [Any?]

				case "audioType":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "captions":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "dubbedLanguages":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "HDContent":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "language":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "mediaState":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "secure":
				if value is NSNull { return nil }
				guard let value = value as? Bool else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "subtitleLanguages":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				case "mediaAssetType":
				if value is NSNull { return nil }
				guard let value = value as? String else {
					throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
				}
				return value

				default:
				throw SchemaViolationError(type: MediaAsset.self, field: fieldName, value: fieldValue)
			}
		}

		open var typeName: String { return "MediaAsset" }

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

		open var audioType: String? {
			return internalGetAudioType()
		}

		func internalGetAudioType(aliasSuffix: String? = nil) -> String? {
			return field(field: "audioType", aliasSuffix: aliasSuffix) as! String?
		}

		open var captions: String? {
			return internalGetCaptions()
		}

		func internalGetCaptions(aliasSuffix: String? = nil) -> String? {
			return field(field: "captions", aliasSuffix: aliasSuffix) as! String?
		}

		open var dubbedLanguages: String? {
			return internalGetDubbedLanguages()
		}

		func internalGetDubbedLanguages(aliasSuffix: String? = nil) -> String? {
			return field(field: "dubbedLanguages", aliasSuffix: aliasSuffix) as! String?
		}

		open var hdcontent: Bool? {
			return internalGetHdcontent()
		}

		func internalGetHdcontent(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "HDContent", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var language: String? {
			return internalGetLanguage()
		}

		func internalGetLanguage(aliasSuffix: String? = nil) -> String? {
			return field(field: "language", aliasSuffix: aliasSuffix) as! String?
		}

		open var mediaState: String? {
			return internalGetMediaState()
		}

		func internalGetMediaState(aliasSuffix: String? = nil) -> String? {
			return field(field: "mediaState", aliasSuffix: aliasSuffix) as! String?
		}

		open var secure: Bool? {
			return internalGetSecure()
		}

		func internalGetSecure(aliasSuffix: String? = nil) -> Bool? {
			return field(field: "secure", aliasSuffix: aliasSuffix) as! Bool?
		}

		open var subtitleLanguages: String? {
			return internalGetSubtitleLanguages()
		}

		func internalGetSubtitleLanguages(aliasSuffix: String? = nil) -> String? {
			return field(field: "subtitleLanguages", aliasSuffix: aliasSuffix) as! String?
		}

		open var mediaAssetType: String? {
			return internalGetMediaAssetType()
		}

		func internalGetMediaAssetType(aliasSuffix: String? = nil) -> String? {
			return field(field: "mediaAssetType", aliasSuffix: aliasSuffix) as! String?
		}

		override open func childObjectType(key: String) -> GraphQL.ChildObjectType {
			switch(key) {
				case "contentId":

				return .scalar

				case "type":

				return .scalar

				case "tags":

				return .objectList

				case "mediaId":

				return .scalar

				case "milestones":

				return .objectList

				case "playbackUrls":

				return .objectList

				case "audioType":

				return .scalar

				case "captions":

				return .scalar

				case "dubbedLanguages":

				return .scalar

				case "HDContent":

				return .scalar

				case "language":

				return .scalar

				case "mediaState":

				return .scalar

				case "secure":

				return .scalar

				case "subtitleLanguages":

				return .scalar

				case "mediaAssetType":

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
